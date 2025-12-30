## Exercise and Fitness

### Overview

When astronaut Scott Kelly completed his 340-day mission aboard the International Space Station, he spent an average of **2.5 hours every single day** exercisingrunning on a treadmill with a harness pulling him down to simulate Earth's gravity, lifting weights on the Advanced Resistive Exercise Device (ARED), and cycling on the stationary bike. Despite this heroic effort, he still lost significant bone density and muscle mass. This stark reality reveals the fundamental challenge of human spaceflight: in microgravity, the human body begins to atrophy almost immediately, and exercise becomes not just fitness training, but a **medical countermeasure critical to mission success and crew survival**.

On the ISS, astronauts face a paradox: they must exercise more intensely than Olympic athletes, yet they're doing it in an environment where even simple movements require conscious effort. The ARED system can simulate loads exceeding 600 pounds, making it possible to perform squats and deadlifts in space. The T2 treadmill, vibration-isolated to prevent shaking the entire station, allows running at speeds up to 12 mph while a harness system pulls the astronaut downward with carefully calibrated force. Every workout session generates data: heart rate, simulated body weight, power output, exercise duration, and recovery metricsall critical for physicians on the ground to assess whether the crew's fitness program is preventing the inexorable physiologic decline of spaceflight.

### FHIR Implementation Architecture

#### Core Profiles

| Profile | Purpose | Key Features |
|---------|---------|--------------|
| **SpaceExerciseActivityMeasure** | Individual exercise measurements | Duration, intensity, heart rate, power output, modality-specific metrics |
| **SpaceExerciseActivityGroup** | Panel grouping related measures | Links type, duration, intensity for a single session; mission context |
| **SpaceEVSMinutesPerWeek** | Weekly exercise volume summary | EVS (Exercise Vital Sign) minutes, aggregated across modalities |
| **SpaceExerciseSession** | Procedural record of exercise event | Links to prescriptions, goals, devices, and observation panels |

These profiles extend standard FHIR resources while incorporating space-specific terminology and requirements, following the same architectural patterns established in radiation and nutrition tracking modules.

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
- **LOINC**: Exercise frequency (89555-7), type of exercise (73985-4), heart rate measurements
- **SNOMED CT**: Exercise procedures, musculoskeletal conditions
- **NASA Standards**: Exercise countermeasure requirements

### Physiologic and Environmental Considerations

Exercise in microgravity is fundamentally different from Earth-based trainingit's not about athletic performance enhancement, but about **preventing catastrophic physiologic deterioration**. Picture an astronaut six months into a mission: without exercise, their bones would be losing 1-2% of their mass every month, their muscles would have atrophied by 20%, and their cardiovascular system would have adapted to the point where standing up after landing could cause them to faint. Exercise is the primary countermeasure against this collapse.

#### Muscle Atrophy

- Antigravity muscles (legs, back) lose mass at **1-2% per week** without countermeasures
- Type I slow-twitch fibers convert to Type II fast-twitch, reducing endurance capacity
- ARED resistive training provides loads up to **600 lbs equivalent** to maintain muscle stimulus
- Eccentric loading (muscle lengthening under tension) is critical but difficult to achieve in microgravity

#### Bone Loss

- Weight-bearing bones lose **1-1.5% density per month** in microgravity
- Hip and spine are most affected, increasing fracture risk post-landing
- Ground reaction forces during treadmill running with harness (70-80% body weight) provide mechanical loading
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

- **EVS (Exercise Vital Sign)**: Total minutes of moderate-to-vigorous physical activity per week
- Target: **150+ minutes MVPA per week** minimum
- Actual ISS prescription: **~2.5 hours per day, 6 days per week** = 900 minutes/week
- Modality breakdown: aerobic vs. resistive vs. combination

#### Longitudinal Assessments

- **VO₂max testing**: Periodic maximal exercise tests pre-flight, in-flight, post-flight
- **Muscle ultrasonography**: Quadriceps and gastrocnemius thickness
- **Bone density scans**: DXA pre-flight and post-flight
- **Functional performance**: Jump height, grip strength, sit-to-stand tests

#### Risk Threshold Alerts

- Heart rate anomalies during exercise (too high or too low for prescribed intensity)
- Declining power output trends over mission duration
- Insufficient weekly EVS minutes (<150 min/week)
- Equipment malfunction or calibration drift

### Data Model Architecture

#### Core FHIR Resources

- **Observation** —SpaceExerciseActivityMeasure, SpaceExerciseActivityGroup, SpaceEVSMinutesPerWeek
- **Procedure** —SpaceExerciseSession
- **Device** —Exercise equipment (T2 Treadmill, ARED, CEVIS)
- **ServiceRequest** —Exercise prescriptions
- **Goal** —Fitness targets (maintain VO₂max, bone density goals)

#### Extensions

- **missionContext** (consistent with radiation, nutrition, and NBL modules)
- **exerciseDevice** (reference to specific equipment used)
- **harnessLoad** (percentage body weight for treadmill sessions)
- **derivedFromGroup** (links EVS summary to constituent activity groups)

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

### Implementation Examples

#### Example 1: SpaceExerciseActivityMeasure - Duration

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/space-exercise-activity-measure"
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
        "code": "duration",
        "display": "Duration of physical activity"
      },
      {
        "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs",
        "code": "treadmill",
        "display": "Treadmill running in microgravity"
      }
    ]
  },
  "subject": {
    "reference": "Patient/AstronautExample"
  },
  "effectiveDateTime": "2025-06-01T13:30:00Z",
  "valueQuantity": {
    "value": 30,
    "unit": "min",
    "system": "http://unitsofmeasure.org",
    "code": "min"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "iss-expedition-75"
          }
        ]
      }
    }
  ]
}
```

#### Example 2: SpaceExerciseActivityGroup - Panel

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/space-exercise-activity-group"
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
    "reference": "Patient/AstronautExample"
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
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "iss-expedition-75"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device",
      "valueReference": {
        "reference": "Device/ISS-T2-Treadmill"
      }
    },
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load",
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
