---
title: Planetary Protection
layout: default
---

# Planetary Protection

## Overview
Planetary protection is the discipline of preventing forward contamination (Earth microbes to other celestial bodies) and backward contamination (extraterrestrial material to Earth). It is governed by the COSPAR Planetary Protection Policy and implemented through NASA’s NPD 8020.12 and mission-specific requirements.

Recent work (Fujimura et al., *Applied and Environmental Microbiology*, April 2026) advances standardized microbial monitoring, sterilization validation, and risk assessment for Artemis, Mars Sample Return, and future exploration missions. This page defines FHIR profiles to capture contamination conditions, risk assessments, sterilization procedures, and viability assays so that microbial control data can be consistently recorded, shared, and audited across international partners and commercial providers.

## COSPAR Planetary Protection Categories
| Category | Description                              | Typical Missions                  |
|----------|------------------------------------------|-----------------------------------|
| I        | No protection required                   | Flybys of bodies with no interest |
| II       | Minimal protection                       | Flybys of bodies of interest      |
| III      | Controlled contamination                 | Orbiters / landers (no life search) |
| IV       | Strict bioburden control                 | Mars landers / sample return      |
| V        | Restricted Earth return                  | Sample return from Mars / Europa  |

## Key Processes
**Sterilization Methods**  
- Dry Heat Microbial Reduction (DHMR)  
- Vapor Hydrogen Peroxide (VHP)  
- Ultraviolet (UV) irradiation  
- Chemical wipes and cleaning protocols  

**Microbial Viability Assays**  
- Most Probable Number (MPN)  
- Colony Forming Units (CFU)  
- ATP bioluminescence  
- Molecular (qPCR) and culture-independent methods  

## FHIR Implementation Guidance

### Recommended Resources
- `Condition` – contamination diagnosis  
- `RiskAssessment` – forward contamination probability  
- `Procedure` – sterilization and cleaning actions  
- `Observation` – microbial assay results  
- `Specimen` – surface swabs, hardware samples, and environmental monitoring

### New Profiles (suggested)
**Core Profiles**
- **`MicrobialContaminationCondition`** – Records a detected or potential contamination event with:
  - COSPAR category
  - Affected spacecraft/hardware location
  - Contaminant type (bacterial, fungal, viral, etc.)
  - Severity and mission impact

- **`MicrobialContaminationRisk`** – Captures forward or backward contamination risk assessment, including probability category, mitigation status, and COSPAR compliance level

- **`SterilizationProcedure`** – Documents sterilization actions with:
  - Method (DHMR, VHP, UV, etc.)
  - Process parameters (temperature, duration, dose, concentration)
  - Pre- and post-sterilization verification
  - Hardware or surface targeted

- **`MicrobialViabilityAssay`** – Standardized assay results with:
  - Method (MPN, CFU, ATP, qPCR)
  - Quantitative counts
  - Contaminant identification (genus/species or taxon)
  - Sample source (surface swab, air, water, hardware)

**Supporting Profiles (suggested)**
- `PlanetaryProtectionSummary` – DiagnosticReport aggregating all assays and procedures for a mission element
- `SpacecraftBioburdenLog` – Longitudinal tracking of bioburden across assembly, integration, and test (AIT) phases

### Candidate CodeSystems & ValueSets
- `COSPARCategoryCS` – I through V (with subcategories)
- `SterilizationMethodCS` – (dhmr, vhp, uv, chemical-cleaning, etc.)
- `MicrobialAssayMethodCS` – (mpn, cfu, atp, qpcr)
- `PlanetaryProtectionContaminantTypeVS` – (bacterial-spore, vegetative-bacteria, fungal, viral, archaea)

## Architectural Alignment
This content directly supports and extends existing IG sections:
- **Space Agriculture Microbiology** (VEG-05 and hydroponics microbial control)
- **ECLSS** (closed-loop environmental monitoring)
- **Crew Evacuation and Emergency Response** (toxic atmosphere / contamination events)
- **Radiation Exposure Tracking** (synergistic microbial/radiation monitoring)
- **Telemedicine** (ground consultation for contamination events)

It enables a unified **Environmental Microbiology & Planetary Protection** framework essential for sample-return missions, crewed Mars operations, and commercial planetary missions.

## References
- Fujimura et al. (2026). “Planetary Protection Microbial Monitoring and Control for Artemis and Beyond.” *Applied and Environmental Microbiology*, April 2026.
- COSPAR Planetary Protection Policy (2021 revision)
- NASA Planetary Protection Policy (NPD 8020.12)
- NASA Planetary Protection Handbook

---

**Ready to drop in.** This version is concise, operationally focused, and directly expands your four profiles while giving the page real substance. It feels like a natural peer to the other environmental / microbiology pages we’ve done.

Claude can merge it into the Astronaut Health / Environmental Health section whenever the rest of the content is ready.

Want me to generate FSH stubs for these four profiles next, or shall we keep rolling with more stubs? Your call. 🌍🚀