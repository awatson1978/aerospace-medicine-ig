---
title: Blood Flow Restriction Training
layout: default
---

### Overview

Blood Flow Restriction Training (BFRT) applies controlled occlusion to limbs during low-load resistance exercise, inducing metabolic stress and muscle hypertrophy with significantly reduced mechanical load and equipment mass. In microgravity, where traditional high-load resistance exercise is constrained by vehicle mass and power limits, BFRT offers a promising countermeasure against muscle atrophy and bone loss.

A 2025 review in *npj Microgravity* (Hu et al.) and related Human Research Program (HRP) studies summarize evidence that BFRT can help preserve muscle cross-sectional area (CSA), bone turnover biomarkers (P1NP, CTX), and muscle thickness with minimal hardware. This page defines FHIR profiles to standardize BFRT device configurations, session procedures, prescribed protocols, outcome measurements, and integrated care plans.

### Key Physiologic Rationale

- Low-load exercise (20–30% of one-repetition maximum, 1RM) combined with occlusion (40–80% of limb occlusion pressure) triggers anabolic signaling comparable to high-load training (Hu et al., 2025; Hackney et al., 2019)
- Sex-specific adaptations (e.g., cuff pressure, session volume) are important in microgravity because of fluid shifts and cardiovascular deconditioning
- Dual benefit: muscle preservation plus bone loading with reduced injury risk

### FHIR Profiles and Extensions

#### Recommended Resources
- `Device` – occlusion cuffs and monitoring hardware
- `Procedure` – individual BFRT sessions
- `ActivityDefinition` – standardized protocols
- `Observation` – outcome metrics (CSA, biomarkers, thickness)
- `CarePlan` – integrated countermeasure regimen

#### Core Profiles

- **[BFRT Device](StructureDefinition-bfrt-device.html)** – Extends `Device` with:
  - Cuff type (pneumatic, intelligent, elastic wrap)
  - Limb (upper/lower), target occlusion pressure, safety limits
  - Integrated sensors (pressure, heart rate, EMG)

- **[BFRT Procedure](StructureDefinition-bfrt-procedure.html)** – Documents a single BFRT session with:
  - Occlusion pressure (via the [Occlusion Pressure](StructureDefinition-occlusion-pressure.html) extension), inflation/deflation timing, exercise modality
  - Gravity context (microgravity, lunar, Martian)
  - Real-time monitoring and adverse event flags

- **[BFRT Activity Definition](StructureDefinition-bfrt-activity-definition.html)** – Prescribed protocol template with:
  - Sex-specific adaptations (via the [Sex-Specific Protocol](StructureDefinition-sex-specific-protocol.html) extension: cuff pressure, load, volume)
  - Session frequency, duration, progression rules
  - Integration with traditional resistance or aerobic exercise

- **[BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.html)** – Standardized results including:
  - Muscle cross-sectional area (CSA)
  - Bone biomarkers (P1NP, CTX)
  - Muscle thickness (ultrasound)
  - Strength/endurance metrics

- **[BFRT Care Plan](StructureDefinition-bfrt-care-plan.html)** – Links BFRT activities into a comprehensive countermeasure plan addressing muscle atrophy and bone loss, with goals, monitoring schedule, and contingency rules

#### Proposed Profiles (not yet defined)
- `BFRTSessionBundle` – Composite of procedure, outcomes, and device data for a single session

### Examples

The four example instances describe a pneumatic cuff, the low-load protocol it is used with, one lower-body session, and the quadriceps CSA measurement used to track the outcome.

- [BFRT Pneumatic Cuff Device](Device-BFRT-Pneumatic-Cuff-001.html)
- [Low-Load BFRT Protocol](ActivityDefinition-BFRT-Protocol-LowLoad-001.html)
- [Lower Body BFRT Session](Procedure-BFRT-LowerBody-Session-001.html)
- [Quadriceps CSA Outcome](Observation-BFRT-Quadriceps-CSA-001.html)

### Standardized Terminologies

- [BFRT Protocol Code System](CodeSystem-bfrt-protocol-cs.html) and [Value Set](ValueSet-bfrt-protocol-vs.html) – intermittent-bfrt, continuous-bfrt, auto-regulated-bfrt, low-load-bfrt (20–30% 1RM), moderate-load-bfrt (40–50% 1RM)
- [BFRT Outcome Code System](CodeSystem-bfrt-outcome-cs.html) and [Value Set](ValueSet-bfrt-outcome-vs.html) – muscle-csa, p1np, ctx, limb-occlusion-pressure, rep-max-1rm, muscle-thickness, vascular-compliance
- [BFRT Device Type Code System](CodeSystem-bfrt-device-type-cs.html) and [Value Set](ValueSet-bfrt-device-type-vs.html) – pneumatic-cuff, intelligent-pressure-cuff, elastic-wrap

#### Proposed Terminology (not yet defined)
- `BFRTExerciseModalityVS` – low-load-resistance, aerobic, hybrid; the protocol codes above distinguish load but not modality
- `BoneBiomarkerVS` – p1np, ctx, sclerostin, etc.; the BFRT Outcome codes cover P1NP and CTX today and LOINC codes should be preferred where available
- `BFRTOcclusionPressureCategoryVS` – banded occlusion pressure (40–60%, 60–80% of limb occlusion pressure); the numeric value is already carried by the Occlusion Pressure extension

### Architectural Alignment

This content directly extends existing IG sections:
- [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) (venous hemodynamics during occlusion, lower body negative pressure)
- [Fitness](fitness.html) (strength/endurance assessments)
- [Metabolic Suppression](metabolic-hibernation.html) (resource-efficient countermeasures)
- Crew Health Monitoring (longitudinal biomarker tracking)

It contributes to a unified physiologic countermeasure framework optimized for mass- and power-constrained exploration vehicles.

### References

- Hu M, Li Y, et al. Blood flow restriction training in microgravity: a review of multisystem physiological benefits and implementation challenges for long-duration space missions. *npj Microgravity* 11, 2025. [https://doi.org/10.1038/s41526-025-00515-7](https://doi.org/10.1038/s41526-025-00515-7)
- Scott JM, et al. High-Intensity Exercise With Blood Flow Restriction or in Hypoxia as Valuable Spaceflight Countermeasures? *Frontiers in Physiology* 10:1266, 2019. [https://doi.org/10.3389/fphys.2019.01266](https://doi.org/10.3389/fphys.2019.01266)
- Hackney KJ, et al. Application of Blood Flow Restriction to Optimize Exercise Countermeasures for Human Space Flight. *Frontiers in Physiology* 10:33, 2019. [https://doi.org/10.3389/fphys.2019.00033](https://doi.org/10.3389/fphys.2019.00033)
