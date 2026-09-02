#!/usr/bin/env python3
"""
generate_artemis_ndjson.py

Builds the Artemis terminology downloads from the CodeSystems and ValueSets defined in
input/fsh/Artemis*.fsh (missions, landing regions, certified and prototype devices,
shielding conditions, location types, radiation measures, health investigations).

Output:
  input/images/Artemis.CodeSystems.ndjson
  input/images/Artemis.ValueSets.ndjson

Usage:  python3 scripts/generate_artemis_ndjson.py   (after `sushi .`)
"""
import ndjson_lib as lib

if __name__ == '__main__':
    artifacts = lib.fsh_artifacts(('CodeSystem', 'ValueSet'), include=[r'^Artemis'])
    cs = [('CodeSystem', i) for k, i, f in artifacts if k == 'CodeSystem']
    vs = [('ValueSet', i) for k, i, f in artifacts if k == 'ValueSet']
    ok = lib.build('Artemis.CodeSystems.ndjson', cs)
    ok = lib.build('Artemis.ValueSets.ndjson', vs) and ok
    lib.main_guard(ok)
