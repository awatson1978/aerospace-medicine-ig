### Overview

Long-duration missions (Mars transit, lunar shelters, submarine analogs) face severe constraints on mass, power, and life-support consumables. NASA's Human Research Program and the Translational Research Institute for Space Health (TRISH) are exploring pharmacologic and sleep-based metabolic suppression as countermeasures to reduce daily energy expenditure, oxygen consumption, and carbon dioxide production — effectively extending mission endurance during nominal operations or after a catastrophic life-support failure.

This page documents the operational rationale, alpha-2 adrenergic agonist pharmacology, human study findings, and FHIR modeling for implementing metabolic suppression protocols in aerospace medicine. Everything described here is investigational: no metabolic suppression protocol is approved or flown for crew use, and nothing on this page is clinical guidance.

### Operational Scenarios

**Resource conservation for long-duration missions**
- Nominal daily requirement per crewmember: about 3,000 kcal/day (roughly 1.2 kg of food), about 0.84 kg of oxygen (≈590 L at standard conditions) consumed and about 1.0 kg of carbon dioxide (≈500 L) produced and scrubbed, per NASA's Life Support Baseline Values and Assumptions Document
- Goal: meaningfully reduce these demands

**Catastrophic life-support failure**
- Return or rescue time (4 days) exceeds available supplies or scrubbing capability (3 days)
- Applicable to: Mars transit, submarine operations, lunar shelters, polar expedition analogs

### Pharmacologic Approach: Alpha-2 Adrenergic Agonists

The candidate agents are all FDA-approved drugs used for other indications, chosen for minimal respiratory depression and the possibility of subcutaneous administration. The doses in the table are the ones used in the investigational human studies cited in the References section below (Callaway et al. 2024; Flickinger et al. 2025), supported by TRISH under NASA cooperative agreement NNX16AO69A. **They are research doses reported for a laboratory protocol, not a clinical protocol, and not a recommendation for crew or patient use.**

| Drug | Route | Dose | Half-life | Approved Use |
|---|---|---|---|---|
| Dexmedetomidine | IV | 1.0 µg/kg | 2 hrs | Sedative |
| Dexmedetomidine | Nasal | 1.0 µg/kg | 2 hrs | Sedative |
| Dexmedetomidine | Oral | 4.0 µg/kg | 2 hrs | Sedative |
| Tizanidine | Oral | 8-16 mg | 1.2-2 hrs | Muscle Relaxant |
| Clonidine | Oral | 0.2-0.3 mg | 12-16 hrs | Blood Pressure Control |
| Lofexidine | Oral | 0.72 mg | 11 hrs | Opioid Withdrawal |

**Supporting research**
- Alpha-2 adrenergic agonists reduce resting energy expenditure in humans during external cooling (Callaway et al. 2024)
- Sustained metabolic reduction and hypothermia are achievable in humans over multi-day infusion (Flickinger et al. 2025)

### Metabolic Suppression Findings

Reported reductions in energy expenditure scale with the duration of drug exposure:

**6-hour suppression**
- ~200-400 kcal/day equivalent reduction

**One-day infusion**
- ~30% energy expenditure reduction
- Core temperature reduction ~1.0 °C

**Five-day suppression**
- Predicted: 41% reduction
- Observed/estimated: 36% reduction
- Placebo comparison: 13% reduction

**Core temperature effect**
- Reductions approached -1.5 °C

### Sleep-Based Metabolic Suppression

A drug-free variant of the same idea: if sleep costs less energy than wakefulness, extending sleep extends consumables.

**Concept**
- Baseline sleep ≈ 30% of the day
- Awake expenditure ≈ 1.35× sleep expenditure
- Experimental target: increase sleep to ~80% of the day
- Projected: substantial daily energy, oxygen, and carbon dioxide savings

### Study Methods

Prospective laboratory study in healthy humans with:
- Normal ECG
- Weight > 55 kg, BMI < 30
- No sleep, medical, or psychiatric disorders
- VO₂max within the 20th-90th percentile

**Protocol (5 days)**
- Subcutaneous infusion
- Oral loading dose: 2 µg/kg
- Continuous infusion: 1 µg/kg/hour for 18 hours/day
- 6 hours off/day

### Metabolic Measurement Methods

- Indirect calorimetry (baseline, 6-hour during-drug, 18-hour end-of-drug, 23-hour sitting, 23-24 hour exercise)
- Doubly labeled water (DLW): 1.5 g/kg 10% ²H₂¹⁸O
- VO₂ and VCO₂ monitoring

### FHIR Implementation Guidance

#### Recommended Resources

- `Observation` – energy expenditure, core temperature, VO₂/VCO₂
- `MedicationAdministration` / `Medication` – alpha-2 agonist dosing
- `Procedure` – infusion protocols, sleep-extension sessions
- `CarePlan` – metabolic suppression protocol
- `DiagnosticReport` – metabolic suppression assessment
- `Device` – infusion pumps, calorimetry equipment

#### Proposed Profiles (not yet defined)

No FSH artifacts exist for this domain yet. The names below record design intent and are deliberately unlinked.

- `MetabolicSuppressionProtocol` - a CarePlan profile describing the loading dose, infusion schedule, daily off-period, and rewarming criteria.
- `MetabolicSuppressionObservation` - an Observation profile for energy expenditure, core temperature, and gas exchange measured under suppression.
- `ResourceConservationAssessment` - a derived assessment relating the achieved suppression to consumables saved (kcal, kg O₂, kg CO₂ scrubbing).

#### Proposed Terminology (not yet defined)

**CodeSystems**
- `MetabolicSuppressionCS` - suppression modality (pharmacologic torpor, sleep extension, external cooling).
- `MetabolicMonitoringCS` - measurement types specific to suppression monitoring (resting energy expenditure, respiratory quotient, core temperature delta).
- `TorporMedicationCS` - the alpha-2 agonist agents and routes in the table above.

**ValueSets**
- `MetabolicSuppressionIndicationsVS` - nominal resource conservation versus contingency life-support failure.
- `MetabolicSuppressionComplicationsVS` - bradycardia, hypotension, shivering, and other expected complications.

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

- Anderson MS, Ewert MK, Keener JF. *Life Support Baseline Values and Assumptions Document.* NASA/TP-2015-218570, NASA Johnson Space Center, 2015 (rev. 2018). Source for the nominal per-crewmember metabolic oxygen consumption and carbon dioxide production rates cited above.
- Callaway CW, Flickinger KL, Weissman A, West RE III, et al. "Alpha-2-Adrenergic Agonists Reduce Resting Energy Expenditure in Humans During External Cooling." *Temperature* (2024). [https://doi.org/10.1080/23328940.2024.2339781](https://doi.org/10.1080/23328940.2024.2339781)
- Weissman A, Flickinger KL, Wu V, Callaway CW. "Quasi-Torpor for Long-Duration Space Missions." *Frontiers in Space Technologies* (2024). [https://www.frontiersin.org/journals/space-technologies/articles/10.3389/frspt.2024.1358288/full](https://www.frontiersin.org/journals/space-technologies/articles/10.3389/frspt.2024.1358288/full)
- Flickinger KL, Weissman A, Guyette F, Callaway CW. "Sustained Metabolic Reduction and Hypothermia in Humans." *PLOS ONE* (2025). [https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0321478](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0321478) Supported by the Translational Research Institute for Space Health (TRISH) through NASA cooperative agreement NNX16AO69A; the dosing table on this page reports the protocol used in this line of work.
