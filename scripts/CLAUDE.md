# Scripts

Utility scripts for quality control and for generating the NDJSON downloads published
with the Aerospace Medicine Implementation Guide. All scripts are Python 3 standard
library only and are run from the repository root unless noted.

## Quality control

### qc_check.py

Static quality gate that runs without SUSHI or the IG Publisher.

```
python3 scripts/qc_check.py              # full report, exit 1 on any finding
python3 scripts/qc_check.py --quiet      # counts only
python3 scripts/qc_check.py --section fsh --section links
```

Sections:

- `pages`: control characters, LLM/PDF extraction debris, duplicate or missing
  References headings, second front-matter blocks, images written as links,
  placeholder DOIs, malformed URLs, foreign canonical namespaces, undeclared pages.
- `links`: every relative link target in `input/pagecontent/*.md` resolved against
  FSH `Id:`/`Instance:` declarations, `input/images/`, and `sushi-config.yaml` pages.
- `fsh`: dangling `Reference(Type/id)`, codes not defined in their local CodeSystem,
  aliases and quoted URLs that name no defined artifact, foreign namespaces, instances
  without `Usage:`, example instances without `meta.source` (via the provenance rule
  sets in `SharedExtensions.fsh`), CodeSystems missing `^count`/`^status`/
  `^experimental`/`^content`/`^caseSensitive`, id naming convention (`-cs`, `-vs`,
  kebab-case profile ids), indented declarations.
- `ndjson`: every line of `input/images/*.ndjson` parses, has a `resourceType`, uses the
  current canonical, and has a valid `Procedure.status`.

Run it before every commit and as step 1 of `/publish`. It does not replace SUSHI or the
publisher validator; run those locally as well.

### check_links.py

Checks every external URL referenced from the pages (HEAD, then a ranged GET for servers
that reject HEAD) and prints the failures with the page and line that cite them.

```
python3 scripts/check_links.py            # failures only
python3 scripts/check_links.py --all      # every URL
```

Needs outbound network access; run it from a workstation.

## NDJSON downloads

The downloads in `input/images/*.ndjson` are newline-delimited JSON: one minified FHIR
resource per line, no trailing newline. They are published with the site because the
publisher copies `input/images/` to the site root.

### How the generators work

`ndjson_lib.py` resolves each resource in this order:

1. `fsh-generated/resources/<Type>-<id>.json` — fresh SUSHI output (authoritative)
2. `docs/<Type>-<id>.json` — the last published build (may be stale)
3. the record already present in the target NDJSON file (carry-forward)

and normalises it: narrative `text` removed, `version` set from `sushi-config.yaml`,
legacy namespaces (`hl7.org/fhir/uv/aerospace`, `mitre.org/fhir/space-health`)
rewritten to the current canonical, and renamed ids (`ID_RENAMES`) updated. Each
generator prints where its resources came from and lists anything MISSING; a resource
is missing only when it exists in FSH but no build has produced it yet.

Ids are discovered from `input/fsh/` by file name, so new terminology is picked up
without editing id lists:

| Script | FSH sources | Output |
|---|---|---|
| `generate_terminology_ndjson.py` | every CodeSystem/ValueSet except the families below | `SpaceHealth.CodeSystems.ndjson`, `SpaceHealth.ValueSets.ndjson` |
| `generate_artemis_ndjson.py` | `Artemis*.fsh` | `Artemis.CodeSystems.ndjson`, `Artemis.ValueSets.ndjson` |
| `generate_marsdirect_ndjson.py` | `Mars*.fsh`, `CrewedMarsMissions.fsh` | `MarsDirect.CodeSystems.ndjson`, `MarsDirect.ValueSets.ndjson` |
| `generate_nasa_ndjson.py` | `questionnaires/*.fsh`, `terminology/*.fsh` | `NASA.Questionnaires.ndjson`, `NASA.CodeSystems.ndjson`, `NASA.ValueSets.ndjson` |
| `normalize_ndjson.py` | none (hand-maintained files) | Devices, Locations, Organizations, Goals, PlanDefinitions, ActivityDefinitions, NutritionProducts, Patients, Conditions, Observations, Procedures |

### Standard workflow

```
sushi .
cd scripts
python3 generate_terminology_ndjson.py
python3 generate_artemis_ndjson.py
python3 generate_marsdirect_ndjson.py
python3 generate_nasa_ndjson.py
python3 normalize_ndjson.py
cd ..
python3 scripts/qc_check.py --section ndjson
```

Then rebuild the IG (`./_genonce.sh`) so the published copies in the site match.

### Hand-maintained files

The Artemis, Commercial Space and Mars Direct Devices/Locations/Organizations files,
the Artemis Goals/PlanDefinitions/ActivityDefinitions/NutritionProducts files, and the
SpaceHealth Conditions/Devices/Locations/Observations/Organizations/Procedures/Patients
files contain resources that have no FSH source. `normalize_ndjson.py` keeps them on the
current canonical and version, fixes invalid `Procedure.status` values, and tags the
fictional Star Trek patients with `meta.source` and `HTEST`. Migrating these resources
into FSH so they are validated with everything else is a planned follow-up.

### Renamed artifacts

When an artifact id changes, add the old→new pair to `ID_RENAMES` in `ndjson_lib.py`.
The generators then find the old JSON in `docs/` as a fallback and rewrite the id and
URL, and `normalize_ndjson.py` rewrites references in the hand-maintained files.

## Maintenance

- After editing FSH: `sushi .`, run the generators, run `qc_check.py`.
- Before publishing: `/publish` runs `qc_check.py`, the build, the generators, and
  `qc_check.py --section ndjson` in that order.
- Adding a new NDJSON file: add its link to `input/pagecontent/downloads.md` and a row
  to the table above.

## References

- [FHIR NDJSON Format](https://www.hl7.org/fhir/nd-json.html)
- [Bulk Data Export](https://hl7.org/fhir/uv/bulkdata/)
- [FHIR Shorthand (FSH)](https://fshschool.org/)
