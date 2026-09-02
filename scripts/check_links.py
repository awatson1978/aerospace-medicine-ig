#!/usr/bin/env python3
"""
check_links.py - verify external URLs referenced by the IG pages.

Extracts every http(s) URL from input/pagecontent/*.md, requests each one
(HEAD first, then a small ranged GET for servers that reject HEAD), and prints
a table of URLs that did not return a 2xx/3xx status, with the page and line
that reference them. Needs outbound network access; run it from a workstation,
not from a sandboxed build agent.

    python3 scripts/check_links.py               # report failures only
    python3 scripts/check_links.py --all         # report every URL
    python3 scripts/check_links.py --workers 16 --timeout 20
"""

import argparse
import concurrent.futures
import glob
import os
import re
import sys
import urllib.error
import urllib.request
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
PAGES = os.path.join(ROOT, 'input', 'pagecontent')
UA = ('Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
      'Chrome/124.0 Safari/537.36')
URL_RE = re.compile(r'https?://[^\s\)\]>"\'<]+')


def collect_urls():
    urls = defaultdict(list)
    for path in sorted(glob.glob(os.path.join(PAGES, '*.md'))):
        name = os.path.basename(path)
        with open(path, encoding='utf-8', errors='ignore') as fh:
            for lineno, line in enumerate(fh, 1):
                for url in URL_RE.findall(line):
                    url = url.rstrip('.,;:')
                    urls[url].append(f'{name}:{lineno}')
    return urls


def probe(url, timeout):
    def request(method, extra=None):
        req = urllib.request.Request(url, method=method, headers={'User-Agent': UA, **(extra or {})})
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            return resp.status
    try:
        return request('HEAD'), ''
    except urllib.error.HTTPError as exc:
        if exc.code in (403, 405, 404, 500, 501):
            try:
                return request('GET', {'Range': 'bytes=0-2048'}), ''
            except urllib.error.HTTPError as exc2:
                return exc2.code, ''
            except Exception as exc2:  # noqa: BLE001
                return 0, type(exc2).__name__
        return exc.code, ''
    except Exception as exc:  # noqa: BLE001
        try:
            return request('GET', {'Range': 'bytes=0-2048'}), ''
        except urllib.error.HTTPError as exc2:
            return exc2.code, ''
        except Exception as exc2:  # noqa: BLE001
            return 0, type(exc2).__name__


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--all', action='store_true', help='print every URL, not only failures')
    ap.add_argument('--workers', type=int, default=8)
    ap.add_argument('--timeout', type=float, default=25.0)
    args = ap.parse_args()

    urls = collect_urls()
    print(f'{len(urls)} unique external URLs', file=sys.stderr)
    results = {}
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = {pool.submit(probe, u, args.timeout): u for u in urls}
        for fut in concurrent.futures.as_completed(futures):
            results[futures[fut]] = fut.result()

    failures = 0
    print('status\turl\treferenced_from')
    for url in sorted(urls):
        status, err = results[url]
        ok = 200 <= status < 400
        if ok and not args.all:
            continue
        if not ok:
            failures += 1
        label = str(status) if status else f'ERR({err})'
        print(f'{label}\t{url}\t{",".join(urls[url][:4])}')
    print(f'{failures} failing URL(s) of {len(urls)}', file=sys.stderr)
    return 1 if failures else 0


if __name__ == '__main__':
    sys.exit(main())
