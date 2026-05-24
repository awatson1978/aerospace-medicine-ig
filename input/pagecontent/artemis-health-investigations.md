### Artemis Health Investigations

The Artemis II mission carries a suite of Human Research Program (HRP) investigations designed to characterize crew health during deep space missions. This page describes the FHIR profiles that model data from these investigations.

#### ARCHeR - Actigraphy for Circadian Health during Exploration Research

ARCHeR uses wrist-worn actigraphy to monitor rest-activity rhythms and circadian health throughout the mission. The [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html) profile captures:

- Rest-activity rhythm stability (Interdaily Stability)
- Endogenous circadian period
- Sleep-wake cycle timing and total sleep time

Data is collected continuously pre-flight, in-flight, and post-flight to assess circadian disruption during deep space transit.

#### Immune Biomarkers

Spaceflight-associated immune dysregulation is monitored through the [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html), which tracks:

- **Cytokines**: IL-6, TNF-alpha, IFN-gamma
- **T-cell subsets**: CD4/CD8 ratio
- **Innate immunity**: NK cell percentage
- **Viral reactivation**: EBV and CMV PCR
- **Mucosal immunity**: Salivary IgA
- **Stress markers**: Cortisol

Specimens are collected using the [SpaceflightSpecimen](StructureDefinition-spaceflight-specimen.html) profile, which accounts for microgravity-adapted collection methods.

#### NASA Spaceflight Standard Measures

The Standard Measures program provides a common set of assessments across all HRP investigations. The [StandardMeasuresObservation](StructureDefinition-standard-measures-observation.html) profile supports:

| Assessment | Description |
|-----------|-------------|
| Functional Task Test | Sensorimotor performance battery |
| Field Test | Timed obstacle course |
| Grip Strength | Isometric dynamometry |
| Tandem Walk | Balance assessment |
| Visual Acuity | In-flight vision testing |
| Orthostatic Test | Tilt or stand test |
| Body Composition | DXA or bioimpedance |

Each assessment is tagged with [MissionPhase](StructureDefinition-mission-phase.html) to enable pre/in/post-flight comparison.

#### AVATAR - Organ-on-Chip

The AVATAR investigation uses microphysiological systems (organ-on-chip devices) to study cellular responses to spaceflight conditions. The [AVATAROrganChip](StructureDefinition-avatar-organ-chip.html) profile models:

- **Bone Marrow Chip** - Hematopoiesis studies
- **Immune Chip** - Immune system modeling
- **Gut Chip** - Intestinal epithelium
- **Lung Chip** - Alveolar-capillary interface
- **Kidney Chip** - Renal tubular function
- **Blood-Brain Barrier Chip** - BBB integrity

#### FHIR Profiles Summary

| Profile | Resource Type | Investigation |
|---------|--------------|---------------|
| [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html) | Observation | ARCHeR |
| [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html) | Observation | Immune Biomarkers |
| [SpaceflightSpecimen](StructureDefinition-spaceflight-specimen.html) | Specimen | Multiple |
| [StandardMeasuresObservation](StructureDefinition-standard-measures-observation.html) | Observation | Standard Measures |
| [AVATAROrganChip](StructureDefinition-avatar-organ-chip.html) | Device | AVATAR |
