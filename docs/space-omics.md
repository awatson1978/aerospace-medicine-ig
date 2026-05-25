# Space Omics - v0.6.0

* [**Table of Contents**](toc.md)
* **Space Omics**

## Space Omics

# Space Omics Expansion (SOMA) – Multi-Omics Astronaut Profiling and Biobanking

## Overview

The **Space Omics and Medical Atlas (SOMA)** and international astronaut biobank represent a landmark open-science resource for aerospace medicine. Published in **Nature** (11 June 2024), SOMA integrates clinical, cellular, and multi-omic data from diverse missions—including the NASA Twins Study, JAXA CFE, SpaceX Inspiration4 (I4), Axiom, and Polaris—creating a >10-fold increase in publicly available human space omics data.

Over 2,911 biospecimens were banked from the Inspiration4 crew (3-day orbital mission at 585 km), with 1,194 processed across 13 sample types and 10 timepoints (pre-flight L-92/L-44/L-3, in-flight FD1–3, post-flight R+1, and recovery R+45/R+82/R+194). Matched samples are available through the Cornell Aerospace Medicine Biobank (CAMbank) for future analyses.

This page provides FHIR modeling guidance for capturing multi-omic profiles, molecular sequences, omics-derived risk assessments, and personalized countermeasure plans to support precision space medicine for Artemis, Mars, and exploration-class missions.

## Key Study Elements

**Cohorts & Design**

* Primary focus: Inspiration4 all-civilian crew (ages 29–51)
* Integrated with long-duration ISS data (Twins, JAXA) for cross-mission comparisons
* 13 biospecimen types (whole blood, serum, plasma, PBMCs, EVs, urine, stool, skin biopsies, swabs, etc.)

**Omics Platforms Covered**

* Genomics / Epigenomics: WGS, cfDNA, snATAC-seq
* Transcriptomics: direct RNA-seq, snRNA-seq, cfRNA, spatial transcriptomics
* Proteomics / Metabolomics: untargeted LC-MS/MS, chemokine/cytokine panels
* Immunomics: BCR/TCR repertoire sequencing
* Microbiome: metagenomics/metatranscriptomics (oral, nasal, skin, gut)

**Signature Molecular Changes Observed**

* Rapid telomere elongation (17–22 % increase in 3 days)
* Cytokine shifts (↑ IL-6, IL-10, CCL2; ↓ BDNF; ↑ IL-19 post-flight)
* Immune cell gene expression (T-cell activation, monocyte-specific recovery trajectories)
* Cell-type proportion shifts (cfRNA: ↑ hepatocytes, kidney endothelial cells, melanocytes)
* Recovery dynamics: most changes reverse, but some pathways (circadian, longevity) persist
* Mission-specific vs. universal responses (short high-altitude vs. long-duration ISS)

**Biobanking**
 Cornell Aerospace Medicine Biobank (CAMbank) stores viably frozen specimens for ongoing and future multi-omic research. All data are publicly available via NASA OSDR and the SOMA portal (browsers for bulk/spatial omics, single-cell, and microbiome).

## FHIR Implementation Guidance

### Recommended Resources

* `Observation` – multi-omic results, cytokine panels, telomere length, gene expression
* `MolecularSequence` – genomic, transcriptomic, and epigenomic sequences
* `DiagnosticReport` – integrated omics summaries and risk assessments
* `Specimen` – biobanking provenance (CAMbank linkage)
* `CarePlan` / `ServiceRequest` – personalized countermeasure plans
* `ResearchStudy` / `ResearchSubject` – SOMA cohort tracking

### New / Enhanced Profiles

**Core Profiles**

* **[`MultiOmicsObservation`](StructureDefinition-multi-omics-observation.md)** – Captures platform, read counts, quality metrics, and cross-omics correlations for any assay (genomics, proteomics, metabolomics, etc.)
* **[`SpaceMolecularSequence`](StructureDefinition-space-molecular-sequence.md)** – Extends `MolecularSequence` with spaceflight context (mission phase, radiation exposure, microgravity duration, telomere dynamics)
* **[`OmicsRiskAssessment`](StructureDefinition-omics-risk-assessment.md)** – Personalized risk scores derived from multi-omic signatures (telomere, cytokine, immune activation, cell-type shifts)
* **[`PersonalizedCountermeasurePlan`](StructureDefinition-personalized-countermeasure-plan.md)** – Links omics-derived risks to individualized interventions (exercise, nutrition, pharmacologic, sleep, radiation countermeasures)

**Supporting Profiles (suggested)**

* `SpaceBiobankSpecimen` – Biobanking metadata and future re-analysis tracking
* `OmicsRecoveryTrajectory` – Longitudinal recovery monitoring (persistent vs. transient changes)

### Candidate CodeSystems & ValueSets

* `SpaceOmicsPlatformCS` – (WGS, snRNA-seq, cfRNA, spatial-transcriptomics, untargeted-proteomics, etc.)
* `SpaceOmicsBiomarkerCS` – (telomere-length, IL6, CCL2, BDNF, m6A-methylation, etc.)
* `SpaceOmicsRiskCategoryVS` – (immune-activation, oxidative-stress, DNA-damage-response, longevity-pathways)
* `AstronautMissionContextVS` – (short-duration-high-altitude, long-duration-ISS, lunar-surface, Mars-transit)

## Architectural Alignment

SOMA data directly extends existing IG capabilities:

* **Radiation Exposure Tracking** – telomere length and DNA-damage signatures
* **Neurocognitive Monitoring** – cytokine/BDNF changes and immune-brain axis
* **Cardiovascular Countermeasures** – inflammatory and endothelial responses
* **Exercise & Metabolic Suppression** – energy-expenditure and recovery trajectories
* **ECLSS / Nutrition** – microbiome and metabolomics in closed-loop systems
* **Longitudinal Crew Health** – biobanking and personalized countermeasures

It enables a true **Precision Aerospace Medicine** layer for risk mitigation and autonomous operations on lunar/Mars missions.

## Next Steps / Open Items

* Publish example bundles (Inspiration4 multi-omics Observation + OmicsRiskAssessment)
* Link to SOMA portal and CAMbank in IG examples
* Integrate with NASA OSDR identifiers

## References

* [Overbey et al. (2024). The Space Omics and Medical Atlas (SOMA) and international astronaut biobank.**Nature**632, 1145–1154.](https://www.nature.com/articles/s41586-024-07639-y) DOI: 10.1038/s41586-024-07639-y
* [SOMA Portal](https://soma.weill.cornell.edu)
* [Cornell Aerospace Medicine Biobank (CAMbank)](https://cambank.weill.cornell.edu/#main)
* [NASA Open Science Data Repository (OSDR)](https://smce.nasa.gov/open-science-data-repository-osdr/)

