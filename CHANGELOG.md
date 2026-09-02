# Changelog

## 0.7.0 (2026-09-02) — quality-control release

This release changes the canonical URL and a number of artifact ids. Implementers who
adopted 0.6.x must update their references.

### Breaking changes

- **Canonical URL** is now `https://awatson1978.github.io/aerospace-medicine-ig`.
  Previous versions published artifacts under two namespaces
  (`http://hl7.org/fhir/uv/aerospace/...` and `https://mitre.org/fhir/space-health/...`);
  both are replaced everywhere (FSH, pages, NDJSON downloads).
- **Renamed ids** (old → new):
  - `aerospace-code-system-enhanced` → `space-radiation-cs` (detector hardware codes moved
    to `radiation-detector-type-cs`; mission-context codes removed)
  - `organ-dose-codes-vs-complete` → `organ-dose-codes-vs`;
    `space-radiation-dose-codes-vs-complete` → `space-radiation-dose-codes-vs`;
    `space-radiation-type-vs-complete`, `radiation-countermeasures-vs-complete`,
    `radiation-detector-type-vs-complete` removed (use the non-"complete" value sets)
  - `mars-devices-certified-cs/-vs` → `mars-certified-devices-cs/-vs`;
    `mars-devices-prototype-cs/-vs` → `mars-prototype-devices-cs/-vs`
  - `artemis-devices-cs` merged into `artemis-certified-devices-cs` and
    `artemis-prototype-devices-cs`
  - Neutral-buoyancy value sets gained the `-vs` suffix
    (`neutral-buoyancy-training-activities-vs`, `underwater-training-procedures-vs`,
    `diving-contraindicated-conditions-vs`, `diving-medical-examinations-vs`,
    `underwater-communication-systems-vs`, `regulatory-standards-vs`,
    `decompression-procedures-vs`); `GimbalContraindicatedConditions` →
    `gimbal-contraindicated-conditions-vs`
  - PascalCase profile ids are now kebab-case: `Astronaut` → `astronaut`,
    `SpaceCondition` → `space-condition`, `SpaceEquipment` → `space-equipment`,
    `SpaceLocation` → `space-location`, `SpaceVehicle` → `space-vehicle`,
    `SpaceOrg` → `space-org`, `SpaceProcedure` → `space-procedure`,
    `SpaceRiskAssesment` → `space-risk-assessment`, `EnvironmentalMonitoring` →
    `environmental-monitoring`, `GimbalScreening` → `gimbal-screening`,
    `AstrodynamicsObservation` → `astrodynamics-observation`, and the diving/hyperbaric
    profiles (`neutral-buoyancy-session`, `dive-profile`, `dive-medical-clearance`,
    `underwater-eva-simulation`, `diving-equipment`, `decompression-sickness`,
    `hyperbaric-treatment`, `barotrauma-assessment`, `neutral-buoyancy-facility`)
  - `EnhancedNeutralBuoyancySession` merged into `neutral-buoyancy-session`
  - Behavioral biomarker codes `cortisol-ugdl`, `hrv-ms`, `sleep-duration-h` replaced by
    LOINC 2143-6, 80404-7, 93832-4
  - Artemis landing example ids `Artemis-III-*` → `Artemis-IV-*` (Artemis III is modelled
    as a crewed low-Earth-orbit test flight; Artemis IV as the first crewed landing)
- **Removed**: eight unused draft CodeSystems (`space-environmental-factors-cs`,
  `space-physiological-effects-cs`, `space-neurological-effects-cs`,
  `space-cardiovascular-effects-cs`, `space-psychological-effects-cs`,
  `space-monitoring-procedures-cs`, `space-treatment-procedures-cs`,
  `space-preventive-health-cs`), eighteen unbound SNOMED value sets, the vendored Logica
  vital-signs profiles (`vital-signs-panel` and `input/resources/`), the unpublished
  `registry`, `synthea`, `scenarios` and `calorie-restriction` pages.
- **License** is now CC BY-ND 4.0 (previously stated inconsistently as Apache 2.0,
  CC0 and "all rights reserved").

### Added

- `meta.source` (and `HTEST` tag where applicable) on every example instance through
  the `SyntheticExample`, `FictionalExample`, `ReferenceRecord` and `PublicRecord`
  rule sets; NASA MRID questionnaires cite the NLSP document library.
- CodeSystems that examples referenced but never declared: `shielding-condition-cs`,
  `location-type-cs`, `artemis-radiation-measure-cs`, `aerospace-observation-category-cs`,
  `isru-metrics-cs`, `biomanufacturing-metric-cs`, `eva-suit-inventory-metric-cs`,
  `venous-flow-metric-cs`, `space-procedure-cs`.
- `MissionPhaseToNASAMissionPhase` ConceptMap.
- Radiation example instances (`space-radiation-exposure-example`,
  `cumulative-radiation-dose-example`, `radiation-detector-example`,
  `space-radiation-summary-example`); `MarsCrewMember2`, `CumulativeDose-Transit`.
- `scripts/qc_check.py` (static quality gate), `scripts/check_links.py`,
  auto-discovering NDJSON generators, `NASA.CodeSystems.ndjson`, `NASA.ValueSets.ndjson`.
- `docs/package-list.json`, `docs/.nojekyll`, IG title/name/description/experimental.

### Fixed

- 41 dangling code references through a mis-aliased CodeSystem; 18 codes used but never
  defined; 6 undefined CodeSystem URLs; component slices with no coded discriminator;
  CodeSystem properties referencing non-existent codes; 33 extensions without a context;
  37 dangling `Reference(Patient/...)` values; wrong SNOMED/LOINC codes and displays.
- Corrupt `Artemis.CodeSystems.ndjson`; invalid `Procedure.status` in the Procedures
  download; NDJSON versions.
- 91 control characters rendered in place of dashes, extraction artifacts, a duplicated
  page body, duplicate References headings, broken artifact links, and factual
  inconsistencies across pages (career dose limit, CO2 limits, Artemis III/IV, Apollo-era
  SPE timing, citations).

### Notes

- `docs/` (the published site) is regenerated by `/publish`; until then it still reflects
  0.6.2 and the old URLs.
- `ig.ini` still tracks `fhir.base.template#current`; pin a released template version when
  reproducible builds are needed.
