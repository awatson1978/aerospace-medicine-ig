# Planetary Protection - v0.6.0

* [**Table of Contents**](toc.md)
* **Planetary Protection**

## Planetary Protection

# Planetary Protection

## Overview

Planetary protection is the discipline of preventing forward contamination (Earth microbes to other celestial bodies) and backward contamination (extraterrestrial material to Earth). It is governed by the COSPAR Planetary Protection Policy and implemented through NASA’s NPD 8020.12 and mission-specific requirements.

Recent work (Fujimura et al., **Applied and Environmental Microbiology**, April 2026) advances standardized microbial monitoring, sterilization validation, and risk assessment for Artemis, Mars Sample Return, and future exploration missions. This page defines FHIR profiles to capture contamination conditions, risk assessments, sterilization procedures, and viability assays so that microbial control data can be consistently recorded, shared, and audited across international partners and commercial providers.

## COSPAR Planetary Protection Categories

| Category | Description | Typical Missions | |———-|——————————————|———————————–| | I | No protection required | Flybys of bodies with no interest | | II | Minimal protection | Flybys of bodies of interest | | III | Controlled contamination | Orbiters / landers (no life search) | | IV | Strict bioburden control | Mars landers / sample return | | V | Restricted Earth return | Sample return from Mars / Europa |

## Key Processes

**Sterilization Methods**

* Dry Heat Microbial Reduction (DHMR)
* Vapor Hydrogen Peroxide (VHP)
* Ultraviolet (UV) irradiation
* Chemical wipes and cleaning protocols

**Microbial Viability Assays**

* Most Probable Number (MPN)
* Colony Forming Units (CFU)
* ATP bioluminescence
* Molecular (qPCR) and culture-independent methods

## FHIR Implementation Guidance

### Recommended Resources

* `Condition` – contamination diagnosis
* `RiskAssessment` – forward contamination probability
* `Procedure` – sterilization and cleaning actions
* `Observation` – microbial assay results
* `Specimen` – surface swabs, hardware samples, and environmental monitoring

### New Profiles (suggested)

**Core Profiles**

* **[`MicrobialContaminationCondition`](StructureDefinition-microbial-contamination-condition.md)** – Records a detected or potential contamination event with: 
* COSPAR category
* Affected spacecraft/hardware location
* Contaminant type (bacterial, fungal, viral, etc.)
* Severity and mission impact
 
* **[`MicrobialContaminationRisk`](StructureDefinition-microbial-contamination-risk.md)** – Captures forward or backward contamination risk assessment, including probability category, mitigation status, and COSPAR compliance level
* **[`SterilizationProcedure`](StructureDefinition-sterilization-procedure.md)** – Documents sterilization actions with: 
* Method (DHMR, VHP, UV, etc.)
* Process parameters (temperature, duration, dose, concentration)
* Pre- and post-sterilization verification
* Hardware or surface targeted
 
* **[`MicrobialViabilityAssay`](StructureDefinition-microbial-viability-assay.md)** – Standardized assay results with: 
* Method (MPN, CFU, ATP, qPCR)
* Quantitative counts
* Contaminant identification (genus/species or taxon)
* Sample source (surface swab, air, water, hardware)
 

**Supporting Profiles (suggested)**

* `PlanetaryProtectionSummary` – DiagnosticReport aggregating all assays and procedures for a mission element
* `SpacecraftBioburdenLog` – Longitudinal tracking of bioburden across assembly, integration, and test (AIT) phases

### Candidate CodeSystems & ValueSets

* `COSPARCategoryCS` – I through V (with subcategories)
* [`SterilizationMethodCS`](CodeSystem-sterilization-method-cs.md) – (dhmr, vhp, uv, chemical-cleaning, etc.)
* `MicrobialAssayMethodCS` – (mpn, cfu, atp, qpcr)
* `PlanetaryProtectionContaminantTypeVS` – (bacterial-spore, vegetative-bacteria, fungal, viral, archaea)

## Architectural Alignment

This content directly supports and extends existing IG sections:

* **Space Agriculture Microbiology** (VEG-05 and hydroponics microbial control)
* **ECLSS** (closed-loop environmental monitoring)
* **Crew Evacuation and Emergency Response** (toxic atmosphere / contamination events)
* **Radiation Exposure Tracking** (synergistic microbial/radiation monitoring)
* **Telemedicine** (ground consultation for contamination events)

It enables a unified **Environmental Microbiology & Planetary Protection** framework essential for sample-return missions, crewed Mars operations, and commercial planetary missions.

## References

## References

* Fujimura, Kazuyuki, and colleagues. “Planetary Protection Microbial Monitoring and Control for Artemis and Beyond.” **Applied and Environmental Microbiology** 92, no. 4 (2026). American Society for Microbiology.
* Committee on Space Research (COSPAR). **COSPAR Planetary Protection Policy.** 2021 Revision. Paris: COSPAR, 2021.
* National Aeronautics and Space Administration. **Planetary Protection Provisions for Robotic Extraterrestrial Missions.** NASA Policy Directive NPD 8020.12D. Washington, DC: NASA.
* National Aeronautics and Space Administration. **NASA Planetary Protection Handbook.** Washington, DC: NASA Office of Safety and Mission Assurance. [https://planetaryprotection.nasa.gov/resources/sags/](https://planetaryprotection.nasa.gov/resources/sags/)
* Moissl-Eichinger, Christine, Kasthuri Venkateswaran, and colleagues. “Microbiome Dynamics During Spacecraft Assembly, Integration, and Test Operations.” **Microbiome** 11 (2023). [https://doi.org/10.1186/s40168-023-01479-0](https://doi.org/10.1186/s40168-023-01479-0).
* Mora, Marc, and colleagues. “Survival of NASA-Cleanroom Microbial Isolates Under Simulated Space and Martian Conditions.” **Applied and Environmental Microbiology** 92, no. 2 (2026). [https://doi.org/10.1128/aem.02065-25](https://doi.org/10.1128/aem.02065-25).
* National Academies of Sciences, Engineering, and Medicine. **Review and Assessment of Planetary Protection Policy Development Processes.** Washington, DC: National Academies Press, 2018. [https://doi.org/10.17226/25172](https://doi.org/10.17226/25172).
* European Space Agency. **Planetary Protection Requirements and Contamination Control for Exploration Missions.** Noordwijk, Netherlands: ESA. [https://www.esa.int/Safety_Security/Planetary_Protection](https://www.esa.int/Safety_Security/Planetary_Protection)
* Venkateswaran, Kasthuri, Duane L. Pierson, and Nitin K. Singh. “Non-Culture-Based Assays for Spacecraft Microbial Monitoring.” **Microbial Ecology** 47 (2004): 119–126. [https://doi.org/10.1007/s00248-003-1036-3](https://doi.org/10.1007/s00248-003-1036-3).

