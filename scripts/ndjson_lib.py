#!/usr/bin/env python3
"""
ndjson_lib.py - shared helpers for the NDJSON download generators.

Resolution order for a resource:
  1. fsh-generated/resources/<Type>-<id>.json   (fresh SUSHI output; authoritative)
  2. docs/<Type>-<id>.json                        (last published build; may be stale)
  3. the record already present in the target NDJSON file (carry-forward)

Every resource written is normalised: narrative `text` removed, `version` set to the
IG version from sushi-config.yaml, legacy canonical namespaces rewritten to the
current canonical, and renamed artifact ids updated.
"""

import glob
import json
import os
import re
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
FSH_DIR = os.path.join(ROOT, 'input', 'fsh')
GENERATED = os.path.join(ROOT, 'fsh-generated', 'resources')
DOCS = os.path.join(ROOT, 'docs')
OUTPUT_DIR = os.path.join(ROOT, 'input', 'images')

LEGACY_NAMESPACES = [
    'http://hl7.org/fhir/uv/aerospace',
    'https://mitre.org/fhir/space-health',
    'http://mitre.org/fhir/space-health',
]

# ids that changed during the 0.7.0 cleanup (old -> new); applied to id, url and
# any URL string that embeds the id.
ID_RENAMES = {
    'aerospace-code-system-enhanced': 'space-radiation-cs',
    'aerospace-code-system': 'space-radiation-cs',
    'organ-dose-codes-vs-complete': 'organ-dose-codes-vs',
    'space-radiation-dose-codes-vs-complete': 'space-radiation-dose-codes-vs',
    'mars-devices-certified-cs': 'mars-certified-devices-cs',
    'mars-devices-prototype-cs': 'mars-prototype-devices-cs',
    'mars-devices-certified-vs': 'mars-certified-devices-vs',
    'mars-devices-prototype-vs': 'mars-prototype-devices-vs',
    'neutral-buoyancy-training-activities': 'neutral-buoyancy-training-activities-vs',
    'underwater-training-procedures': 'underwater-training-procedures-vs',
    'diving-contraindicated-conditions': 'diving-contraindicated-conditions-vs',
    'diving-medical-examinations': 'diving-medical-examinations-vs',
    'underwater-communication-systems': 'underwater-communication-systems-vs',
    'regulatory-standards': 'regulatory-standards-vs',
    'decompression-procedures': 'decompression-procedures-vs',
    'GimbalContraindicatedConditions': 'gimbal-contraindicated-conditions-vs',
    'Astronaut': 'astronaut',
    'SpaceCondition': 'space-condition',
    'SpaceEquipment': 'space-equipment',
    'SpaceLocation': 'space-location',
    'SpaceVehicle': 'space-vehicle',
    'SpaceOrg': 'space-org',
    'SpaceProcedure': 'space-procedure',
    'SpaceRiskAssesment': 'space-risk-assessment',
    'EnvironmentalMonitoring': 'environmental-monitoring',
    'GimbalScreening': 'gimbal-screening',
    'NeutralBuoyancySession': 'neutral-buoyancy-session',
    'DiveProfile': 'dive-profile',
    'DiveMedicalClearance': 'dive-medical-clearance',
    'UnderwaterEVASimulation': 'underwater-eva-simulation',
    'DivingEquipment': 'diving-equipment',
    'DecompressionSickness': 'decompression-sickness',
    'HyperbaricTreatment': 'hyperbaric-treatment',
    'BarotraumaAssessment': 'barotrauma-assessment',
    'NeutralBuoyancyFacility': 'neutral-buoyancy-facility',
}

_CONFIG = None


def config():
    global _CONFIG
    if _CONFIG is None:
        text = open(os.path.join(ROOT, 'sushi-config.yaml'), encoding='utf-8').read()
        _CONFIG = {
            'canonical': re.search(r'^canonical:\s*(\S+)', text, re.M).group(1),
            'version': re.search(r'^version:\s*(\S+)', text, re.M).group(1),
        }
    return _CONFIG


def canonical():
    return config()['canonical']


def ig_version():
    return config()['version']


# ---------------------------------------------------------------- FSH discovery

def fsh_artifacts(kinds=('CodeSystem', 'ValueSet'), include=None, exclude=None):
    """Return [(kind, id, file)] for FSH definitions whose file path matches the filters.

    include / exclude are lists of regexes tested against the path relative to input/fsh.
    """
    out = []
    for path in sorted(glob.glob(os.path.join(FSH_DIR, '**', '*.fsh'), recursive=True)):
        rel = os.path.relpath(path, FSH_DIR)
        if include and not any(re.search(p, rel) for p in include):
            continue
        if exclude and any(re.search(p, rel) for p in exclude):
            continue
        kind = name = ident = None
        for raw in open(path, encoding='utf-8'):
            m = re.match(r'^(Profile|Extension|Instance|CodeSystem|ValueSet|Resource|Logical):\s*(\S+)', raw)
            if m:
                if kind in kinds and name:
                    out.append((kind, ident or name, rel))
                kind, name, ident = m.group(1), m.group(2), None
                continue
            m = re.match(r'^Id:\s*(\S+)', raw)
            if m and kind:
                ident = m.group(1)
            m = re.match(r'^\*\s*id\s*=\s*"([^"]+)"', raw)
            if m and kind == 'Instance':
                ident = m.group(1)
        if kind in kinds and name:
            out.append((kind, ident or name, rel))
    return out


def fsh_instances(instance_of_pattern, include=None, exclude=None):
    """Return [(resourceType-guess, id, file)] for Instances whose InstanceOf matches."""
    out = []
    for path in sorted(glob.glob(os.path.join(FSH_DIR, '**', '*.fsh'), recursive=True)):
        rel = os.path.relpath(path, FSH_DIR)
        if include and not any(re.search(p, rel) for p in include):
            continue
        if exclude and any(re.search(p, rel) for p in exclude):
            continue
        name = ident = iof = None
        for raw in open(path, encoding='utf-8'):
            m = re.match(r'^Instance:\s*(\S+)', raw)
            if m:
                if name and iof and re.search(instance_of_pattern, iof):
                    out.append((iof, ident or name, rel))
                name, ident, iof = m.group(1), None, None
                continue
            if name:
                m = re.match(r'^InstanceOf:\s*(\S+)', raw)
                if m:
                    iof = m.group(1)
                m = re.match(r'^\*\s*id\s*=\s*"([^"]+)"', raw)
                if m:
                    ident = m.group(1)
                if re.match(r'^(Profile|Extension|CodeSystem|ValueSet|RuleSet|Alias):', raw):
                    if iof and re.search(instance_of_pattern, iof):
                        out.append((iof, ident or name, rel))
                    name = None
        if name and iof and re.search(instance_of_pattern, iof):
            out.append((iof, ident or name, rel))
    return out


# ---------------------------------------------------------------- normalisation

def _rewrite_string(value):
    for ns in LEGACY_NAMESPACES:
        value = value.replace(ns, canonical())
    base = canonical()
    for old, new in ID_RENAMES.items():
        for rtype in ('CodeSystem', 'ValueSet', 'StructureDefinition'):
            value = value.replace(f'{base}/{rtype}/{old}|', f'{base}/{rtype}/{new}|')
            if value.endswith(f'{base}/{rtype}/{old}'):
                value = f'{base}/{rtype}/{new}'
            value = value.replace(f'{base}/{rtype}/{old}#', f'{base}/{rtype}/{new}#')
    return value


def _walk(obj):
    if isinstance(obj, dict):
        return {k: _walk(v) for k, v in obj.items() if k != 'text'}
    if isinstance(obj, list):
        return [_walk(v) for v in obj]
    if isinstance(obj, str):
        return _rewrite_string(obj)
    return obj


CANONICAL_TYPES = {'CodeSystem', 'ValueSet', 'StructureDefinition', 'Questionnaire', 'PlanDefinition',
                   'ActivityDefinition', 'ConceptMap', 'ImplementationGuide', 'NamingSystem'}


def normalise(resource):
    resource = _walk(resource)
    if resource.get('id') in ID_RENAMES:
        resource['id'] = ID_RENAMES[resource['id']]
    if resource.get('resourceType') in CANONICAL_TYPES:
        resource['version'] = ig_version()
        if resource.get('url', '').startswith(canonical()):
            resource['url'] = f"{canonical()}/{resource['resourceType']}/{resource['id']}"
    if resource.get('resourceType') == 'Procedure' and resource.get('status') == 'final':
        resource['status'] = 'completed'
    return resource


# ---------------------------------------------------------------- IO

def load_existing(path):
    records = {}
    if not os.path.exists(path):
        return records
    for line in open(path, encoding='utf-8'):
        line = line.strip()
        if not line:
            continue
        try:
            obj = json.loads(line)
        except json.JSONDecodeError:
            continue
        if 'resourceType' in obj and 'id' in obj:
            records[(obj['resourceType'], obj['id'])] = obj
    return records


def resolve(resource_type, rid, existing=None):
    """Return (resource, source) where source is 'generated', 'docs', 'existing' or None."""
    for folder, label in ((GENERATED, 'generated'), (DOCS, 'docs')):
        path = os.path.join(folder, f'{resource_type}-{rid}.json')
        if os.path.exists(path):
            with open(path, encoding='utf-8') as fh:
                return json.load(fh), label
        # renamed ids: try the old file name in docs
        for old, new in ID_RENAMES.items():
            if new == rid:
                path = os.path.join(folder, f'{resource_type}-{old}.json')
                if os.path.exists(path):
                    with open(path, encoding='utf-8') as fh:
                        return json.load(fh), label
    if existing and (resource_type, rid) in existing:
        return existing[(resource_type, rid)], 'existing'
    return None, None


def write_ndjson(path, resources):
    lines = [json.dumps(normalise(r), separators=(',', ':'), ensure_ascii=False) for r in resources]
    with open(path, 'w', encoding='utf-8') as fh:
        fh.write('\n'.join(lines))


def build(output_name, wanted):
    """wanted: list of (resourceType, id). Writes input/images/<output_name> and prints a report."""
    path = os.path.join(OUTPUT_DIR, output_name)
    existing = load_existing(path)
    resources, sources, missing = [], {}, []
    for rtype, rid in wanted:
        res, src = resolve(rtype, rid, existing)
        if res is None:
            missing.append(f'{rtype}/{rid}')
            continue
        resources.append(res)
        sources[src] = sources.get(src, 0) + 1
    write_ndjson(path, resources)
    print(f'{output_name}: {len(resources)} resources written ({", ".join(f"{v} from {k}" for k, v in sources.items())})')
    if sources.get('docs') or sources.get('existing'):
        print('  note: some resources came from the last published build or the previous file; '
              'run `sushi .` and re-run this script before publishing to pick up FSH changes.')
    if missing:
        print(f'  MISSING ({len(missing)}): ' + ', '.join(missing))
    return len(missing) == 0


def main_guard(ok):
    sys.exit(0 if ok else 1)
