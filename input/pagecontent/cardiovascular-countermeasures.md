### Overview

Exposure to microgravity induces a cephalad fluid shift that alters venous hemodynamics, increases intracranial pressure, and contributes to Spaceflight-Associated Neuro-Ocular Syndrome (SANS). Lower Body Negative Pressure (LBNP) is a primary countermeasure shown to reduce headward fluid redistribution, lower intraocular pressure, and improve internal jugular vein (IJV) flow.

This page documents the physiologic effects observed during a graded-LBNP study flown on the **87th ESA Parabolic Flight Campaign (September 1-13, 2025)** and provides FHIR modeling guidance for capturing LBNP sessions, IJV ultrasound assessments, and Flow Directionality Index (FDI) calculations. The study is small — three primary subjects — so the findings below are best read as a demonstration of what the data model has to carry, not as settled physiology.

### Physiologic Challenges

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

### Countermeasure: Lower Body Negative Pressure (LBNP)

LBNP seals the lower body in a chamber held below cabin pressure, drawing blood footward and partially restoring the pressure gradient that gravity supplies on Earth.

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

### 87th ESA Parabolic Flight Campaign

- **Dates:** September 1-13, 2025
- **Structure:** 6 sets of 5 parabolas (30 total)
- **Phases:** Hypergravity ascent (1.5-1.8 g) → Microgravity (0 g) → Hypergravity recovery

**Subjects:** 3 primary (all female) + 2 backup (1 female / 1 male)

**Data collected:** Blood pressure, heart rate, cardiac output, ECG, IJV cross-sectional area, IJV pressure, IJV flow

### Observation Methods

**IJV Cross-Sectional Area**
- Butterfly iQ3 ultrasound
- Compremium frames captured at end-diastole
- Average of 2 blinded operators (3rd operator if discrepancy >10%)

**IJV Pressure**
- Compremium video assessment
- Vessel wall near-closure method

**IJV Flow**
- Spectral pulse-wave Doppler
- 5-second flow image acquired ≥10 seconds into 0 g

#### Traditional IJV Flow Grades

Doppler traces have historically been read into four ordinal grades. The right-hand column gives the approximate Flow Directionality Index that corresponds to each grade, which is what makes the two scales comparable.

| Grade | Description                  | Approximate FDI |
|-------|------------------------------|-----------------|
| 1     | Forward flow                 | 1.0             |
| 2     | Forward flow with intermittent no-flow | 0.65     |
| 3     | Stagnant flow                | 0.03            |
| 4     | Retrograde flow              | -0.5            |

#### Flow Directionality Index (FDI)

The FDI condenses a Doppler sample window into a single signed number by subtracting the time spent flowing backwards from the time spent flowing forwards, then penalising the time spent not flowing at all:

`FDI = ((t_forward − t_retrograde) / T_total) × (1 − t_zero / T_total)`

where `t_forward`, `t_retrograde`, and `t_zero` are the seconds of antegrade, retrograde, and stagnant flow within a sample window of `T_total` seconds.

**Range:** −1 to 1
- 1 = continuous forward flow
- ~0 = stagnant flow
- Negative = retrograde flow

### Key Findings

These are preliminary results from three primary subjects (n=3). They are directionally consistent with the ground-based LBNP literature, but the sample is too small to support effect sizes.

- LBNP reduced IJV area during both 1 g and 0 g phases (preliminary, n=3).
- IJV area was larger in 0 g than in 1 g (preliminary, n=3).
- Abnormal IJV flow occurred more often during 0 g (preliminary, n=3).
- LBNP improved IJV flow in both gravity conditions (preliminary, n=3).
- FDI provides greater granularity than the traditional four-grade scale.
- Heart rate increased with LBNP; cardiac output decreased with LBNP (preliminary, n=3).
- Additional subjects are needed before any blood-pressure conclusion can be drawn.

### FHIR Implementation Guidance

#### Recommended Resources

- `Observation`
- `Procedure`
- `Device`
- `ResearchStudy` / `ResearchSubject`
- `ImagingStudy`
- `Encounter` / `EpisodeOfCare`
- `QuestionnaireResponse`

#### FHIR Profiles and Extensions

**Observation**
- [InternalJugularVeinFlowObservation](StructureDefinition-internal-jugular-vein-flow-observation.html) - graded IJV flow with an FDI component
- [InternalJugularVeinPressureObservation](StructureDefinition-internal-jugular-vein-pressure-observation.html) - IJV pressure by the wall near-closure method
- [InternalJugularVeinAreaObservation](StructureDefinition-internal-jugular-vein-area-observation.html) - end-diastolic cross-sectional area
- [FlowDirectionalityIndexObservation](StructureDefinition-flow-directionality-index-observation.html) - FDI with all five timing components

**Procedure**
- [LowerBodyNegativePressureProcedure](StructureDefinition-lower-body-negative-pressure-procedure.html) - one LBNP exposure at a stated pressure level
- [ParabolicFlightExposure](StructureDefinition-parabolic-flight-exposure.html) - a parabola or parabola set as a gravity exposure

**Device**
- [UltrasoundMonitoringDevice](StructureDefinition-ultrasound-monitoring-device.html) - the imaging device used for IJV assessment
- [LBNPCountermeasureSystem](StructureDefinition-lbnp-countermeasure-system.html) - the LBNP chamber itself

**Extension**
- [LBNPPressureLevel](StructureDefinition-lbnp-pressure-level.html) - the applied negative pressure in mmHg, carried on both the procedure and the observations made during it

##### Proposed Profiles (not yet defined)

- `CardiovascularCountermeasureObservation` - a generic parent for countermeasure-response measurements (heart rate, cardiac output, intraocular pressure) recorded during an LBNP or artificial-gravity exposure, so that non-IJV responses do not each need a bespoke profile.
- `VenousPressureMonitoringDevice` - a Device profile for continuous venous pressure instrumentation, distinct from the ultrasound device profile that exists today.

#### FDI Observation Components

The five component codes below come from [VenousFlowMetricCS](CodeSystem-venous-flow-metric-cs.html) and let a reader recompute the index from the raw timings rather than trusting the reported ratio.

- `forward-flow-time`
- `retrograde-flow-time`
- `zero-flow-time`
- `total-sample-time`
- `fdi-ratio`

### Examples

The guide carries synthetic worked instances for a single -30 mmHg LBNP exposure during the microgravity phase of a parabola set.

- [LBNP Chamber Device](Device-LBNP-Chamber-001.html) - the countermeasure system used for the exposure.
- [Butterfly iQ3 Ultrasound](Device-Butterfly-iQ3-001.html) - the handheld imaging device used for IJV assessment.
- [LBNP Session at -30 mmHg During Microgravity](Procedure-LBNP-Session-Microgravity-001.html) - the procedure record, tagged with gravity context and pressure level.
- [IJV Flow During LBNP (FDI = 0.85)](Observation-IJV-Flow-During-LBNP-001.html) - a Grade 1 flow observation carrying the computed FDI.
- [FDI Observation with All Components](Observation-FDI-Components-001.html) - the same index broken out into its five timing components.

### Standardized Terminologies

Three code systems describe the countermeasure, the flow grade, and the flight phase; a fourth supplies the FDI component codes. Each has a matching value set for binding.

- [MicrogravityCountermeasureCS](CodeSystem-microgravity-countermeasure-cs.html) (lbnp, venous-flow-monitoring, fluid-shift-mitigation, anti-sans-protocol, venous-thrombosis-prevention) - [value set](ValueSet-microgravity-countermeasure-vs.html)
- [IJVFlowGradeCS](CodeSystem-ijv-flow-grade-cs.html) (grade-1 … grade-4) - [value set](ValueSet-ijv-flow-grade-vs.html)
- [ParabolicFlightPhaseCS](CodeSystem-parabolic-flight-phase-cs.html) (steady-1g, pull-up, microgravity, pull-out) - [value set](ValueSet-parabolic-flight-phase-vs.html)
- [VenousFlowMetricCS](CodeSystem-venous-flow-metric-cs.html) - component codes for the Flow Directionality Index

### Architectural Alignment

This content aligns with and extends existing IG sections:
- Neutral Buoyancy Training and Decompression Medicine
- Radiation Exposure Tracking
- Environmental Exposure Medicine
- Physiologic Adaptation Tracking

It contributes to a generalized **Environmental Exposure + Physiologic Countermeasure** framework applicable to microgravity, hypergravity, radiation, decompression, EVA stressors, and fluid redistribution. Exercise-side venous stasis and hemostasis monitoring is described on the [Fitness](fitness.html) page.

### References

- Pentinat-Llurba H, Whittle R, Robin A, Reinarz C, Laygo D, Rao R, Herrmann M, Allen J, Seidler R, Flores O, Diaz-Artiles A. "Graded Lower Body Negative Pressure During Parabolic Flight: Progress to Date and Upcoming Campaigns." Oral presentation, April 7, 2026. Texas A&M University and collaborating institutions. Data collected during the 87th ESA Parabolic Flight Campaign, September 1-13, 2025.
- European Space Agency. Parabolic Flights Overview. [https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Parabolic_flights](https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Parabolic_flights)
