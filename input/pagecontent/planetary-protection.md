---
title: Planetary Protection
layout: default
---

### Overview

Planetary protection is the discipline of preventing forward contamination (Earth microbes carried to other celestial bodies) and backward contamination (extraterrestrial material returned to Earth). It is governed by the Committee on Space Research (COSPAR) Planetary Protection Policy and implemented through NASA Policy Directive NPD 8020.12 and mission-specific requirements.

Recent work on the survival of NASA-cleanroom microbial isolates under simulated space and Martian conditions (Chander et al., *Applied and Environmental Microbiology*, 2026) shows that organisms recovered from spacecraft assembly facilities can tolerate the very environments planetary protection is meant to keep them out of. That finding reinforces the need for standardized microbial monitoring, sterilization validation, and risk assessment for Artemis, Mars Sample Return, and future exploration missions. This page defines FHIR profiles to capture contamination conditions, risk assessments, sterilization procedures, and viability assays so that microbial control data can be consistently recorded, shared, and audited across international partners and commercial providers.

### COSPAR Planetary Protection Categories

COSPAR assigns each mission a category based on the target body and mission type, and the category determines how much bioburden control is required. The summary below follows the COSPAR Policy on Planetary Protection (2021 revision); the policy itself defines subcategories (for example IVa, IVb, IVc for Mars landers, and restricted versus unrestricted Earth return) that this guide encodes in the [Planetary Protection Category Code System](CodeSystem-planetary-protection-category-cs.html).

| Category | Description                              | Typical Missions                  |
|----------|------------------------------------------|-----------------------------------|
| I        | No protection required; target not of direct interest for chemical evolution or the origin of life | Flybys, orbiters, or landers to bodies such as the Sun or Mercury |
| II       | Minimal documentation; target of significant interest but with only a remote chance of contamination compromising future investigations | Missions to the Moon, Venus, comets, most asteroids |
| III      | Controlled contamination; flyby and orbiter missions to bodies of interest for chemical evolution or origin of life | Mars and Europa orbiters |
| IV       | Strict bioburden control; lander and probe missions to those same bodies (subcategories IVa–IVc) | Mars landers and rovers |
| V        | Earth-return missions; "restricted Earth return" requires containment of returned material | Sample return from Mars, Europa, Enceladus |

### Key Processes

Planetary protection in practice comes down to two activities: reducing the number of viable organisms on flight hardware, and measuring how many remain.

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

### FHIR Profiles and Extensions

#### Recommended Resources
- `Condition` – contamination diagnosis
- `RiskAssessment` – forward contamination probability
- `Procedure` – sterilization and cleaning actions
- `Observation` – microbial assay results
- `Specimen` – surface swabs, hardware samples, and environmental monitoring

#### Core Profiles

- **[Microbial Contamination Condition](StructureDefinition-microbial-contamination-condition.html)** – Records a detected or potential contamination event with:
  - COSPAR category (via the [Planetary Protection Category](StructureDefinition-planetary-protection-category.html) extension)
  - Affected spacecraft/hardware location
  - Contaminant type (bacterial spore, vegetative bacteria, fungal spore, biofilm)
  - Severity and mission impact

- **[Microbial Contamination Risk](StructureDefinition-microbial-contamination-risk.html)** – Captures forward or backward contamination risk assessment, including probability category, mitigation status, and COSPAR compliance level

- **[Sterilization Procedure](StructureDefinition-sterilization-procedure.html)** – Documents sterilization actions with:
  - Method (DHMR, VHP, UV, etc.)
  - Process parameters (temperature, duration, dose, concentration)
  - Pre- and post-sterilization verification
  - Hardware or surface targeted

- **[Microbial Viability Assay](StructureDefinition-microbial-viability-assay.html)** – Standardized assay results with:
  - Method (MPN, CFU, ATP, qPCR)
  - Quantitative counts
  - Contaminant identification (genus/species or taxon)
  - Sample source (surface swab, air, water, hardware)

#### Proposed Profiles (not yet defined)
- `PlanetaryProtectionSummary` – DiagnosticReport aggregating all assays and procedures for a mission element
- `SpacecraftBioburdenLog` – Longitudinal tracking of bioburden across assembly, integration, and test (AIT) phases

### Examples

The three example instances below walk one piece of Mars-bound hardware through the workflow: it is heat-sterilized, swabbed and cultured, and then assigned a contamination risk.

- [DHMR Sterilization at 125C/50hr](Procedure-Sterilization-DHMR-001.html) – a dry-heat microbial reduction run
- [Surface Swab CFU Assay](Observation-MicrobialAssay-SurfaceSwab-001.html) – the post-sterilization colony count
- [Mars Lander Contamination Risk](RiskAssessment-ContaminationRisk-MarsLander-001.html) – the resulting forward-contamination risk assessment

### Standardized Terminologies

- [Planetary Protection Category Code System](CodeSystem-planetary-protection-category-cs.html) and [Value Set](ValueSet-planetary-protection-category-vs.html) – COSPAR categories I through V
- [Sterilization Method Code System](CodeSystem-sterilization-method-cs.html) and [Value Set](ValueSet-sterilization-method-vs.html) – dhmr, vhp, uv-sterilization, gamma-irradiation, ethylene-oxide
- [Microbial Contaminant Type Code System](CodeSystem-microbial-contaminant-type-cs.html) and [Value Set](ValueSet-microbial-contaminant-type-vs.html) – bacterial-spore, vegetative-bacteria, fungal-spore, biofilm, viable-microbe

#### Proposed Terminology (not yet defined)
- `MicrobialAssayMethodCS` – assay method codes (mpn, cfu, atp, qpcr); the [Microbial Viability Assay](StructureDefinition-microbial-viability-assay.html) profile currently distinguishes methods through LOINC-coded components (most-probable-number count, colony count) rather than a local method code

### Architectural Alignment

This content directly supports and extends existing IG sections:
- [Space Agriculture](space-agriculture.html) (VEG-05 and hydroponics microbial control)
- [ECLSS](eclss.html) (closed-loop environmental monitoring)
- [Crew Evacuation and Emergency Response](crew-rescue.html) (toxic atmosphere / contamination events)
- [Radiation Exposure Tracking](radiation-tracking.html) (synergistic microbial/radiation monitoring)
- [Space Telemedicine](space-telemedicine.html) (ground consultation for contamination events)

It enables a unified Environmental Microbiology & Planetary Protection framework essential for sample-return missions, crewed Mars operations, and commercial planetary missions.

### References

- Chander AM, et al. Survival of NASA-cleanroom microbial isolates under simulated space and Martian conditions. *Applied and Environmental Microbiology*, 2026. [https://doi.org/10.1128/aem.02065-25](https://doi.org/10.1128/aem.02065-25)
- Committee on Space Research (COSPAR). *COSPAR Policy on Planetary Protection.* 2021 revision. [Policy page](https://cosparhq.cnes.fr/scientific-structure/ppp/); [PDF](https://cosparhq.cnes.fr/assets/uploads/2021/08/PPPolicy_2021_3.pdf)
- National Aeronautics and Space Administration. *Planetary Protection Provisions for Robotic Extraterrestrial Missions.* NASA Policy Directive NPD 8020.12D. [NPD 8020.12](https://nodis3.gsfc.nasa.gov/displayDir.cfm?t=NPD&c=8020&s=12D); [NASA Office of Planetary Protection](https://planetaryprotection.nasa.gov/)
- National Aeronautics and Space Administration. *NASA Planetary Protection Handbook and standards.* [https://planetaryprotection.nasa.gov/resources/sags/](https://planetaryprotection.nasa.gov/resources/sags/)
- Moissl-Eichinger C, Venkateswaran K, et al. Microbiome dynamics during spacecraft assembly, integration, and test operations. *Microbiome* 11, 2023. [https://doi.org/10.1186/s40168-023-01479-0](https://doi.org/10.1186/s40168-023-01479-0)
- National Academies of Sciences, Engineering, and Medicine. *Review and Assessment of Planetary Protection Policy Development Processes.* National Academies Press, 2018. [https://doi.org/10.17226/25172](https://doi.org/10.17226/25172)
- European Space Agency. *Planetary Protection.* [https://www.esa.int/Safety_Security/Planetary_Protection](https://www.esa.int/Safety_Security/Planetary_Protection)
- Venkateswaran K, Pierson DL, Singh NK. Non-culture-based assays for spacecraft microbial monitoring. *Microbial Ecology* 47:119–126, 2004. [https://doi.org/10.1007/s00248-003-1036-3](https://doi.org/10.1007/s00248-003-1036-3)
