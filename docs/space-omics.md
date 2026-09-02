# Space Omics - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Space Omics**

## Space Omics

### Overview

The **Space Omics and Medical Atlas (SOMA)** and international astronaut biobank represent a landmark open-science resource for aerospace medicine. Published in **Nature** in June 2024, SOMA integrates clinical, cellular, and multi-omic data from diverse missions—including the NASA Twins Study, JAXA Cell-Free Epigenome (CFE) study, SpaceX Inspiration4 (I4), Axiom, and Polaris—creating a more than ten-fold increase in publicly available human space omics data.

Over 2,911 biospecimens were banked from the Inspiration4 crew (3-day orbital mission at 585 km), with 1,194 processed across 13 sample types and 10 timepoints (pre-flight L-92/L-44/L-3, in-flight FD1–3, post-flight R+1, and recovery R+45/R+82/R+194). Matched samples are available through the Cornell Aerospace Medicine Biobank (CAMbank) for future analyses.

This page provides FHIR modeling guidance for capturing multi-omic profiles, molecular sequences, omics-derived risk assessments, and personalized countermeasure plans to support precision space medicine for Artemis, Mars, and exploration-class missions.

### Key Study Elements

**Cohorts & Design**

* Primary focus: Inspiration4 all-civilian crew (ages 29–51)
* Integrated with long-duration ISS data (Twins, JAXA) for cross-mission comparisons
* 13 biospecimen types (whole blood, serum, plasma, peripheral blood mononuclear cells, extracellular vesicles, urine, stool, skin biopsies, swabs, etc.)

**Omics Platforms Covered**

* Genomics / Epigenomics: whole-genome sequencing (WGS), cell-free DNA (cfDNA), single-nucleus ATAC-seq
* Transcriptomics: direct RNA-seq, single-nucleus RNA-seq, cell-free RNA (cfRNA), spatial transcriptomics
* Proteomics / Metabolomics: untargeted LC-MS/MS, chemokine/cytokine panels
* Immunomics: B-cell and T-cell receptor repertoire sequencing
* Microbiome: metagenomics and metatranscriptomics (oral, nasal, skin, gut)

**Signature Molecular Changes Observed**

* Telomere elongation during flight that reverses after return, a pattern first reported in the NASA Twins Study over a 340-day mission (Garrett-Bakelman et al., 2019) and reproduced in the Inspiration4 crew after only three days in orbit
* Cytokine shifts (increased IL-6, IL-10, CCL2; decreased BDNF; increased IL-19 post-flight)
* Immune cell gene expression (T-cell activation, monocyte-specific recovery trajectories)
* Cell-type proportion shifts (cfRNA: increased hepatocyte, kidney endothelial cell, and melanocyte signal)
* Recovery dynamics: most changes reverse, but some pathways (circadian, longevity) persist
* Mission-specific vs. universal responses (short high-altitude vs. long-duration ISS)

**Biobanking**

Cornell Aerospace Medicine Biobank (CAMbank) stores viably frozen specimens for ongoing and future multi-omic research. All data are publicly available via the NASA Open Science Data Repository (OSDR) and the SOMA portal (browsers for bulk/spatial omics, single-cell, and microbiome).

### FHIR Profiles and Extensions

#### Recommended Resources

* `Observation` – multi-omic results, cytokine panels, telomere length, gene expression
* `MolecularSequence` – genomic, transcriptomic, and epigenomic sequences
* `DiagnosticReport` – integrated omics summaries and risk assessments
* `Specimen` – biobanking provenance (CAMbank linkage)
* `CarePlan` / `ServiceRequest` – personalized countermeasure plans
* `ResearchStudy` / `ResearchSubject` – SOMA cohort tracking

#### Core Profiles

* **[Multi-Omics Observation](StructureDefinition-multi-omics-observation.md)** – Captures platform, read counts, quality metrics, and cross-omics correlations for any assay (genomics, proteomics, metabolomics, etc.)
* **[Space Molecular Sequence](StructureDefinition-space-molecular-sequence.md)** – Extends `MolecularSequence` with spaceflight context (mission phase, radiation exposure, microgravity duration, telomere dynamics)
* **[Omics Risk Assessment](StructureDefinition-omics-risk-assessment.md)** – Personalized risk scores derived from multi-omic signatures (telomere, cytokine, immune activation, cell-type shifts)
* **[Personalized Countermeasure Plan](StructureDefinition-personalized-countermeasure-plan.md)** – Links omics-derived risks to individualized interventions (exercise, nutrition, pharmacologic, sleep, radiation countermeasures)
* **[Biobank Location](StructureDefinition-biobank-location.md)** (extension) – Records where a specimen is banked so that a Specimen can be traced back to CAMbank or another repository

#### Proposed Profiles (not yet defined)

* `SpaceBiobankSpecimen` – Specimen profile with biobanking metadata and future re-analysis tracking; the Biobank Location extension on a plain `Specimen` covers the core need today
* `OmicsRecoveryTrajectory` – Longitudinal recovery monitoring (persistent vs. transient changes)

### Examples

* [Dried Blood Spot Specimen with Biobank Metadata](Specimen-DBS-Specimen-001.md)
* [Metabolomics Observation](Observation-Metabolomics-Observation-001.md)
* [Personalized Countermeasure Plan](CarePlan-PersonalizedPlan-001.md)

### Standardized Terminologies

* [Space Omics Type Code System](CodeSystem-space-omics-type-cs.md) and [Value Set](ValueSet-space-omics-type-vs.md) – genomics, transcriptomics, proteomics, metabolomics, epigenomics, microbiomics, lipidomics
* [Expanded Specimen Type Code System](CodeSystem-expanded-specimen-type-cs.md) and [Value Set](ValueSet-expanded-specimen-type-vs.md) – dried-blood-spot, extracellular-vesicle, nasal/skin/oral/gut microbiome samples, hair-follicle, exhaled-breath-condensate
* Mission context for an omics observation uses the shared [Mission Phase](CodeSystem-mission-phase-cs.md) and [Gravity Context](CodeSystem-gravity-context-cs.md) code systems rather than an omics-specific value set

#### Proposed Terminology (not yet defined)

* `SpaceOmicsPlatformCS` – specific assay platforms (WGS, snRNA-seq, cfRNA, spatial-transcriptomics, untargeted-proteomics); the Space Omics Type codes above cover the omics layer but not the platform
* `SpaceOmicsBiomarkerCS` – telomere-length, IL6, CCL2, BDNF, m6A-methylation, etc.; LOINC codes should be used where they exist
* `SpaceOmicsRiskCategoryVS` – immune-activation, oxidative-stress, DNA-damage-response, longevity-pathways

### Architectural Alignment

SOMA data directly extends existing IG capabilities:

* [Radiation Exposure Tracking](radiation-tracking.md) – telomere length and DNA-damage signatures
* [Neurocognitive Monitoring](neurocognitive-monitoring.md) – cytokine/BDNF changes and immune-brain axis
* [Cardiovascular Countermeasures](cardiovascular-countermeasures.md) – inflammatory and endothelial responses
* [Exercise](fitness.md) and [Metabolic Suppression](metabolic-hibernation.md) – energy-expenditure and recovery trajectories
* [ECLSS](eclss.md) / [Nutrition](nutrition.md) – microbiome and metabolomics in closed-loop systems
* Longitudinal Crew Health – biobanking and personalized countermeasures

It enables a precision aerospace medicine layer for risk mitigation and autonomous operations on lunar and Mars missions.

### References

* Overbey EG, et al. The Space Omics and Medical Atlas (SOMA) and international astronaut biobank. **Nature** 632:1145–1154, 2024. [https://doi.org/10.1038/s41586-024-07639-y](https://doi.org/10.1038/s41586-024-07639-y)
* Garrett-Bakelman FE, et al. The NASA Twins Study: A multidimensional analysis of a year-long human spaceflight. **Science** 364(6436):eaau8650, 2019. [https://doi.org/10.1126/science.aau8650](https://doi.org/10.1126/science.aau8650)
* [SOMA Portal](https://soma.weill.cornell.edu)
* [Cornell Aerospace Medicine Biobank (CAMbank)](https://cambank.weill.cornell.edu/#main)
* [NASA Open Science Data Repository (OSDR)](https://smce.nasa.gov/open-science-data-repository-osdr/)
* Scott RT, et al. Biomonitoring and precision health in deep space supported by artificial intelligence. **Nature Machine Intelligence** 5, 2023. [https://doi.org/10.1038/s42256-023-00617-5](https://doi.org/10.1038/s42256-023-00617-5)

