Update NDJSON download files after FSH resources are added, renamed or removed. Follow these steps:

1. The generators discover CodeSystem, ValueSet and Questionnaire ids directly from `input/fsh/`, so no id lists need editing. Routing is by file name:
   - `input/fsh/Artemis*.fsh` → `scripts/generate_artemis_ndjson.py` → `Artemis.CodeSystems.ndjson`, `Artemis.ValueSets.ndjson`
   - `input/fsh/Mars*.fsh`, `CrewedMarsMissions.fsh` → `scripts/generate_marsdirect_ndjson.py` → `MarsDirect.*.ndjson`
   - `input/fsh/terminology/*.fsh`, `input/fsh/questionnaires/*.fsh` → `scripts/generate_nasa_ndjson.py` → `NASA.Questionnaires.ndjson`, `NASA.CodeSystems.ndjson`, `NASA.ValueSets.ndjson`
   - everything else → `scripts/generate_terminology_ndjson.py` → `SpaceHealth.CodeSystems.ndjson`, `SpaceHealth.ValueSets.ndjson`
   - hand-maintained files (Devices, Locations, Organizations, Goals, PlanDefinitions, NutritionProducts, Patients, Conditions, Observations, Procedures) → `scripts/normalize_ndjson.py`

2. Make sure `fsh-generated/resources/` is fresh:
   ```
   sushi .
   ```
   Without a fresh build the generators fall back to `docs/` (last published build) or the previous NDJSON record and say so; those fallbacks may be stale.

3. Run the generators:
   ```
   cd scripts && python3 generate_terminology_ndjson.py && python3 generate_artemis_ndjson.py && python3 generate_marsdirect_ndjson.py && python3 generate_nasa_ndjson.py && python3 normalize_ndjson.py && cd ..
   ```

4. Verify: `python3 scripts/qc_check.py --section ndjson` must report zero findings, and each generator must report zero MISSING resources.

5. If a brand-new NDJSON file was created, add a download link to `input/pagecontent/downloads.md` in the matching section and mention it in `scripts/CLAUDE.md`.

6. If an artifact id was renamed, add the old→new pair to `ID_RENAMES` in `scripts/ndjson_lib.py` so hand-maintained files and fallbacks are rewritten.
