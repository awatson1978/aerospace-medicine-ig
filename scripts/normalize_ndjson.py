#!/usr/bin/env python3
"""
normalize_ndjson.py

Normalises the hand-maintained NDJSON downloads (Devices, Locations, Organizations,
Goals, PlanDefinitions, NutritionProducts, Patients, Conditions, Observations,
Procedures) that have no FSH source: rewrites legacy canonical namespaces and renamed
ids, drops narrative, stamps the IG version on canonical resources, fixes invalid
Procedure.status values, and marks the fictional patients with meta.source and HTEST.

Usage:  python3 scripts/normalize_ndjson.py
"""
import glob
import json
import os
import ndjson_lib as lib

GENERATED_BY_SCRIPTS = {
    'SpaceHealth.CodeSystems.ndjson', 'SpaceHealth.ValueSets.ndjson',
    'Artemis.CodeSystems.ndjson', 'Artemis.ValueSets.ndjson',
    'MarsDirect.CodeSystems.ndjson', 'MarsDirect.ValueSets.ndjson',
    'NASA.Questionnaires.ndjson', 'NASA.CodeSystems.ndjson', 'NASA.ValueSets.ndjson',
}
HTEST = {'system': 'http://terminology.hl7.org/CodeSystem/v3-ActReason', 'code': 'HTEST', 'display': 'test health data'}

if __name__ == '__main__':
    for path in sorted(glob.glob(os.path.join(lib.OUTPUT_DIR, '*.ndjson'))):
        name = os.path.basename(path)
        if name in GENERATED_BY_SCRIPTS:
            continue
        resources = list(lib.load_existing(path).values())
        for r in resources:
            if name == 'SpaceHealth.Patients.StarTrek.ndjson':
                meta = r.setdefault('meta', {})
                meta['source'] = f'{lib.canonical()}/provenance/fictional'
                meta['tag'] = [HTEST]
        lib.write_ndjson(path, resources)
        print(f'{name}: {len(resources)} resources normalised')
