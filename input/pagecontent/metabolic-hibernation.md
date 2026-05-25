## Metabolic Suppression and Therapeutic Hibernation

### Overview

Long-duration missions (Mars transit, lunar shelters, submarine analogs) face severe constraints on mass, power, and life-support consumables. NASA HRP is exploring pharmacologic and sleep-based metabolic suppression as countermeasures to reduce daily energy expenditure, oxygen consumption, and CO₂ production — effectively extending mission endurance during nominal operations or catastrophic life-support failures.

This page documents the operational rationale, alpha-2 adrenergic agonist pharmacology, human study findings, and FHIR modeling for implementing metabolic suppression protocols in aerospace medicine.

### Operational Scenarios

**Resource conservation for long-duration missions**
- Nominal daily requirement: ~3000 kcal/day (~1.2 kg food), 350 L CO₂ scrubbing/day, 400 L O₂/day
- Goal: meaningfully reduce these demands

**Catastrophic life-support failure**
- Return or rescue time (4 days) exceeds available supplies or scrubbing capability (3 days)
- Applicable to: Mars transit, submarine operations, lunar shelters, polar expedition analogs

### Pharmacologic Approach: Alpha-2 Adrenergic Agonists

FDA-approved agents with minimal respiratory depression and possible subcutaneous administration:

| Drug | Route | Dose | Half-life | Approved Use |
|---|---|---|---|---|
| Dexmedetomidine | IV | 1.0 µg/kg | 2 hrs | Sedative |
| Dexmedetomidine | Nasal | 1.0 µg/kg | 2 hrs | Sedative |
| Dexmedetomidine | Oral | 4.0 µg/kg | 2 hrs | Sedative |
| Tizanidine | Oral | 8–16 mg | 1.2–2 hrs | Muscle Relaxant |
| Clonidine | Oral | 0.2–0.3 mg | 12–16 hrs | Blood Pressure Control |
| Lofexidine | Oral | 0.72 mg | 11 hrs | Opioid Withdrawal |

**Supporting Research**
- Alpha-2-adrenergic agonists reduce resting energy expenditure in humans during external cooling
- Sustained metabolic reduction and hypothermia in humans
- TRISH grant support: NNX16AO69A

### Metabolic Suppression Findings

**6-hour suppression**
- ~200–400 kcal/day equivalent reduction

**One-day infusion**
- ~30 % energy expenditure reduction
- Core temperature reduction ~1.0 °C

**Five-day suppression**
- Predicted: 41 % reduction
- Observed/estimated: 36 % reduction
- Placebo comparison: 13 % reduction

**Core temperature effect**
- Reductions approached –1.5 °C

### Sleep-Based Metabolic Suppression

**Concept**
- Baseline sleep ≈ 30 % of day
- Awake expenditure ≈ 1.35× sleep expenditure
- Experimental target: increase sleep to ~80 % of day
- Projected: substantial daily energy, O₂, and CO₂ savings

### Study Methods

Prospective laboratory study in healthy humans with:
- Normal ECG
- Weight > 55 kg, BMI < 30
- No sleep, medical, or psychiatric disorders
- VO₂max within 20th–90th percentile

**Protocol (5 days)**
- Subcutaneous infusion
- Oral loading dose: 2 µg/kg
- Continuous infusion: 1 µg/kg/hour for 18 hours/day
- 6 hours off/day

### Metabolic Measurement Methods

- Indirect calorimetry (baseline, 6-hour during-drug, 18-hour end-of-drug, 23-hour sitting, 23–24 hour exercise)
- Doubly labeled water (DLW): 1.5 g/kg 10 % ²H₂¹⁸O
- VO₂ and VCO₂ monitoring

### FHIR Implementation Guidance

#### Recommended Resources

- `Observation` – energy expenditure, core temperature, VO₂/VCO₂
- `MedicationAdministration` / `Medication` – alpha-2 agonist dosing
- `Procedure` – infusion protocols, sleep-extension sessions
- `CarePlan` – metabolic suppression protocol
- `DiagnosticReport` – metabolic suppression assessment
- `Device` – infusion pumps, calorimetry equipment

#### Candidate CodeSystems & ValueSets

**CodeSystems**
- `MetabolicSuppressionCS`
- `MetabolicMonitoringCS`
- `TorporMedicationCS`

**ValueSets**
- `MetabolicSuppressionIndicationsVS`
- `MetabolicSuppressionComplicationsVS`

#### Suggested Profiles

- `MetabolicSuppressionProtocol`
- `MetabolicSuppressionObservation`
- `ResourceConservationAssessment`

#### Potential Aerospace Medicine Concepts

- Human torpor
- Therapeutic hypothermia
- Sleep extension
- Resource conservation (CO₂ / O₂ reduction)
- Deep-space survival
- Long-duration transit medicine
- Autonomous medical operations

### Architectural Alignment

This work integrates directly with existing IG sections:
- ECLSS (resource modeling and life-support failure response)
- Environmental Monitoring
- Behavioral Health / Sleep Medicine
- Crew Health Monitoring
- Radiation Exposure Tracking (storm shelter confinement)
- Neutral Buoyancy and Decompression Medicine (analog operations)

It supports a broader **Autonomous Medical Countermeasures** framework for Mars-class missions.

### References

- NASA HRP Metabolic Hibernation / Metabolic Suppression slides
- Alpha-2-adrenergic agonist studies on resting energy expenditure and hypothermia (TRISH-supported)
- Aerospace Medicine FHIR IG (MITRE)
