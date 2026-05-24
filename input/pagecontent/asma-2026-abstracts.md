### AsMA 2026 Abstracts - FHIR Mapping

The Aerospace Medical Association (AsMA) 2026 Interactive Poster Session produced approximately 120 abstracts covering spaceflight medicine research. This page summarizes how key abstracts map to FHIR artifacts in this Implementation Guide.

#### Abstract-to-Profile Mapping

| Abstract | Topic | FHIR Profiles |
|----------|-------|---------------|
| 47 | Cardiac arrhythmia risk | [SpaceECGObservation](StructureDefinition-space-ecg-observation.html) |
| 49 | Ultrasound joint health | [SpaceJointHealthAssessment](StructureDefinition-space-joint-health-assessment.html) |
| 50 | N-Acetylcysteine radioprotection | [RadioprotectiveMedication](StructureDefinition-radioprotective-medication.html), [AntioxidantBiomarkerPanel](StructureDefinition-antioxidant-biomarker-panel.html) |
| 51 | Oral body temperature | [SpaceBodyTemperature](StructureDefinition-space-body-temperature.html) |
| 52 | CGM in spaceflight | [SpaceCGMDevice](StructureDefinition-space-cgm-device.html), [SpaceCGMObservation](StructureDefinition-space-cgm-observation.html) |
| 53 | Torpor and sleep | [SpaceSleepStudy](StructureDefinition-space-sleep-study.html), [CircadianRhythmAssessment](StructureDefinition-circadian-rhythm-assessment.html) |
| 54 | RBC rehydration | [SpaceBloodProduct](StructureDefinition-space-blood-product.html), [SpaceTransfusionProcedure](StructureDefinition-space-transfusion-procedure.html) |
| 57 | Austere blood banking | [SpaceBloodProduct](StructureDefinition-space-blood-product.html) |
| 68 | UWF OCT-A for SANS | [SANSAssessment](StructureDefinition-sans-assessment.html) |
| 108 | Spaceflight bone health | [BoneDensityObservation](StructureDefinition-bone-density-observation.html) |
| 110 | BMD measurement | [BoneDensityObservation](StructureDefinition-bone-density-observation.html) |
| 111 | Space travel anaemia | [SpaceflightAnemiaPanel](StructureDefinition-spaceflight-anemia-panel.html) |
| 112 | DCS susceptibility | [DCSRiskAssessment](StructureDefinition-dcs-risk-assessment.html) |
| 113-114 | Surgical procedures, 3D printing | [SpaceSurgicalProcedure](StructureDefinition-space-surgical-procedure.html) |
| 117 | POCUS in austere environments | [SpacePOCUS](StructureDefinition-space-pocus.html) |
| 120 | Artemis II health stack | [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html), [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html) |

#### Clinical Domain Coverage

The abstracts span the following clinical domains, each with dedicated FHIR profiles:

- **Motion Sickness** - SMS/TRMS diagnosis, antiemetic medications, adverse events, care plans
- **Temperature Monitoring** - Oral body temperature with circadian context
- **Continuous Glucose Monitoring** - CGM device, observations, summary reports
- **Sleep and Circadian Rhythms** - Sleep architecture, actigraphy, circadian assessment
- **Transfusion Medicine** - Blood products, transfusion procedures, specimen collection
- **Radioprotective Countermeasures** - Antioxidant medications and biomarker panels
- **Cardiac Monitoring** - ECG observations with arrhythmia classification
- **Ocular Health** - SANS assessment with OCT-A parameters
- **Musculoskeletal** - Bone density and joint health assessment
- **Hematology** - Spaceflight anemia panel
- **Austere Procedures** - POCUS and surgical procedures
- **EVA Risk** - Decompression sickness risk assessment

#### Shared Infrastructure

All profiles leverage shared extensions for mission context:

- [MissionContext](StructureDefinition-mission-context.html) - Links to mission encounter
- [GravityContext](StructureDefinition-gravity-context.html) - Gravitational environment
- [MissionPhase](StructureDefinition-mission-phase.html) - Mission phase timing
- [FlightDay](StructureDefinition-flight-day.html) - Flight day number
- [EvidenceSource](StructureDefinition-evidence-source.html) - Research evidence links
