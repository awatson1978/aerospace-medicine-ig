## Neurocognitive Monitoring in Spaceflight

### Overview

Spaceflight induces structural and functional brain changes (cephalad fluid shift, ventricular enlargement, neuroplasticity) that can affect cognitive performance, psychomotor vigilance, and operational readiness. The NASA HRP Cognition test battery provides a standardized, brief, repeatable assessment of key cognitive domains. This page documents spaceflight-induced brain changes, the Cognition battery, key research results (including Polaris Dawn PVT data), and FHIR modeling for longitudinal neurocognitive tracking.

### Spaceflight Brain Changes

**Key physiologic effects:**
- Head-ward fluid shift and upward shift of the brain
- Increased ventricular volume (~10 %)
  - Brain tissue crowding at superior sagittal sinus (site of CSF reabsorption)
  - Twisting of the cerebral aqueduct (connects 4th and 3rd ventricle)
  - Changes not fully resolved 7–12 months post 6-month ISS missions
- Gray matter plasticity (primarily volume shifts, not tissue loss; largely resolved ~6 months post-mission)
- White matter changes suggestive of adaptive motor and balance control
- Elevated blood biomarkers of brain injury and degeneration
- Spaceflight Associated Neuro-Ocular Syndrome (SANS) — severity increases with mission duration

**Reference:**
D.R. Roberts et al. "Prolonged Microgravity Affects Human Brain Structure and Function." *American Journal of Neuroradiology* 2019 Nov 40(11):1878–1885.

### Cognition Test Battery

The Cognition battery consists of **10 brief, well-validated tests** (15–20 min total administration time) developed specifically for high-performing astronauts.

**Test Domains Covered:**

| Test | Domain |
|---|---|
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
- 15 unique versions for repeated administration
- Practice-effect corrections and stimulus-set controls
- Sensitivity to spaceflight stressors demonstrated
- Available on Windows, Apple iPad, and MRI (fCog) platforms
- Multilingual (English, French, German, Italian, Russian)
- Provides immediate feedback and performance history
- Part of NASA Behavioral Health & Performance (BHP) Standard Measures

**Reference:**
Basner, M. et al. "Development and validation of the Cognition test battery." *Aerospace Medicine and Human Performance* 2015 Vol. 86 Issue 11 Pages 942–952.

### Key Results — Cognition Accuracy and Speed

In-flight vs. pre-flight comparisons show statistically significant declines in several domains (z-score scale; slower/less accurate to faster/more accurate):

**Highlighted significant changes:**
- Psychomotor Vigilance Test (PVT) — Accuracy & Speed
- Digit Symbol Substitution (DSST) — Accuracy & Speed
- Motor Praxis (MP) — Accuracy & Speed

**Additional domains assessed:** BART, Matrix Reasoning (MRT), Emotion Recognition (ERT), Line Orientation (LOT), Abstract Matching (AM), Fractal 2-Back (F2B), Visual Object Learning (VOLT).

These decrements are operationally relevant for EVA tasks, docking, robotic operations, navigation, and emergency response.

### Polaris Dawn PVT Individual Response Data

Longitudinal Psychomotor Vigilance Testing demonstrates individualized neurocognitive trajectories:

- **Pre-Flight:** N = 5 PVTs
- **In-Flight:** N = 3 PVTs (FH8, FH71, FH92)
- **Post-Flight:** N = 2 PVTs (R+4h, R+39)

**Units:** milliseconds (reaction time).
This dataset illustrates the value of repeated measures across mission phases for personalized risk modeling and operational readiness.

### Longitudinal Monitoring Implications

Repeated Cognition and PVT testing supports:
- Baseline / in-flight / post-flight Observation series
- Mission-phase tagging
- Time-series neurocognitive analytics
- Fatigue and vigilance risk modeling
- Operational readiness dashboards

### FHIR Implementation Guidance

#### Recommended Resources

- `Questionnaire` / `QuestionnaireResponse`
- `Observation`
- `DiagnosticReport`
- `Condition`
- `ImagingStudy`
- `BodyStructure`

#### New Profiles (suggested)

**Core**
- `SpaceflightCognitionBattery`
- `PsychomotorVigilanceObservation`
- `ExecutiveFunctionAssessment`
- `NeurobehavioralAssessment`

**Structural / Biomarker**
- `SpaceflightBrainMRI`
- `WhiteMatterAssessment`
- `NeurodegenerationBiomarker`
- `CSFShiftObservation`
- `NeurovestibularAssessment`
- `SANSAssessment`
- `OperationalReadinessAssessment`

#### Suggested ValueSets / CodeSystems

- `CognitiveTestCategoryVS`
- `NeurocognitiveDomainVS`
- `NeurobehavioralOperationalStateVS`
- `MissionPhaseCS` (pre-flight, ascent, inflight, EVA, transit, docking, reentry, recovery, post-flight-acute, post-flight-longitudinal)

#### Example Use Cases

- Series of `Observation` resources linked to a `QuestionnaireResponse` from the Cognition battery
- Longitudinal `DiagnosticReport` summarizing PVT trajectories tagged by mission phase

### Architectural Alignment

This content extends existing IG patterns for longitudinal physiologic monitoring and operational risk management. It integrates naturally with:
- Radiation Exposure Tracking
- Sleep & Fatigue Monitoring
- Vestibular Adaptation
- Behavioral Health / Mental Health
- EVA Workload Assessment

It supports the broader **Environmental Exposure + Physiologic Countermeasure** framework and real-time operational readiness analytics.

### Next Steps / Open Items

- Add example FHIR instances (Cognition battery Questionnaire + PVT Observation bundle)
- Publish new ValueSets for cognitive domains and mission phases
- Link to related profiles (SANS, cephalad fluid shift)

### References

- NASA HRP Cognitive Functions slides (Cognition battery & Polaris Dawn data)
- Roberts et al. (2019) AJNR
- Basner et al. (2015) Aerospace Medicine and Human Performance
- Aerospace Medicine FHIR IG (MITRE)
