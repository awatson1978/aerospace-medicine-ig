#!/usr/bin/env python3
"""
generate_marsdirect_ndjson.py

Builds the Mars Direct terminology downloads from the CodeSystems and ValueSets defined in
input/fsh/Mars*.fsh and CrewedMarsMissions.fsh (robotic and crewed missions, landing
sites, certified and prototype devices, observation categories, ISRU metrics).

Output:
  input/images/MarsDirect.CodeSystems.ndjson
  input/images/MarsDirect.ValueSets.ndjson

Usage:  python3 scripts/generate_marsdirect_ndjson.py   (after `sushi .`)
"""
import ndjson_lib as lib

if __name__ == '__main__':
    artifacts = lib.fsh_artifacts(('CodeSystem', 'ValueSet'), include=[r'^Mars', r'^CrewedMars'])
    cs = [('CodeSystem', i) for k, i, f in artifacts if k == 'CodeSystem']
    vs = [('ValueSet', i) for k, i, f in artifacts if k == 'ValueSet']
    ok = lib.build('MarsDirect.CodeSystems.ndjson', cs)
    ok = lib.build('MarsDirect.ValueSets.ndjson', vs) and ok
    lib.main_guard(ok)
