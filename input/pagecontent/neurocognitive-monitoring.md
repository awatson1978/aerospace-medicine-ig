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

## References

- Roberts, Donna R., Yiri E. Albrecht, Juan C. Collins, Rachel A. Asemani, and colleagues. “Prolonged Microgravity Affects Human Brain Structure and Function.” *American Journal of Neuroradiology* 40, no. 11 (2019): 1878–1885. [https://doi.org/10.3174/ajnr.A6249](https://doi.org/10.3174/ajnr.A6249).  

- Basner, Mathias, David F. Dinges, Nicholas Mollicone, Adrian Ecker, and colleagues. “Development and Validation of the Cognition Test Battery for Spaceflight.” *Aerospace Medicine and Human Performance* 86, no. 11 (2015): 942–952. [https://doi.org/10.3357/AMHP.4343.2015](https://doi.org/10.3357/AMHP.4343.2015).

- Basner, Mathias, Mathilde Savitt, David F. Dinges, and colleagues. “Cognition Test Battery: Performance Monitoring During Spaceflight Operations.” NASA Human Research Program Behavioral Health and Performance Element.

  - NASA HRP Behavioral Health & Performance: [https://www.nasa.gov/hrp/elements/bhp/](https://www.nasa.gov/hrp/elements/bhp/)  
  - Cognition Battery Overview: [https://bhp.nasa.gov/](https://bhp.nasa.gov/)  

- National Aeronautics and Space Administration Human Research Program. *Cognition Battery and Neurocognitive Monitoring During Spaceflight Operations.* NASA HRP Cognitive Functions presentation materials, including Polaris Dawn Psychomotor Vigilance Test (PVT) longitudinal observations.

- Lee, John K., Rachael D. Seidler, and colleagues. “The Effects of Long Duration Spaceflight on Sensorimotor Control and Cognition.” *Frontiers in Neural Circuits* 15 (2021). [https://doi.org/10.3389/fncir.2021.723504](https://doi.org/10.3389/fncir.2021.723504).  

- Cassady, Katelyn, Heather R. McGregor, and colleagues. “Sensory Network Segregation as a Predictor of Post-Spaceflight Balance Impairments and Sensory Re-weighting.” *npj Microgravity* (2025). [https://pubmed.ncbi.nlm.nih.gov/41309651/](https://pubmed.ncbi.nlm.nih.gov/41309651/).

- Yuan, Pengfei, and colleagues. “EEG Oscillations and Oxygen Saturation During Hypoxia Exposure.” *Human Brain Mapping* 45, no. 2 (2024). [https://doi.org/10.1002/hbm.26214](https://doi.org/10.1002/hbm.26214).

- Nature Reviews Neurology / The Lancet Neurology Editorial Group. “Effects of Spaceflight on the Brain.” *The Lancet Neurology* 23, no. 9 (2024). [https://doi.org/10.1016/S1474-4422(24)00224-2](https://doi.org/10.1016/S1474-4422(24)00224-2).

- National Aeronautics and Space Administration. *Behavioral Health and Performance Standard Measures.* NASA Human Research Program [https://www.nasa.gov/hrp/elements/bhp/](https://www.nasa.gov/hrp/elements/bhp/)  


