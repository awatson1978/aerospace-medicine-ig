# Neurocognitive Monitoring - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Neurocognitive Monitoring**

## Neurocognitive Monitoring

### Overview

Spaceflight induces structural and functional brain changes (cephalad fluid shift, ventricular enlargement, neuroplasticity) that can affect cognitive performance, psychomotor vigilance, and operational readiness. The NASA Human Research Program Cognition test battery provides a standardized, brief, repeatable assessment of key cognitive domains. This page documents spaceflight-induced brain changes, the Cognition battery, key research results, and FHIR modeling for longitudinal neurocognitive tracking.

### Spaceflight Brain Changes

**Key physiologic effects:**

* Head-ward fluid shift and upward shift of the brain
* Increased ventricular volume (~10%) 
* Brain tissue crowding at superior sagittal sinus (site of cerebrospinal fluid reabsorption)
* Twisting of the cerebral aqueduct (connects the 4th and 3rd ventricle)
* Changes not fully resolved 7-12 months after 6-month ISS missions
 
* Gray matter plasticity (primarily volume shifts, not tissue loss; largely resolved ~6 months post-mission)
* White matter changes suggestive of adaptive motor and balance control
* Elevated blood biomarkers of brain injury and degeneration
* Spaceflight Associated Neuro-Ocular Syndrome (SANS) — severity increases with mission duration

These findings come from Roberts et al. (2019), which compared pre- and post-flight MRI in long-duration crews; the full citation is in the References section below.

### Cognition Test Battery

The Cognition battery consists of **10 brief, well-validated tests** (15-20 min total administration time) developed specifically for high-performing astronauts. Each test targets a different cognitive domain, so a crewmember's profile can be read as a shape rather than a single score.

**Test Domains Covered:**

| | |
| :--- | :--- |
| Emotion Recognition | Affective processing |
| Matrix Reasoning | Executive function / abstract reasoning |
| Digit Symbol Substitution (DSST) | Processing speed |
| Balloon Analog Risk Task (BART) | Risk behavior / decision making |
| Psychomotor Vigilance (PVT) | Attention / fatigue |
| Motor Praxis (MP) | Motor coordination |
| Visual Object Learning (VOLT) | Memory / visual learning |
| Fractal 2-Back (F2B) | Working memory |
| Abstract Matching (AM) | Cognitive flexibility |
| Line Orientation (LOT) | Spatial orientation |

**Features:**

* 15 unique versions for repeated administration
* Practice-effect corrections and stimulus-set controls
* Sensitivity to spaceflight stressors demonstrated
* Available on Windows, Apple iPad, and MRI (fCog) platforms
* Multilingual (English, French, German, Italian, Russian)
* Provides immediate feedback and performance history
* Part of NASA Behavioral Health and Performance (BHP) Standard Measures

The battery's development and validation are described in Basner et al. (2015), cited in full below.

### Key Results — Cognition Accuracy and Speed

In-flight versus pre-flight comparisons show statistically significant declines in several domains (reported on a z-score scale running from slower/less accurate to faster/more accurate):

**Highlighted significant changes:**

* Psychomotor Vigilance Test (PVT) — Accuracy and Speed
* Digit Symbol Substitution (DSST) — Accuracy and Speed
* Motor Praxis (MP) — Accuracy and Speed

**Additional domains assessed:** BART, Matrix Reasoning (MRT), Emotion Recognition (ERT), Line Orientation (LOT), Abstract Matching (AM), Fractal 2-Back (F2B), Visual Object Learning (VOLT).

These decrements are operationally relevant for EVA tasks, docking, robotic operations, navigation, and emergency response.

### Polaris Dawn PVT Individual Response Data

Repeated Psychomotor Vigilance Testing across the Polaris Dawn mission — five pre-flight, three in-flight, and two post-flight administrations per crewmember — showed that reaction-time trajectories were individual rather than uniform across the crew. The published summary reports the pattern qualitatively; per-subject reaction times in milliseconds are not given, which is itself the argument for capturing each administration as a discrete Observation instead of a mission-level average.

### Longitudinal Monitoring Implications

Repeated Cognition and PVT testing supports:

* Baseline / in-flight / post-flight Observation series
* Mission-phase tagging
* Time-series neurocognitive analytics
* Fatigue and vigilance risk modeling
* Operational readiness dashboards

### FHIR Implementation Guidance

#### Recommended Resources

* `Questionnaire` / `QuestionnaireResponse`
* `Observation`
* `DiagnosticReport`
* `Condition`
* `ImagingStudy`
* `BodyStructure`

#### FHIR Profiles and Extensions

Three artifacts defined elsewhere in this guide already carry part of this domain:

* [SANSAssessment](StructureDefinition-sans-assessment.md) - Spaceflight-Associated Neuro-ocular Syndrome assessment, including OCT and OCT-A findings.
* [VestibularAssessment](StructureDefinition-vestibular-assessment.md) - an extension linking a procedure to inner-ear and balance function observations.
* [MissionPhase](StructureDefinition-mission-phase.md) - the shared extension used to tag each administration with its mission phase.

##### Proposed Profiles (not yet defined)

The neurocognitive profiles below are design intent for a future ballot cycle. None are defined in FSH yet, so none are linkable.

**Core**

* `SpaceflightCognitionBattery` - a QuestionnaireResponse or panel Observation representing one complete administration of the 10-test Cognition battery.
* `PsychomotorVigilanceObservation` - a single PVT administration with reaction time, lapses, and false starts.
* `ExecutiveFunctionAssessment` - matrix reasoning, abstract matching, and 2-back results grouped as an executive-function panel.
* `NeurobehavioralAssessment` - a summary observation combining cognitive results with fatigue and mood context.

**Structural / Biomarker**

* `SpaceflightBrainMRI` - an ImagingStudy profile for pre/post-flight structural MRI with ventricular volume measures.
* `WhiteMatterAssessment` - diffusion-derived white matter metrics.
* `NeurodegenerationBiomarker` - blood biomarkers of brain injury and degeneration (for example neurofilament light chain).
* `CSFShiftObservation` - cerebrospinal fluid distribution and aqueduct geometry measures.
* `OperationalReadinessAssessment` - a derived readiness state combining cognitive, sleep, and workload inputs.

##### Proposed Terminology (not yet defined)

* `CognitiveTestCategoryVS` - a value set naming the ten Cognition battery tests. The existing [CognitivePerformanceIndicatorsVS](ValueSet-cognitive-performance-indicators-vs.md) covers the derived performance indicators but not the test identifiers themselves.
* `NeurocognitiveDomainVS` - a value set for the underlying domains (attention, processing speed, working memory, spatial orientation).
* `NeurobehavioralOperationalStateVS` - readiness states derived from the above.

Mission-phase tagging does not need a new code system: use the existing [MissionPhaseCS](CodeSystem-mission-phase-cs.md), which already carries pre-flight, launch-ascent, transit, orbital-ops, surface-ops, and post-flight phases.

#### Example Use Cases

* Series of `Observation` resources linked to a `QuestionnaireResponse` from the Cognition battery
* Longitudinal `DiagnosticReport` summarizing PVT trajectories tagged by mission phase

### Architectural Alignment

This content extends existing IG patterns for longitudinal physiologic monitoring and operational risk management. It integrates naturally with:

* Radiation Exposure Tracking
* Sleep and Fatigue Monitoring
* Vestibular Adaptation
* Behavioral Health / Mental Health
* EVA Workload Assessment

It supports the broader **Environmental Exposure + Physiologic Countermeasure** framework and real-time operational readiness analytics.

### References

* Roberts DR, et al. "Prolonged Microgravity Affects Human Brain Structure and Function." **American Journal of Neuroradiology** 40, no. 11 (2019): 1878-1885. [https://doi.org/10.3174/ajnr.A6249](https://doi.org/10.3174/ajnr.A6249)
* Basner M, Savitt A, Moore TM, et al. "Development and Validation of the Cognition Test Battery for Spaceflight." **Aerospace Medicine and Human Performance** 86, no. 11 (2015): 942-952. [https://doi.org/10.3357/AMHP.4343.2015](https://doi.org/10.3357/AMHP.4343.2015)
* NASA Human Research Program. **Cognition Battery and Neurocognitive Monitoring During Spaceflight Operations.** NASA HRP Behavioral Health and Performance Element, including Polaris Dawn Psychomotor Vigilance Test longitudinal observations. [https://www.nasa.gov/hrp/elements/bhp/](https://www.nasa.gov/hrp/elements/bhp/)
* Lee JK, Seidler RD, et al. "The Effects of Long Duration Spaceflight on Sensorimotor Control and Cognition." **Frontiers in Neural Circuits** 15 (2021). [https://doi.org/10.3389/fncir.2021.723504](https://doi.org/10.3389/fncir.2021.723504)
* Cassady K, McGregor HR, et al. "Sensory Network Segregation as a Predictor of Post-Spaceflight Balance Impairments and Sensory Re-weighting." **npj Microgravity** (2025). [https://pubmed.ncbi.nlm.nih.gov/41309651/](https://pubmed.ncbi.nlm.nih.gov/41309651/)
* Yuan P, et al. "EEG Oscillations and Oxygen Saturation During Hypoxia Exposure." **Human Brain Mapping** 45, no. 2 (2024). [https://doi.org/10.1002/hbm.26214](https://doi.org/10.1002/hbm.26214)
* "Effects of spaceflight on the brain." **The Lancet Neurology** 23, no. 9 (2024). [https://www.thelancet.com/journals/laneur/article/PIIS1474-4422%2824%2900224-2/abstract](https://www.thelancet.com/journals/laneur/article/PIIS1474-4422%2824%2900224-2/abstract)
* NASA. **Behavioral Health and Performance Standard Measures.** NASA Human Research Program. [https://www.nasa.gov/hrp/elements/bhp/](https://www.nasa.gov/hrp/elements/bhp/)

