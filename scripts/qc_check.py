#!/usr/bin/env python3
"""
qc_check.py - static quality gate for the Aerospace Medicine IG.

Runs without SUSHI or the IG Publisher (stdlib only) and reports:

  pages   : control characters, LLM/PDF extraction debris, duplicate headings,
            second front-matter block, images written as links, placeholder DOIs,
            malformed URLs
  links   : every relative link target in input/pagecontent/*.md resolved against
            FSH declarations, input/images/, and sushi-config.yaml pages
  fsh     : dangling Reference(Type/id), codes not present in their local
            CodeSystem, aliases that point at undefined local CodeSystems,
            foreign namespaces, instances without Usage:, example instances
            without meta.source, CodeSystems missing ^count/^status/
            ^experimental/^content, duplicate ids
  ndjson  : every line in input/images/*.ndjson parses, has resourceType, and
            uses the IG canonical

Exit status is 1 when any finding is reported, so it can gate publishing:

    python3 scripts/qc_check.py            # full report
    python3 scripts/qc_check.py --section fsh
    python3 scripts/qc_check.py --quiet    # counts only
"""

import argparse
import glob
import json
import os
import re
import sys
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
PAGES = os.path.join(ROOT, 'input', 'pagecontent')
FSH = os.path.join(ROOT, 'input', 'fsh')
IMAGES = os.path.join(ROOT, 'input', 'images')
CONFIG = os.path.join(ROOT, 'sushi-config.yaml')

FOREIGN_NAMESPACES = [
    'http://hl7.org/fhir/uv/aerospace',
    'https://mitre.org/fhir/space-health',
    'http://hl7.org/Special/committees/aerospace',
    'http://aerospace-medicine.org',
    'http://example.org/',
]

DEBRIS_PATTERNS = [
    (r':contentReference\[oaicite', 'LLM citation artifact (oaicite)'),
    (r'【\d+†', 'LLM figure artifact (【N†】)'),
    (r"Here's the information converted", 'LLM chat artifact'),
    (r'101XXX', 'placeholder DOI'),
    (r'\]\(ttps?://', 'malformed URL scheme'),
    (r'\bactio nable\b', 'PDF line-wrap artifact'),
    (r'\(Work in Progress\)', 'author TODO in title'),
    (r'^#+\s*Next Steps\s*/\s*Open Items', 'author TODO section'),
]

FINDINGS = defaultdict(list)


def finding(section, path, line, msg):
    rel = os.path.relpath(path, ROOT) if path else '-'
    FINDINGS[section].append((rel, line, msg))


def read(path):
    with open(path, encoding='utf-8', errors='surrogateescape') as fh:
        return fh.read()


# ---------------------------------------------------------------- config

def load_config():
    text = read(CONFIG)
    canonical = re.search(r'^canonical:\s*(\S+)', text, re.M).group(1)
    pages = []
    in_pages = False
    for line in text.splitlines():
        if re.match(r'^pages:', line):
            in_pages = True
            continue
        if in_pages:
            if re.match(r'^\S', line):
                in_pages = False
                continue
            m = re.match(r'^\s{2}([\w\-]+\.md):', line)
            if m:
                pages.append(m.group(1))
    menu_targets = re.findall(r':\s*([\w\-]+\.html)\s*$', text, re.M)
    return canonical, pages, menu_targets


# ---------------------------------------------------------------- fsh model

class FshModel:
    def __init__(self):
        self.aliases = {}          # $alias -> url
        self.defs = {}             # (kind, name) -> (file, line, id, url)
        self.ids = defaultdict(list)  # id -> [(kind, file)]
        self.cs_codes = defaultdict(set)  # cs name -> codes
        self.cs_by_url = {}        # url -> cs name
        self.instances = {}        # instance name -> dict
        self.instance_ids = {}     # effective id -> name
        self.code_refs = []        # (file, line, system_token, code)
        self.references = []       # (file, line, type, id)
        self.cs_meta = {}          # cs name -> set of ^keys present
        self.url_refs = []         # (file, line, url) quoted canonical CodeSystem/ValueSet URLs

    def files(self):
        return sorted(glob.glob(os.path.join(FSH, '**', '*.fsh'), recursive=True))


ENTITY_RE = re.compile(r'^\s*(Profile|Extension|Instance|CodeSystem|ValueSet|RuleSet|Resource|Logical|Mapping|Invariant):\s*(\S+)')


def parse_fsh(canonical):
    m = FshModel()
    for path in m.files():
        text = read(path)
        cur = None
        cur_kind = None
        cur_id = None
        for lineno, raw in enumerate(text.splitlines(), 1):
            line = '' if raw.lstrip().startswith('//') else re.split(r'\s//', raw)[0].rstrip()
            if not line.strip():
                continue
            am = re.match(r'^Alias:\s*(\S+)\s*=\s*(\S+)', line)
            if am:
                m.aliases[am.group(1)] = am.group(2)
                continue
            em = ENTITY_RE.match(line)
            if em:
                cur_kind, cur = em.group(1), em.group(2)
                cur_id = cur
                m.defs[(cur_kind, cur)] = [path, lineno, cur, None]
                if cur_kind == 'Instance':
                    m.instances[cur] = {'file': path, 'line': lineno, 'id': cur,
                                        'usage': None, 'meta_source': False,
                                        'meta_tag': False, 'instanceof': None}
                if cur_kind == 'CodeSystem':
                    m.cs_meta[cur] = set()
                if raw != raw.lstrip():
                    finding('fsh', path, lineno, f'{cur_kind}: {cur} is indented; declarations must start at column 0')
                continue
            if cur is None:
                continue
            idm = re.match(r'^Id:\s*(\S+)', line)
            if idm:
                cur_id = idm.group(1)
                m.defs[(cur_kind, cur)][2] = cur_id
                m.ids[cur_id].append((cur_kind, os.path.relpath(path, ROOT)))
                if cur_kind == 'Instance':
                    m.instances[cur]['id'] = cur_id
                continue
            if cur_kind == 'Instance':
                um = re.match(r'^Usage:\s*#(\w+)', line)
                if um:
                    m.instances[cur]['usage'] = um.group(1)
                iom = re.match(r'^InstanceOf:\s*(\S+)', line)
                if iom:
                    m.instances[cur]['instanceof'] = iom.group(1)
                idl = re.match(r'^\*\s*id\s*=\s*"([^"]+)"', line)
                if idl:
                    m.instances[cur]['id'] = idl.group(1)
                if re.match(r'^\*\s*meta\.source\b', line):
                    m.instances[cur]['meta_source'] = True
                if re.match(r'^\*\s*meta\.tag\b', line):
                    m.instances[cur]['meta_tag'] = True
                if re.match(r'^\*\s*insert\s+(SyntheticExample|FictionalExample|ReferenceRecord|PublicRecord)', line):
                    m.instances[cur]['meta_source'] = True
                    m.instances[cur]['meta_tag'] = True
            urlm = re.match(r'^\*\s*\^url\s*=\s*"([^"]+)"', line)
            if urlm:
                m.defs[(cur_kind, cur)][3] = urlm.group(1)
                if cur_kind == 'CodeSystem':
                    m.cs_by_url[urlm.group(1)] = cur
            if cur_kind == 'CodeSystem':
                km = re.match(r'^\*\s*\^(\w+)', line)
                if km:
                    m.cs_meta[cur].add(km.group(1))
                cm = re.match(r'^\*\s*(?:#(\S+)\s+#)?#?(\S+)\s+"', line)
                # concept lines look like: * #code "display" or * #parent #child "display"
                cm = re.match(r'^\*\s*((?:#[^\s"]+\s+)+)"', line)
                if cm:
                    codes = cm.group(1).split()
                    m.cs_codes[cur].add(codes[-1][1:])
            for qm in re.finditer(r'"(https?://[^"\s]+/(?:CodeSystem|ValueSet|StructureDefinition)/[^"\s]+)"', line):
                m.url_refs.append((path, lineno, qm.group(1)))
            # references
            for rm in re.finditer(r'Reference\(\s*([A-Za-z]+)/([^\s\)]+)\s*\)', line):
                m.references.append((path, lineno, rm.group(1), rm.group(2)))
            # code references  $alias#code  Name#code  url#code
            if cur_kind != 'CodeSystem':
                for crm in re.finditer(r'(\$[\w\-]+|https?://\S+?|[A-Z][\w]*)#([\w\-\.]+)', line):
                    m.code_refs.append((path, lineno, crm.group(1), crm.group(2)))
    # canonical derived urls for local code systems without explicit ^url
    for (kind, name), (path, lineno, ident, url) in m.defs.items():
        if kind == 'CodeSystem' and url is None:
            m.cs_by_url[f'{canonical}/CodeSystem/{ident}'] = name
    for name, inst in m.instances.items():
        m.instance_ids[inst['id']] = name
    return m


def check_fsh(canonical, m):
    local_cs_names = {name for (kind, name) in m.defs if kind == 'CodeSystem'}
    local_vs_names = {name for (kind, name) in m.defs if kind == 'ValueSet'}
    # duplicate ids
    for ident, uses in m.ids.items():
        kinds = {k for k, _ in uses}
        if len(uses) > 1 and len(kinds) == 1:
            finding('fsh', None, 0, f'duplicate Id {ident} in {[f for _, f in uses]}')
    # aliases pointing at undefined local code systems
    for alias, url in m.aliases.items():
        if url.startswith(canonical) and '/CodeSystem/' in url and url not in m.cs_by_url:
            finding('fsh', None, 0, f'alias {alias} -> {url} matches no defined CodeSystem')
        for ns in FOREIGN_NAMESPACES:
            if url.startswith(ns):
                finding('fsh', None, 0, f'alias {alias} uses foreign namespace {url}')
    # foreign namespaces anywhere in FSH
    for path in m.files():
        for lineno, line in enumerate(read(path).splitlines(), 1):
            if line.lstrip().startswith('//'):
                continue
            for ns in FOREIGN_NAMESPACES:
                if ns in line:
                    finding('fsh', path, lineno, f'foreign namespace {ns}')
                    break
    # code references
    for path, lineno, system, code in m.code_refs:
        cs = None
        if system.startswith('$'):
            url = m.aliases.get(system)
            if url is None:
                finding('fsh', path, lineno, f'unknown alias {system}')
                continue
            cs = m.cs_by_url.get(url)
            if cs is None:
                if url.startswith(canonical) and '/CodeSystem/' in url:
                    finding('fsh', path, lineno, f'{system}#{code}: alias target {url} is not a defined CodeSystem')
                continue
        elif system.startswith('http'):
            cs = m.cs_by_url.get(system)
            if cs is None:
                if system.startswith(canonical) and '/CodeSystem/' in system:
                    finding('fsh', path, lineno, f'{system}#{code}: undefined local CodeSystem')
                continue
        else:
            if system in local_cs_names:
                cs = system
            elif system in local_vs_names or system in m.instances or (('Profile', system) in m.defs):
                continue
            elif system.endswith(('CS', 'CodeSystem')):
                finding('fsh', path, lineno, f'{system}#{code}: {system} is not a defined CodeSystem')
                continue
            else:
                continue
        if cs and code not in m.cs_codes.get(cs, set()):
            finding('fsh', path, lineno, f'code #{code} not defined in CodeSystem {cs}')
    # quoted canonical URLs must name a defined artifact
    known_urls = set(m.cs_by_url)
    for (kind, name), (path, lineno, ident, url) in m.defs.items():
        t = {'Profile': 'StructureDefinition', 'Extension': 'StructureDefinition', 'ValueSet': 'ValueSet', 'CodeSystem': 'CodeSystem'}.get(kind)
        if t:
            known_urls.add(url or f'{canonical}/{t}/{ident}')
    for path, lineno, url in m.url_refs:
        base = url.split('|')[0]
        if base.startswith(canonical) and base not in known_urls:
            finding('fsh', path, lineno, f'quoted URL {base} names no defined artifact')
    # references
    for path, lineno, rtype, rid in m.references:
        if rid in m.instance_ids or rid in m.instances:
            continue
        finding('fsh', path, lineno, f'Reference({rtype}/{rid}) resolves to no Instance')
    # instances
    for name, inst in m.instances.items():
        if inst['usage'] is None:
            finding('fsh', inst['file'], inst['line'], f'Instance {name} has no Usage: line')
        if inst['usage'] in (None, 'example') and not inst['meta_source']:
            finding('fsh', inst['file'], inst['line'], f'example Instance {name} has no meta.source')
    # code system metadata
    for cs, keys in m.cs_meta.items():
        path, lineno, ident, url = m.defs[('CodeSystem', cs)]
        for req in ('count', 'status', 'experimental', 'content', 'caseSensitive'):
            if req not in keys:
                finding('fsh', path, lineno, f'CodeSystem {cs} missing ^{req}')
        if ident and not ident.endswith('-cs'):
            finding('fsh', path, lineno, f'CodeSystem id {ident} does not end with -cs')
    for (kind, name), (path, lineno, ident, url) in m.defs.items():
        if kind == 'ValueSet' and ident and not ident.endswith('-vs'):
            finding('fsh', path, lineno, f'ValueSet id {ident} does not end with -vs')
        if kind in ('Profile', 'Extension') and ident and not re.fullmatch(r'[a-z0-9]+(-[a-z0-9]+)*', ident):
            finding('fsh', path, lineno, f'{kind} id {ident} is not kebab-case')


# ---------------------------------------------------------------- pages

HEADING_RE = re.compile(r'^(#{1,6})\s*(.+?)\s*#*\s*$')


def check_pages(canonical, pages_declared, menu_targets, m):
    md_files = sorted(glob.glob(os.path.join(PAGES, '*.md')))
    md_names = {os.path.basename(p) for p in md_files}
    for p in md_names:
        if p not in pages_declared:
            finding('pages', os.path.join(PAGES, p), 0, 'page file not declared in sushi-config pages: (will not be built)')
    for p in pages_declared:
        if p not in md_names:
            finding('pages', CONFIG, 0, f'declared page {p} has no file')
    for t in menu_targets:
        if t == 'artifacts.html':
            continue
        if t.replace('.html', '.md') not in md_names:
            finding('pages', CONFIG, 0, f'menu target {t} has no page')

    artifact_ids = set()
    for (kind, name), (path, lineno, ident, url) in m.defs.items():
        if kind in ('Profile', 'Extension', 'CodeSystem', 'ValueSet', 'Resource', 'Logical'):
            artifact_ids.add(ident)
    instance_ids = set(m.instance_ids)
    image_files = set(os.listdir(IMAGES))

    for path in md_files:
        text = read(path)
        lines = text.splitlines()
        if os.path.getsize(path) == 0:
            finding('pages', path, 0, 'empty page')
            continue
        # control characters
        for lineno, line in enumerate(lines, 1):
            bad = [c for c in line if ord(c) < 32 and c not in '\t']
            if bad:
                finding('pages', path, lineno, f'control character(s) {[hex(ord(c)) for c in bad]}')
            for pat, msg in DEBRIS_PATTERNS:
                if re.search(pat, line):
                    finding('pages', path, lineno, msg)
            if re.search(r'(?<!!)\[[^\]]*\]\([^)]+\.(?:jpe?g|png|gif)\)', line):
                finding('pages', path, lineno, 'image written as a link (missing !)')
            if re.search(r'PHQ-9 (?:score )?e10|GAD-7 e10|Naz/Kz', line):
                finding('pages', path, lineno, 'symbol-font mojibake')
        # front matter blocks
        fm = [i for i, l in enumerate(lines) if l.strip() == '---']
        if len(fm) >= 4 or (len(fm) >= 3 and lines[0].strip() == '---'):
            body_dashes = [i for i in fm if i > 0 and i + 1 < len(lines) and re.match(r'^(title|layout):', lines[i + 1])]
            if body_dashes:
                finding('pages', path, body_dashes[0] + 1, 'second front-matter block in body')
        # duplicate consecutive headings / duplicate References headings
        prev_heading = None
        ref_headings = 0
        for lineno, line in enumerate(lines, 1):
            hm = HEADING_RE.match(line)
            if hm:
                title = hm.group(2).strip().lower()
                if prev_heading and prev_heading[0] == title and lineno - prev_heading[1] <= 2:
                    finding('pages', path, lineno, f'duplicate consecutive heading "{hm.group(2)}"')
                if title.rstrip(':') in ('references', 'sources', 'references (current)'):
                    ref_headings += 1
                prev_heading = (title, lineno)
        if ref_headings > 1:
            finding('pages', path, 0, f'{ref_headings} References/Sources headings')
        if ref_headings == 0 and os.path.basename(path) not in ('downloads.md', 'index.md', 'references.md'):
            finding('pages', path, 0, 'no References heading')
        # links
        in_code = False
        for lineno, line in enumerate(lines, 1):
            if line.strip().startswith('```'):
                in_code = not in_code
                continue
            if in_code:
                continue
            for lm in re.finditer(r'\]\(([^)\s]+)(?:\s+"[^"]*")?\)', line):
                target = lm.group(1)
                if target.startswith(('http://', 'https://', 'mailto:', '#', '{{')):
                    if 'hl7.org/fhir/uv/aerospace' in target or 'mitre.org/fhir/space-health' in target:
                        finding('links', path, lineno, f'foreign namespace link {target}')
                    continue
                target = target.split('#')[0]
                if not target:
                    continue
                base = os.path.basename(target)
                if base.endswith('.html'):
                    stem = base[:-5]
                    if stem in md_names or stem + '.md' in md_names:
                        if stem + '.md' not in pages_declared:
                            finding('links', path, lineno, f'link to undeclared page {base}')
                        continue
                    if stem in ('artifacts', 'toc', 'index', 'downloads', 'validation'):
                        continue
                    for suffix in ('-examples', '-definitions', '-mappings', '-testing'):
                        if stem.endswith(suffix):
                            stem = stem[:-len(suffix)]
                    tm = re.match(r'^([A-Za-z]+)-(.+)$', stem)
                    if tm:
                        rtype, rid = tm.groups()
                        if rid in artifact_ids or rid in instance_ids:
                            continue
                        finding('links', path, lineno, f'broken artifact link {base}')
                    else:
                        finding('links', path, lineno, f'unresolvable link {base}')
                elif base.endswith(('.ndjson', '.jpg', '.jpeg', '.png', '.gif', '.zip', '.json', '.csv')):
                    if base in image_files:
                        continue
                    if base in ('examples.json.zip', 'examples.xml.zip', 'full-ig.zip', 'package.tgz', 'definitions.json.zip', 'definitions.xml.zip', 'expansions.json', 'expansions.xml'):
                        continue
                    finding('links', path, lineno, f'missing download/image {base}')
        # namespace in examples
        for lineno, line in enumerate(lines, 1):
            for ns in FOREIGN_NAMESPACES[:2]:
                if ns in line:
                    finding('pages', path, lineno, f'foreign namespace {ns}')


# ---------------------------------------------------------------- ndjson

def check_ndjson(canonical):
    for path in sorted(glob.glob(os.path.join(IMAGES, '*.ndjson'))):
        with open(path, encoding='utf-8') as fh:
            raw = fh.read()
        for lineno, line in enumerate(raw.split('\n'), 1):
            if not line.strip():
                if lineno == len(raw.split('\n')):
                    continue
                finding('ndjson', path, lineno, 'blank line')
                continue
            try:
                obj = json.loads(line)
            except json.JSONDecodeError as exc:
                finding('ndjson', path, lineno, f'invalid JSON: {exc.msg}')
                continue
            if 'resourceType' not in obj:
                finding('ndjson', path, lineno, 'no resourceType')
                continue
            for ns in FOREIGN_NAMESPACES[:2]:
                if ns in line:
                    finding('ndjson', path, lineno, f'{obj.get("resourceType")}/{obj.get("id")} uses foreign namespace {ns}')
                    break
            if obj['resourceType'] == 'Procedure' and obj.get('status') not in (
                    'preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown'):
                finding('ndjson', path, lineno, f'Procedure/{obj.get("id")} invalid status {obj.get("status")}')


# ---------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--section', choices=['pages', 'links', 'fsh', 'ndjson'], action='append')
    ap.add_argument('--quiet', action='store_true', help='print counts only')
    ap.add_argument('--limit', type=int, default=0, help='max findings printed per section (0 = all)')
    args = ap.parse_args()

    canonical, pages_declared, menu_targets = load_config()
    model = parse_fsh(canonical)
    sections = args.section or ['pages', 'links', 'fsh', 'ndjson']
    if 'fsh' in sections:
        check_fsh(canonical, model)
    if 'pages' in sections or 'links' in sections:
        check_pages(canonical, pages_declared, menu_targets, model)
    if 'ndjson' in sections:
        check_ndjson(canonical)

    total = 0
    for section in ['pages', 'links', 'fsh', 'ndjson']:
        if section not in sections:
            continue
        items = FINDINGS.get(section, [])
        total += len(items)
        print(f'== {section}: {len(items)} finding(s)')
        if args.quiet:
            continue
        shown = items if not args.limit else items[:args.limit]
        for rel, line, msg in shown:
            loc = f'{rel}:{line}' if line else rel
            print(f'  {loc}: {msg}')
        if args.limit and len(items) > args.limit:
            print(f'  ... {len(items) - args.limit} more')
    print(f'== total: {total}')
    return 1 if total else 0


if __name__ == '__main__':
    sys.exit(main())
