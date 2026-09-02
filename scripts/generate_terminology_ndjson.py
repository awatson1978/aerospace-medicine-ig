#!/usr/bin/env python3
"""
generate_terminology_ndjson.py

Builds the general terminology downloads from every CodeSystem and ValueSet defined in
input/fsh, excluding the Artemis, Mars Direct and NASA MRID families, which have their
own generators. Ids are discovered from the FSH sources, so new terminology is picked up
automatically.

Output:
  input/images/SpaceHealth.CodeSystems.ndjson
  input/images/SpaceHealth.ValueSets.ndjson

Usage:  python3 scripts/generate_terminology_ndjson.py   (after `sushi .`)
"""
import ndjson_lib as lib

EXCLUDE = [r'^Artemis', r'^Mars', r'^CrewedMars', r'^terminology/', r'^questionnaires/']

if __name__ == '__main__':
    artifacts = lib.fsh_artifacts(('CodeSystem', 'ValueSet'), exclude=EXCLUDE)
    cs = [('CodeSystem', i) for k, i, f in artifacts if k == 'CodeSystem']
    vs = [('ValueSet', i) for k, i, f in artifacts if k == 'ValueSet']
    ok = lib.build('SpaceHealth.CodeSystems.ndjson', cs)
    ok = lib.build('SpaceHealth.ValueSets.ndjson', vs) and ok
    lib.main_guard(ok)
