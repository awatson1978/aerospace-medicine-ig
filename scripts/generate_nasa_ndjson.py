#!/usr/bin/env python3
"""
generate_nasa_ndjson.py

Builds the NASA Medical Requirements downloads: every Questionnaire defined under
input/fsh/questionnaires/ (MEDB and MR questionnaires transcribed from the NASA MRID
library) and the NASA MRID CodeSystems and ValueSets under input/fsh/terminology/.

Output:
  input/images/NASA.Questionnaires.ndjson
  input/images/NASA.CodeSystems.ndjson
  input/images/NASA.ValueSets.ndjson

Usage:  python3 scripts/generate_nasa_ndjson.py   (after `sushi .`)
"""
import ndjson_lib as lib

if __name__ == '__main__':
    questionnaires = lib.fsh_instances(r'Questionnaire', include=[r'^questionnaires/'])
    q = [('Questionnaire', i) for iof, i, f in questionnaires]
    artifacts = lib.fsh_artifacts(('CodeSystem', 'ValueSet'), include=[r'^terminology/', r'^questionnaires/'])
    cs = [('CodeSystem', i) for k, i, f in artifacts if k == 'CodeSystem']
    vs = [('ValueSet', i) for k, i, f in artifacts if k == 'ValueSet']
    ok = lib.build('NASA.Questionnaires.ndjson', q)
    ok = lib.build('NASA.CodeSystems.ndjson', cs) and ok
    ok = lib.build('NASA.ValueSets.ndjson', vs) and ok
    lib.main_guard(ok)
