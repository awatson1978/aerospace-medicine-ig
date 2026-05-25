### Cardiovascular Countermeasures in Microgravity

## Overview
Exposure to microgravity induces a cephalad fluid shift that alters venous hemodynamics, increases intracranial pressure, and contributes to Spaceflight-Associated Neuro-Ocular Syndrome (SANS). Lower Body Negative Pressure (LBNP) is a primary countermeasure shown to reduce headward fluid redistribution, lower intraocular pressure, and improve internal jugular vein (IJV) flow.

This page documents the physiologic effects observed during the **87th ESA Parabolic Flight Campaign (September 1–13, 2025)** and provides FHIR modeling guidance for capturing LBNP sessions, IJV ultrasound assessments, and Flow Directionality Index (FDI) calculations.

## Physiologic Challenges
**Primary concern:** Cephalad fluid shift during microgravity exposure.

**Conditions / Risks:**
- Cephalad Fluid Shift
- Spaceflight Associated Neuro-Ocular Syndrome (SANS)
- Venous flow abnormalities
- Venous thrombosis risk
- Cardiovascular deconditioning

**Observed effects:**
- Altered venous pressure
- Increased cephalad fluid redistribution
- Stagnant or retrograde internal jugular vein (IJV) flow
- Heart rate and cardiac output adaptation

**Anatomy of Interest:**
- Internal Jugular Vein (left and right IJV)
- Cardiovascular system
- Cerebral venous circulation
- Ocular system
- Central fluid compartment

## Countermeasure: Lower Body Negative Pressure (LBNP)
**Reported effects of LBNP:**
- Reduces headward fluid shift
- Reduces intraocular pressure (IOP)
- Decreases probability of abnormal IJV flow

**Tested pressure protocol:**
- 0 mmHg (baseline)
- -10 mmHg
- -20 mmHg
- -30 mmHg
- -40 mmHg
- -50 mmHg

## 87th ESA Parabolic Flight Campaign
- **Dates:** September 1–13, 2025
- **Structure:** 6 sets of 5 parabolas (30 total)
- **Phases:** Hypergravity ascent (1.5–1.8 g) → Microgravity (0 g) → Hypergravity recovery

**Subjects:** 3 primary (all female) + 2 backup (1 female / 1 male)

**Data collected:** Blood pressure, heart rate, cardiac output, ECG, IJV cross-sectional area, IJV pressure, IJV flow

## Observation Methods
**IJV Cross-Sectional Area**
- Butterfly iQ3 ultrasound
- Compremium frames captured at end-diastole
- Average of 2 blinded operators (3rd operator if discrepancy >10 %)

**IJV Pressure**
- Compremium video assessment
- Vessel wall near-closure method

**IJV Flow**
- Spectral pulse-wave Doppler
- 5-second flow image acquired ≥10 seconds into 0 g

### Traditional IJV Flow Grades
| Grade | Description                  | Approximate FDI |
|-------|------------------------------|-----------------|
| 1     | Forward flow                 | 1.0             |
| 2     | Forward flow with intermittent no-flow | 0.65     |
| 3     | Stagnant flow                | 0.03            |
| 4     | Retrograde flow              | -0.5            |

### Flow Directionality Index (FDI)
$
\text{FDI} = \left( \frac{t_{Q,\text{forward}} - t_{Q,\text{retrograde}}}{T_{\text{total}}} \right) \times \left( 1 - \frac{t_{Q,\text{zero}}}{T_{\text{total}}} \right)
$

**Range:** [-1, 1]
- 1 = continuous forward flow
- ~0 = stagnant flow
- Negative = retrograde flow

## Key Findings
- LBNP reduces IJV area during both 1 g and 0 g phases.
- IJV area is larger in 0 g than in 1 g.
- Greater incidence of abnormal IJV flow during 0 g.
- LBNP improves IJV flow in both gravity conditions.
- FDI provides greater granularity than traditional grading.
- Heart rate increases with LBNP; cardiac output decreases with LBNP.
- Additional subjects needed for stronger blood-pressure conclusions.

## FHIR Implementation Guidance

### Recommended Resources
- `Observation`
- `Procedure`
- `Device`
- `ResearchStudy` / `ResearchSubject`
- `ImagingStudy`
- `Encounter` / `EpisodeOfCare`
- `QuestionnaireResponse`

### New Profiles (suggested)
**Observation**
- [`InternalJugularVeinFlowObservation`](StructureDefinition-internal-jugular-vein-flow-observation.html)
- [`InternalJugularVeinPressureObservation`](StructureDefinition-internal-jugular-vein-pressure-observation.html)
- [`InternalJugularVeinAreaObservation`](StructureDefinition-internal-jugular-vein-area-observation.html)
- `CardiovascularCountermeasureObservation`
- [`FlowDirectionalityIndexObservation`](StructureDefinition-flow-directionality-index-observation.html) (with components)

**Procedure**
- [`LowerBodyNegativePressureProcedure`](StructureDefinition-lower-body-negative-pressure-procedure.html)
- [`ParabolicFlightExposure`](StructureDefinition-parabolic-flight-exposure.html)

**Device**
- [`UltrasoundMonitoringDevice`](StructureDefinition-ultrasound-monitoring-device.html)
- `VenousPressureMonitoringDevice`
- [`LBNPCountermeasureSystem`](StructureDefinition-lbnp-countermeasure-system.html)

### New CodeSystems / ValueSets
- [`MicrogravityCountermeasureCS`](CodeSystem-microgravity-countermeasure-cs.html) (lbnp, venous-flow-monitoring, fluid-shift-mitigation, anti-sans-protocol, venous-thrombosis-prevention)
- [`IJVFlowGradeCS`](CodeSystem-ijv-flow-grade-cs.html) (grade-1 … grade-4)
- [`ParabolicFlightPhaseCS`](CodeSystem-parabolic-flight-phase-cs.html) (steady-1g, pull-up, microgravity, pull-out)

### FDI Observation Components
- `forward-flow-time`
- `retrograde-flow-time`
- `zero-flow-time`
- `total-sample-time`
- `fdi-ratio`

### Example ResearchStudy
**Title:** Graded Lower Body Negative Pressure During Parabolic Microgravity Exposure
**Metadata:** ESA Parabolic Flight Campaign 2025 – Cardiovascular countermeasure study

## Architectural Alignment
This content aligns with and extends existing IG sections:
- Neutral Buoyancy Training and Decompression Medicine
- Radiation Exposure Tracking
- Environmental Exposure Medicine
- Physiologic Adaptation Tracking

It contributes to a generalized **Environmental Exposure + Physiologic Countermeasure** framework applicable to microgravity, hypergravity, radiation, decompression, EVA stressors, and fluid redistribution.

## Next Steps / Open Items
- Add example FHIR instances (Observation bundles for IJV flow + LBNP session)
- Create FSH definitions for the new profiles listed above
- Link to new ValueSets once published

**References**
- Pentinat-Llurba, Huc, Richard Whittle, Adrien Robin, Cort Reinarz, Dave Laygo, Rashika Rao, Madison Herrmann, Josephine Allen, Rachael Seidler, Oscar Flores, and Ana Diaz-Artiles. “Graded Lower Body Negative Pressure During Parabolic Flight: Progress to Date and Upcoming Campaigns.” Oral presentation presented at the 87th ESA Parabolic Flight Campaign session, April 7, 2026, Texas A&M University and collaborating institutions.
- ESA Parabolic Flights Overview: [https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Parabolic_flights](https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Parabolic_flights)  