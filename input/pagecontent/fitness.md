### Overview

When astronaut Scott Kelly completed his 340-day mission aboard the International Space Station, he spent an average of **2.5 hours every single day** on the exercise protocol—running on a treadmill with a harness pulling him down to simulate Earth's gravity, lifting weights on the Advanced Resistive Exercise Device (ARED), and cycling on the stationary bike. Despite this heroic effort, he still lost significant bone density and muscle mass. That is the standard ISS prescription: roughly two and a half hours a day, six days a week, once setup, changeover and stowage are counted alongside the exercise itself (NASA, *Astronaut Exercise*). This stark reality reveals the fundamental challenge of human spaceflight: in microgravity, the human body begins to atrophy almost immediately, and exercise becomes not just fitness training, but a **medical countermeasure critical to mission success and crew survival**.

On the ISS, astronauts face a paradox: they must exercise more intensely than Olympic athletes, yet they're doing it in an environment where even simple movements require conscious effort. The ARED system can simulate loads on the order of 600 pounds, making it possible to perform squats and deadlifts in space, and the T2 treadmill — vibration-isolated so that running does not shake the entire station — supports running speeds up to about 12 mph while a harness pulls the astronaut downward with a calibrated force (NASA ISS countermeasures hardware documentation; see References). Every workout session generates data: heart rate, simulated body weight, power output, exercise duration, and recovery metrics—all critical for physicians on the ground to assess whether the crew's fitness program is preventing the inexorable physiologic decline of spaceflight.

### Exploration Constraints

Artemis-class vehicles impose severe mass, power, and volume limits. Future exercise systems must:
- Use smaller footprints
- Be lightweight
- Consume fewer resources

Future lunar and Mars EVAs will involve heavier suits, longer durations, higher cognitive and physical workloads, and increased injury risk.

### Study Design Groups

**Control Group**
Nominal ISS exercise protocol:
- T2 treadmill
- CEVIS cycling
- ARED resistance exercise

**Active Group 1**
ARED + CEVIS only (treadmill removed)

**Active Group 2**
E4D multifunction exercise system:
- Resistive exercise
- Cycle ergometry
- Rowing
- Rope pulling

### Physical Performance Assessments

Key metrics evaluated across all groups:
- VO₂peak
- Isokinetic strength and endurance
- Bench press strength and endurance
- Leg press strength and endurance
- IMTP (Isometric Mid-Thigh Pull)

### FHIR Implementation Architecture

#### Core Profiles

| Profile | Purpose | Key Features |
|---------|---------|--------------|
| [SpaceExerciseActivityMeasure](StructureDefinition-space-exercise-activity-measure.html) | Individual exercise measurements | Duration, intensity, heart rate, power output, modality-specific metrics |
| [SpaceExerciseActivityGroup](StructureDefinition-space-exercise-activity-group.html) | Panel grouping related measures | Links type, duration, intensity for a single session; mission context |
| [SpaceEVSMinutesPerWeek](StructureDefinition-space-evs-minutes-per-week.html) | Weekly exercise volume summary | EVS (Exercise Vital Sign) minutes, aggregated across modalities |
| [SpaceExerciseSession](StructureDefinition-space-exercise-session.html) | Procedural record of exercise event | Links to prescriptions, goals, devices, and observation panels |

These profiles extend standard FHIR resources while incorporating space-specific terminology and requirements, following the same architectural patterns established in radiation and nutrition tracking modules.

The shared extensions used on these profiles are [MissionContext](StructureDefinition-mission-context.html), [ExerciseDevice](StructureDefinition-exercise-device.html), [HarnessLoad](StructureDefinition-harness-load.html) and [DerivedFromGroup](StructureDefinition-derived-from-group.html).

##### Proposed Profiles (not yet defined)

- `ExerciseCountermeasureSession` - a countermeasure-oriented session profile that would tie a prescription, its adherence, and the physiologic response into one record, above the level of the per-session procedure that exists today.
- `SpaceflightFitnessAssessment` - a periodic fitness-test panel (VO₂peak, isokinetic strength, IMTP) distinct from the routine session measures.

Venous flow and hemostasis profiles are the concern of the [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) page, which defines the IJV flow, pressure, area and Flow Directionality Index profiles.

#### Data Architecture

Exercise tracking in space incorporates multiple data dimensions:

- **Temporal Context**: Per-session, daily, weekly, mission-phase, career-long summaries
- **Exercise Modalities**: Treadmill running (T2), resistive training (ARED), cycling (CEVIS), elastic bands, artificial gravity
- **Performance Metrics**: Power output, simulated body weight, heart rate reserve, VO₂ surrogate, recovery heart rate
- **Equipment Configuration**: Device settings, harness load percentage, resistance levels, vibration isolation status
- **Mission Context**: EVA preparation days, pre-flight conditioning, post-landing recovery
- **Physiologic Outcomes**: Muscle mass preservation, bone density maintenance, cardiovascular fitness

All measurements link to **MissionContext** extensions used throughout the IG.

#### Standardized Terminologies

New code systems and value sets:

- **[SpaceExerciseModalityCS](CodeSystem-space-exercise-modality-cs.html)**: treadmill, cycle-ergometer, ARED-resistive, resistive-squat, resistive-deadlift, ag-centrifuge
- **[SpaceExerciseModalityVS](ValueSet-space-exercise-modality-vs.html)**: ValueSet for space exercise modalities
- **[SpacePerformanceMetricCS](CodeSystem-space-performance-metric-cs.html)**: mean-power, peak-power, simulated-bw, total-work, vo2-surrogate, recovery-hr
- **[SpacePerformanceMetricVS](ValueSet-space-performance-metric-vs.html)**: ValueSet for exercise performance metrics
- **[EVSUnitsVS](ValueSet-evs-units-vs.html)**: Exercise Vital Sign (EVS) unit measurements

Integration with existing terminologies:
- **Physical Activity IG**: PAPanel, duration, intensity codes
- **LOINC**: Type of exercise (74010-0) and heart rate (8867-4), used in the `loinc` coding slice of the activity measure profile
- **SNOMED CT**: Exercise procedures, musculoskeletal conditions
- **NASA Standards**: Exercise countermeasure requirements

##### Proposed Terminology (not yet defined)

The modality code system covers the hardware in use today. Four further concepts are wanted for the exploration study designs described above and are not yet defined:

- `e4d-training` - sessions on the E4D multifunction exercise system.
- `cycle-ergometry` - cycle work as a distinct modality from the CEVIS device code.
- `eva-conditioning` - EVA-preparation conditioning blocks.
- `microgravity-deconditioning` - a finding code for the deconditioned state the countermeasures are working against.

Venous flow and coagulation codes (IJV flow velocity, flow stasis, thrombin generation, hypercoagulability) belong with the [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) page; [VenousFlowMetricCS](CodeSystem-venous-flow-metric-cs.html) already covers the flow-directionality component codes.

### Physiologic and Environmental Considerations

Exercise in microgravity is fundamentally different from Earth-based training—it's not about athletic performance enhancement, but about **preventing catastrophic physiologic deterioration**. Picture an astronaut six months into a mission: without countermeasures their weight-bearing bones would be losing about 1-1.5% of their mineral density every month, their antigravity muscles would already have shed a large fraction of their mass in the first days of flight, and their cardiovascular system would have adapted to the point where standing up after landing could cause them to faint. Exercise is the primary countermeasure against this collapse.

#### Muscle Atrophy

- Antigravity muscles (legs, back) atrophy fastest and earliest: short-duration flights before modern countermeasures showed losses of roughly **20% of antigravity muscle mass within 5-11 days** (LeBlanc et al. 1995)
- Type I slow-twitch fibers convert to Type II fast-twitch, reducing endurance capacity
- ARED resistive training provides loads on the order of **600 lb equivalent** to maintain muscle stimulus (NASA ISS countermeasures hardware documentation)
- Eccentric loading (muscle lengthening under tension) is critical but difficult to achieve in microgravity

#### Bone Loss

- Weight-bearing bones lose about **1-1.5% of bone mineral density per month** in microgravity (LeBlanc, Spector, Evans & Sibonga 2007)
- The hip and spine are most affected, increasing fracture risk post-landing
- Ground reaction forces during treadmill running provide the mechanical loading; the harness is typically set to deliver on the order of **70-80% of body weight**, below the 1 g equivalent that crew tolerance and harness comfort allow (NASA OCHMO Exercise Overview technical brief)
- Resistance exercises with high loads stimulate osteoblast activity

#### Cardiovascular Deconditioning

- Heart becomes more spherical, stroke volume decreases
- Orthostatic intolerance develops (difficulty standing after landing)
- Target heart rate zones must account for fluid shifts and altered cardiac geometry
- VO₂max declines despite exercise due to plasma volume reduction

#### Equipment-Specific Challenges

**T2 Treadmill:**
- Vibration isolation prevents disturbing microgravity experiments
- Harness system creates uneven loading patterns
- Running biomechanics differ significantly from Earth

**ARED (Advanced Resistive Exercise Device):**
- Vacuum cylinder system provides smooth resistance
- Inertial loads during exercise can destabilize the astronaut
- Requires careful spotting and technique in microgravity

**CEVIS (Cycle Ergometer with Vibration Isolation and Stabilization):**
- Cardiovascular conditioning with minimal station disturbance
- Power output measurement calibrated for microgravity biomechanics

### Monitoring Strategy

Analogous to radiation dosimetry's multi-layered approach, exercise monitoring integrates real-time telemetry, physiologic measurements, and long-term trend analysis. Every exercise session becomes a data-rich event that physicians analyze for signs of adequate countermeasure effectiveness or early indicators of deconditioning.

#### Real-Time Session Monitoring

- Heart rate telemetry (continuous)
- Power output and resistance levels (device-recorded)
- Exercise duration and modality
- Simulated body weight percentage (for treadmill)
- Subjective exertion ratings (Borg RPE scale)

#### Weekly Aggregated Metrics

- **EVS (Exercise Vital Sign)**: Total minutes of moderate-to-vigorous physical activity (MVPA) per week, the measure the HL7 Physical Activity IG is built around
- Terrestrial floor: **150 minutes of MVPA per week**, the adult minimum in the *Physical Activity Guidelines for Americans* (2nd edition, 2018) that the Exercise Vital Sign screens against
- Actual ISS prescription: **~2.5 hours per day, 6 days per week** (NASA, *Astronaut Exercise*), several times the terrestrial floor because the goal is preserving tissue, not maintaining general health
- Modality breakdown: aerobic vs. resistive vs. combination

#### Longitudinal Assessments

- **VO₂max testing**: Periodic maximal exercise tests pre-flight, in-flight, post-flight
- **Muscle ultrasonography**: Quadriceps and gastrocnemius thickness
- **Bone density scans**: DXA pre-flight and post-flight
- **Functional performance**: Jump height, grip strength, sit-to-stand tests

#### Risk Threshold Alerts

- Heart rate anomalies during exercise (too high or too low for prescribed intensity)
- Declining power output trends over mission duration
- Insufficient weekly EVS minutes (below the 150 min/week terrestrial floor, and well below the ISS prescription)
- Equipment malfunction or calibration drift

### Data Model Architecture

#### Core FHIR Resources

- **Observation** — [SpaceExerciseActivityMeasure](StructureDefinition-space-exercise-activity-measure.html), [SpaceExerciseActivityGroup](StructureDefinition-space-exercise-activity-group.html), [SpaceEVSMinutesPerWeek](StructureDefinition-space-evs-minutes-per-week.html)
- **Procedure** — [SpaceExerciseSession](StructureDefinition-space-exercise-session.html)
- **Device** — Exercise equipment (T2 Treadmill, ARED, CEVIS)
- **ServiceRequest** — Exercise prescriptions
- **Goal** — Fitness targets (maintain VO₂max, bone density goals)

#### Extensions

- [MissionContext](StructureDefinition-mission-context.html) — reference to the mission Encounter (consistent with the radiation, nutrition, and neutral-buoyancy modules)
- [ExerciseDevice](StructureDefinition-exercise-device.html) — reference to the specific equipment used
- [HarnessLoad](StructureDefinition-harness-load.html) — percentage of body weight applied for treadmill sessions
- [DerivedFromGroup](StructureDefinition-derived-from-group.html) — links an EVS summary to its constituent activity groups

### Use Cases

#### 1. Pre-Flight Baseline Assessment

Comprehensive fitness testing including VO₂max, strength assessment, and functional movement screening to establish astronaut's baseline capabilities and inform personalized exercise prescriptions.

#### 2. In-Flight Exercise Prescription and Monitoring

Daily exercise sessions logged as Procedures with linked ActivityGroup observations, tracking compliance with individualized prescriptions based on mission requirements and crew member fitness status.

#### 3. EVA Preparation Training

Intensified resistive training protocols in the weeks before scheduled EVAs, with increased focus on upper body strength and endurance to handle 7-hour suited operations.

#### 4. Post-Mission Recovery Tracking

Structured reconditioning program post-landing, monitoring return to baseline fitness levels and identifying any residual deficits requiring rehabilitation.

#### 5. Career Fitness Profile Management

Longitudinal tracking across multiple missions to identify trends, optimize training protocols, and assess cumulative effects of spaceflight on musculoskeletal and cardiovascular systems.

#### 6. Research and Population Studies

Aggregated de-identified data enabling studies of exercise countermeasure effectiveness, equipment performance, and correlation between in-flight exercise adherence and post-flight outcomes.

### Enhanced Data Collection

#### Advanced Metrics

- **Power-to-weight ratios** adjusted for simulated body weight
- **Eccentric vs. concentric strength** imbalances
- **Heart rate variability** (HRV) during recovery periods
- **Cadence analysis** for treadmill running biomechanics
- **Load-velocity curves** for resistive exercises

#### Equipment Telemetry Integration

- ARED vacuum pressure readings
- T2 treadmill harness tension sensors
- CEVIS power output calibration data
- Vibration isolation system performance logs

#### Biomechanical Assessments

- Joint angle analysis during resistive exercises
- Gait analysis from treadmill accelerometers
- Impact force patterns during running
- Muscle activation patterns (if EMG available)

### Venous Flow Abnormalities and Hemostasis Monitoring

Exercise countermeasures and venous hemostasis are studied together because both are downstream of the same cephalad fluid shift. The FHIR modeling for venous flow — the IJV flow, pressure and area profiles, the Flow Directionality Index, and the LBNP countermeasure — lives on the [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) page and is not duplicated here. What follows is the measurement protocol as it appears in the exercise-countermeasure study designs.

Venous stasis has been identified in ISS crewmembers and represents a thrombosis risk factor consistent with Virchow's Triad. Only a subset of astronauts develop abnormal flow patterns. Measurements were collected pre-flight, in-flight, and post-flight under multiple conditions (supine, seated, head-down tilt, LBNP).

#### Ultrasound Methods

- Quantification of right and left internal jugular vein (IJV) cross-sectional area
- Flow characteristic measurements
- Posture-based imaging protocols
- In-flight imaging during weightlessness
- Venoconstrictive thigh cuff testing
- Valsalva and Mueller respiratory maneuvers

#### MRI Methods

**Objectives:**
- Assess cerebral and neck venous anatomy
- Identify anatomic variability associated with thrombosis risk
- Evaluate altered venous hemodynamics during weightlessness

**Sequences:**
- 4D Flow MRI
- Thoracic duct imaging
- Posture-arm maneuver protocols

#### Targeted Biomarker Analysis

Thrombus formation stages and biomarkers:

| Category | Biomarkers |
|---|---|
| Systemic inflammation | C-Reactive Protein (CRP) |
| Endothelial activation | sVCAM-1, sE-Selectin |
| Platelet/leukocyte activation | Platelet Factor 4 (PF4), sCD40L, CitH3, Cell free DNA |
| Coagulation cascade activation | Prothrombin Fragment 1+2, Thrombin-Antithrombin Complex, D-Dimer |

#### Functional Coagulation Analysis

- Prothrombin Time (PT)
- Activated Partial Thromboplastin Time (aPTT)
- Calibrated Automated Thrombography (CAT) — real-time thrombin generation

#### Target-Agnostic Plasma Biomarkers

O-Link proximity extension assay platform measures ~5,400 plasma proteins simultaneously for biomarker discovery related to flow stasis and thrombosis progression.

#### Mission Timeline Sampling

- **Preflight:** L-270, L-180, L-90/50
- **Inflight:** FD7, FD45, FD90, FD150
- **Postflight:** R-1/4, R+1/2, R+5/7, R+14/21

### Integration with Existing Systems

#### Mission Control Systems

- Exercise data feeds into crew health dashboards
- Alerts for missed sessions or declining performance
- Equipment maintenance schedules based on usage telemetry

#### Longitudinal Study of Astronaut Health (LSAH)

- Exercise adherence correlated with bone density outcomes
- Cardiovascular fitness trends across career
- Injury and musculoskeletal complaint patterns

#### Environmental Control and Life Support Systems (ECLSS)

- Metabolic heat generation during exercise affects cabin cooling
- Oxygen consumption and CO₂ production rates
- Water usage for post-exercise hygiene

### Examples

The guide carries a worked set of synthetic instances for a single 30-minute ISS treadmill session during Expedition 75: the [in-flight encounter](Encounter-ISS-Exp75-InFlight.html) and the [T2 treadmill device](Device-ISS-T2-Treadmill.html), three individual measures — [activity type](Observation-ISS-T2-Run-Type-001.html), [duration](Observation-ISS-T2-Run-Duration-001.html) and [mean heart rate](Observation-ISS-T2-Run-MeanHR-001.html) — the [session panel](Observation-ISS-T2-Run-Group-001.html) that groups them, the [weekly EVS summary](Observation-ISS-EVS-MinPerWeek-2025W23.html), and the [session procedure](Procedure-ISS-Exercise-Session-Proc-001.html).

The two JSON blocks below show the measure and the panel inline.

#### Example 1: SpaceExerciseActivityMeasure - Mean Heart Rate

An individual measure carries two codings: one from an established terminology (LOINC here, or the Physical Activity IG temporary codes for measures such as duration, which LOINC does not cover well) and one from [SpaceExerciseModalityCS](CodeSystem-space-exercise-modality-cs.html) saying which piece of space hardware produced it.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-exercise-activity-measure"
    ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "activity",
          "display": "Activity"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "8867-4",
        "display": "Heart rate"
      },
      {
        "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-exercise-modality-cs",
        "code": "treadmill",
        "display": "Treadmill running in microgravity"
      }
    ]
  },
  "subject": {
    "reference": "Patient/ExampleAstronaut"
  },
  "effectiveDateTime": "2025-06-01T13:30:00Z",
  "valueQuantity": {
    "value": 148,
    "unit": "beats/min",
    "system": "http://unitsofmeasure.org",
    "code": "/min"
  },
  "extension": [
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference": {
        "reference": "Encounter/ISS-Exp75-InFlight"
      }
    }
  ]
}
```

The duration measure for the same session is identical in shape, with the Physical Activity IG coding `duration` from `http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes` in place of the LOINC coding and a value of 30 min.

#### Example 2: SpaceExerciseActivityGroup - Session Panel

The panel carries no value of its own. It names the three measures above through `hasMember`, and adds the device and harness load that apply to the session as a whole.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-exercise-activity-group"
    ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "activity",
          "display": "Activity"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes",
        "code": "PAPanel",
        "display": "Physical activity panel"
      }
    ],
    "text": "ISS T2 treadmill session"
  },
  "subject": {
    "reference": "Patient/ExampleAstronaut"
  },
  "effectivePeriod": {
    "start": "2025-06-01T13:00:00Z",
    "end": "2025-06-01T13:30:00Z"
  },
  "hasMember": [
    {
      "reference": "Observation/ISS-T2-Run-Type-001"
    },
    {
      "reference": "Observation/ISS-T2-Run-Duration-001"
    },
    {
      "reference": "Observation/ISS-T2-Run-MeanHR-001"
    }
  ],
  "extension": [
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference": {
        "reference": "Encounter/ISS-Exp75-InFlight"
      }
    },
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/exercise-device",
      "valueReference": {
        "reference": "Device/ISS-T2-Treadmill"
      }
    },
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/harness-load",
      "valueQuantity": {
        "value": 75,
        "unit": "%",
        "system": "http://unitsofmeasure.org",
        "code": "%"
      }
    }
  ]
}
```

### Regulatory and Standards Alignment

- **NASA-STD-3001 Vol. 2**: Crew health standards including exercise countermeasure requirements
- **ISS Exercise Countermeasures**: Operational requirements documents
- **Physical Activity Implementation Guide (FHIR)**: Base architecture for activity tracking
- **LOINC**: Standard codes for exercise and vital sign measurements
- **SNOMED CT**: Clinical terminology for procedures and findings

### Future Directions

#### Advanced Exercise Equipment

- **Artificial gravity centrifuges** for short-radius AG exercise on Gateway and Mars transit vehicles
- **Exoskeleton-assisted exercise** providing adjustable resistance
- **Virtual reality integration** for motivation and biomechanical guidance

#### Personalized Exercise Prescriptions

- **AI-driven optimization** based on real-time physiologic response
- **Genetic markers** influencing response to exercise countermeasures
- **Bone turnover biomarkers** enabling dynamic adjustment of loading protocols

#### Planetary Surface Operations

- **Partial gravity exercise** protocols for Moon (1/6 g) and Mars (3/8 g)
- **Suit-integrated exercise** enabling movement training in EVA suits
- **Reduced equipment mass** for surface habitat fitness systems

### Architectural Alignment

This content extends the existing **Fitness** / **Exercise Countermeasures** section of the Aerospace Medicine IG and integrates tightly with:
- Cardiovascular Countermeasures (LBNP, IJV hemodynamics, cephalad fluid shift)
- Neutral Buoyancy and EVA simulation
- Radiation Tracking
- Longitudinal astronaut health surveillance

It supports a unified **Physiologic Countermeasure + Hemostasis Monitoring** framework for exploration missions.

### Acknowledgements

NASA Cardiovascular & Vision Laboratory, UTHealth Houston McGovern Medical School, UNC School of Medicine, Beth Israel Deaconess Medical Center, DLR, and European Space Agency collaborators.

### References

#### Exercise Equipment and Protocols

- [Astronaut Exercise - NASA](https://www.nasa.gov/missions/station/iss-research/astronaut-exercise/)
- [Exercise Overview Technical Brief (NASA-STD-3001)](https://www.nasa.gov/wp-content/uploads/2023/12/ochmo-tb-031-exercise-overview.pdf)
- [Exercise Countermeasures Lab - NASA Glenn](https://www1.grc.nasa.gov/space/human-research-program/advanced-exercise-concepts/exercise-countermeasures-lab/)
- [Astronaut workout regimen on ISS](https://www.inverse.com/science/inside-the-extreme-workout-regimen-of-an-astronaut-stuck-at-the-international-space-station)
- [Countermeasures (ARED, CEVIS, T2) Critical Readiness Review (NASA NTRS)](https://ntrs.nasa.gov/citations/20100008451)

#### Research on Exercise Countermeasures

- [Effects of exercise countermeasures on multisystem function (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC9898566/)
- [Exercise in space: ESA approach to in-flight countermeasures (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC4971634/)
- [High intensity training during spaceflight: NASA Sprint Study (npj Microgravity)](https://www.nature.com/articles/s41526-020-00111-x)
- [Effects of Replacing Treadmill Running with Alternative Exercise Countermeasures (NASA NTRS)](https://ntrs.nasa.gov/citations/20240000929)
- [Entering a new era for exercise countermeasures in human spaceflight](https://physoc.onlinelibrary.wiley.com/doi/full/10.1113/EP093248)

#### Bone and Muscle Research

- [Counteracting Bone and Muscle Loss in Microgravity - NASA](https://www.nasa.gov/missions/station/iss-research/counteracting-bone-and-muscle-loss-in-microgravity/)
- [Bone and Mineral Evaluation and Analysis - NASA](https://www.nasa.gov/directorates/esdmd/hhp/bone-and-mineral-evaluation-and-analysis/)
- [How our bones adapt in space](https://ispyphysiology.com/2023/01/11/how-our-bones-adapt-in-space/)
- [Pre-flight exercise and bone metabolism predict bone loss](https://bjsm.bmj.com/content/56/4/196)
- [Effect of active muscles on astronaut kinematics](https://pubmed.ncbi.nlm.nih.gov/36652027/)
- [The High-Bar and Low-Bar Back-Squats: A Biomechanical Analysis](https://pubmed.ncbi.nlm.nih.gov/28195975/)
- [MuscleMap: Whole Body Quantitative MRI](https://pubmed.ncbi.nlm.nih.gov/39590726/)
- [Astronaut physiological deconditioning (NASA/SP-20250000273)](https://www.nasa.gov/wp-content/uploads/2025/02/sp-20250000273.pdf)
- [Staying Strong: Spaceflight Muscle Loss Study](https://www.nasa.gov/ames/space-biosciences/staying-strong-spaceflight-muscle-loss-study-aims-to-benefit-patients-on-earth/)
- [Musculoskeletal responses to spaceflight: mechanisms, countermeasures, and key gaps](https://pubmed.ncbi.nlm.nih.gov/41217000/)

#### Exercise Prescription Standards

- NASA. *Astronaut Exercise.* NASA ISS Research. [https://www.nasa.gov/missions/station/iss-research/astronaut-exercise/](https://www.nasa.gov/missions/station/iss-research/astronaut-exercise/) Source for the ISS daily exercise prescription cited above.
- NASA Office of the Chief Health and Medical Officer. *Exercise Overview Technical Brief* (OCHMO-TB-031), supporting NASA-STD-3001. [https://www.nasa.gov/wp-content/uploads/2023/12/ochmo-tb-031-exercise-overview.pdf](https://www.nasa.gov/wp-content/uploads/2023/12/ochmo-tb-031-exercise-overview.pdf) Source for harness loading and exercise countermeasure requirements.
- NASA. *Countermeasures (ARED, CEVIS, T2) Critical Readiness Review.* NASA NTRS 20100008451. [https://ntrs.nasa.gov/citations/20100008451](https://ntrs.nasa.gov/citations/20100008451) Source for the ARED load and T2 speed figures cited above.
- U.S. Department of Health and Human Services. *Physical Activity Guidelines for Americans*, 2nd edition, 2018. Source for the 150 minutes per week of moderate-to-vigorous activity that the Exercise Vital Sign screens against.
- LeBlanc A, Rowe R, Schneider V, Evans H, Hedrick T. "Regional muscle loss after short duration spaceflight." *Aviation, Space, and Environmental Medicine* 66, no. 12 (1995): 1151-1154. Source for the early short-duration antigravity muscle loss figure.
- LeBlanc AD, Spector ER, Evans HJ, Sibonga JD. "Skeletal responses to space flight and the bed rest analog: a review." *Journal of Musculoskeletal and Neuronal Interactions* 7, no. 1 (2007): 33-47. Source for the 1-1.5% per month bone mineral density loss figure.

#### Exercise Countermeasures and Venous Hemostasis

- NASA Human Research Program. Exercise and Fitness, Venous Flow, and Space Hemostasis workshop presentations. Presented material; no public URL identified.
