# Artifacts Summary - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Environmental Monitoring API for Closed Biome Systems](StructureDefinition-EnvironmentalMonitoringLogicalModel.md) | A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses. |
| [Nutrition Product (logical model)](StructureDefinition-NutritionProduct.md) | A product used for nutritional purposes. Logical model mirroring the FHIR R5 NutritionProduct resource so that R4 implementations can exchange space food-item catalogues; instances carry resourceType NutritionProduct. |
| [Spacecraft Life Support Telemetry](StructureDefinition-SpacecraftLifeSupportTelemetry.md) | A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Astronaut and Space Tourist Medical Screening Questionnaire](Questionnaire-AstronautFlightReadinessQuestionnaire.md) | A medical screening form for astronaut or space tourism flight readiness, based on FAA Form 8500-8, NASA/ESA standards, and commercial vendor practices. |
| [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md) | FAA Form 8500-8 Application for Airman Medical Certificate converted to FHIR Questionnaire format |
| [G-SHOCK Centrifugal Trainer Eligibility Questionnaire](Questionnaire-GShockEligibility.md) | Pre-training screening questionnaire to determine eligibility for G-SHOCK multi-axis gimbal training |
| [MEDB 1.10 Ophthalmologic Examination](Questionnaire-MEDB110OphthalmologicExamQuestionnaire.md) | NASA Medical Requirements Integration Document for ophthalmologic examination. Captures comprehensive eye examination data for monitoring Spaceflight Associated Neuro-ocular Syndrome (SANS). |
| [MEDB 1.11 Body Composition/DEXA](Questionnaire-MEDB111BodyCompositionQuestionnaire.md) | NASA Medical Requirements Integration Document for body composition assessment using DEXA. |
| [MEDB 1.14 Body Mass Measurement](Questionnaire-MEDB114BodyMassQuestionnaire.md) | NASA Medical Requirements Integration Document for body mass measurement tracking. |
| [MEDB 1.6 Resting ECG](Questionnaire-MEDB16RestingECGQuestionnaire.md) | NASA Medical Requirements Integration Document for resting 12-lead ECG assessment. Captures pre- and postflight ECG recordings for cardiovascular evaluation of long-duration flight crew members. |
| [MEDB 1.8 Audiometry](Questionnaire-MEDB18AudiometryQuestionnaire.md) | NASA Medical Requirements Integration Document for audiometric assessment. Captures pre- and postflight hearing threshold data to monitor crew hearing status. |
| [MEDB 1.9 Dental Examination](Questionnaire-MEDB19DentalExamQuestionnaire.md) | NASA Medical Requirements Integration Document for dental examination. Captures comprehensive dental assessment data for spaceflight crew members. |
| [MEDB 2.1 Routine Laboratory Panel](Questionnaire-MEDB21RoutineLabPanelQuestionnaire.md) | NASA Medical Requirements Integration Document for routine laboratory panel. Captures comprehensive blood chemistry, hematology, and urinalysis data for spaceflight crew members. |
| [MEDB 2.2 MRSA Screening](Questionnaire-MEDB22MRSAScreeningQuestionnaire.md) | NASA Medical Requirements Integration Document for MRSA screening. Screens crew members for Methicillin-resistant Staphylococcus aureus colonization prior to spaceflight. |
| [MEDB 2.3 Tuberculosis Testing](Questionnaire-MEDB23TBTestingQuestionnaire.md) | NASA Medical Requirements Integration Document for tuberculosis screening. Screens crew members for TB infection prior to spaceflight. |
| [MEDB 2.4 H. pylori Screening](Questionnaire-MEDB24HpyloriScreeningQuestionnaire.md) | NASA Medical Requirements Integration Document for Helicobacter pylori screening. Screens crew members for H. pylori infection prior to long-duration spaceflight. |
| [MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry](Questionnaire-MEDB31RadiationMonitoringQuestionnaire.md) | NASA Medical Requirements Integration Document for radiation monitoring and crew personal dosimetry. Captures crew radiation exposure data for occupational exposure documentation and health risk assessment. |
| [MEDB 5.1 Aerobic Fitness Assessment](Questionnaire-MEDB51AerobicFitnessQuestionnaire.md) | NASA Medical Requirements Integration Document for aerobic fitness assessment. Captures VO2max and related cardiovascular fitness data for spaceflight crew members. |
| [MEDB 5.2 Strength Assessment](Questionnaire-MEDB52StrengthAssessmentQuestionnaire.md) | NASA Medical Requirements Integration Document for muscle strength assessment. Captures isokinetic and isometric strength data for spaceflight crew members. |
| [MEDB 5.3 Exercise Prescription](Questionnaire-MEDB53ExercisePrescriptionQuestionnaire.md) | NASA Medical Requirements Integration Document for exercise prescription. Documents in-flight exercise countermeasures protocol and adherence. |
| [MEDB 6.1 EVA Medical Requirements](Questionnaire-MEDB61EVAMedicalRequirementsQuestionnaire.md) | NASA Medical Requirements Integration Document for EVA medical requirements. Documents medical clearance, prebreathe protocol, and health monitoring for extravehicular activities. |
| [MEDB 7.1 Preflight Psychiatric/Psychological Status Check](Questionnaire-MEDB71PsychStatusQuestionnaire.md) | NASA Medical Requirements Integration Document for preflight behavioral health assessment. Captures psychiatric/psychological assessment of behavioral readiness for flight and review of psychological services. |
| [MEDB 7.4 Crew Dynamics Assessment](Questionnaire-MEDB74CrewDynamicsQuestionnaire.md) | NASA Medical Requirements Integration Document for crew dynamics assessment. Evaluates crew cohesion, interpersonal relationships, team functioning, and conflict management throughout mission phases. |
| [MEDB 7.5 Family Support Evaluation](Questionnaire-MEDB75FamilySupportQuestionnaire.md) | NASA Medical Requirements Integration Document for family support evaluation. Assesses family support systems, identifies needs, and coordinates support services throughout mission phases. |
| [MR008L Medical Hardware Maintenance](Questionnaire-MR008LMedicalHardwareMaintenanceQuestionnaire.md) | NASA Medical Requirements Integration Document for medical hardware maintenance. Tracks calibration schedules, preventive maintenance, and equipment functionality verification. |
| [MR022S Air Quality Monitoring](Questionnaire-MR022SAirQualityQuestionnaire.md) | NASA Medical Requirements Integration Document for atmospheric monitoring. Tracks air quality parameters to ensure crew health and safety. |
| [MR026L Reconditioning Assessment](Questionnaire-MR026LReconditioningQuestionnaire.md) | NASA Medical Requirements Integration Document for postflight reconditioning. Tracks crew recovery and rehabilitation progress after long-duration spaceflight. |
| [MR032L Telemedicine Setup](Questionnaire-MR032LTelemedicineSetupQuestionnaire.md) | NASA Medical Requirements Integration Document for telemedicine setup and operations. Configures communication links, verifies equipment, and ensures readiness for remote medical support. |
| [MR036L Medical Kit Inventory](Questionnaire-MR036LMedicalKitInventoryQuestionnaire.md) | NASA Medical Requirements Integration Document for medical kit inventory management. Tracks medical supplies, equipment status, and expiration dates aboard ISS. |
| [MR050L Pharmaceutical Management](Questionnaire-MR050LPharmaceuticalManagementQuestionnaire.md) | NASA Medical Requirements Integration Document for pharmaceutical management aboard ISS. Tracks medication inventory, storage conditions, dispensing, and stability monitoring. |
| [MR051L Water Quality Assessment](Questionnaire-MR051LWaterQualityQuestionnaire.md) | NASA Medical Requirements Integration Document for water quality monitoring. Tracks potable and technical water quality parameters aboard the International Space Station. |
| [MR054L Microbial Monitoring](Questionnaire-MR054LMicrobialMonitoringQuestionnaire.md) | NASA Medical Requirements Integration Document for microbial monitoring. Tracks microbial populations in air, water, and surfaces aboard ISS. |
| [MR087S EVA Prebreathe Protocol](Questionnaire-MR087SEVAPrebreathQuestionnaire.md) | NASA Medical Requirements Integration Document for EVA prebreathe protocol. Tracks oxygen prebreathe procedures to prevent decompression sickness. |
| [MR092L Solar Particle Event Protocol](Questionnaire-MR092LSPEProtocolQuestionnaire.md) | NASA Medical Requirements Integration Document for Solar Particle Event protocol. Monitors SPE alerts, coordinates crew protective actions, and tracks exposure during events. |
| [MR093L Radiation Contingency](Questionnaire-MR093LRadiationContingencyQuestionnaire.md) | NASA Medical Requirements Integration Document for radiation contingency events. Documents unexpected radiation events, crew response, and medical assessment. |
| [NASA HERA Analog Mission Application](Questionnaire-HERAAnalogMissionApplication.md) | Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ARCHeR Actigraphy Observation](StructureDefinition-archer-actigraphy-observation.md) | Actigraphy observation from the Actigraphy for Circadian Health during Exploration Research (ARCHeR) investigation |
| [AVATAR Organ-on-Chip Device](StructureDefinition-avatar-organ-chip.md) | Organ-on-chip (microphysiological system) device from the AVATAR investigation for tissue-chip-based monitoring in spaceflight |
| [Actigraphy Observation](StructureDefinition-actigraphy-observation.md) | Wrist actigraphy-derived sleep-wake and activity metrics during spaceflight |
| [Advanced Dive Profile](StructureDefinition-advanced-dive-profile.md) | Comprehensive dive profile with enhanced data collection and regulatory compliance |
| [Antiemetic Care Plan](StructureDefinition-antiemetic-care-plan.md) | Care plan for antiemetic prophylaxis and rescue protocols across mission phases |
| [Antiemetic Medication](StructureDefinition-antiemetic-medication.md) | Antiemetic medications used for space motion sickness prophylaxis and treatment |
| [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md) | Record of antiemetic medication administration during space missions |
| [Antioxidant Biomarker Panel](StructureDefinition-antioxidant-biomarker-panel.md) | Panel of oxidative stress and antioxidant status biomarkers for monitoring radioprotective countermeasure efficacy |
| [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md) | Radiation exposure observation for deep space missions with GCR vs SPE differentiation and shielding context |
| [Astrodynamics Observation](StructureDefinition-astrodynamics-observation.md) | An observation of a satellite or celestial object's orbital characteristics, using orbital elements. |
| [Astronaut Patient Profile](StructureDefinition-astronaut.md) | Patient profile for astronauts and space travelers |
| [Autonomous Medical Encounter](StructureDefinition-autonomous-medical-encounter.md) | Encounter profile for crew-led medical events with no real-time ground support due to communication delays |
| [BFRT Activity Definition](StructureDefinition-bfrt-activity-definition.md) | Prescribed BFRT protocol defining exercise parameters, occlusion pressure targets, and sex-specific adaptations |
| [BFRT Care Plan](StructureDefinition-bfrt-care-plan.md) | Care plan for blood flow restriction training addressing bone loss and muscle atrophy countermeasures |
| [BFRT Device](StructureDefinition-bfrt-device.md) | Blood flow restriction training occlusion cuff device |
| [BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.md) | Outcome measurements from blood flow restriction training including musculoskeletal and bone biomarkers |
| [BFRT Procedure](StructureDefinition-bfrt-procedure.md) | Blood flow restriction training session performed in microgravity or partial gravity |
| [BLiSS Resource Output](StructureDefinition-bliss-resource-output.md) | Observation of bioregenerative life support system resource output quantities and rates |
| [Barotrauma Assessment](StructureDefinition-barotrauma-assessment.md) | Assessment of pressure-related injuries (barotrauma) |
| [Behavioral Health State](StructureDefinition-behavioral-health-state.md) | Point-in-time behavioral and psychological state assessment for aerospace missions. |
| [Biological Feedstock](StructureDefinition-biological-feedstock.md) | Biological feedstock or bioproduct used in or produced by biomanufacturing processes |
| [Biomanufacturing Procedure](StructureDefinition-biomanufacturing-procedure.md) | Biomanufacturing process execution for ISRU or life support production |
| [Bioreactor Device](StructureDefinition-bioreactor-device.md) | Bioreactor device for in-situ biomanufacturing including photobioreactors and fermentation vessels |
| [Bone Density Observation](StructureDefinition-bone-density-observation.md) | Bone mineral density measurement during spaceflight with method, site, and T/Z-score components |
| [Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md) | Quantifies acute and cumulative calorie deficits for astronauts |
| [Circadian Rhythm Assessment](StructureDefinition-circadian-rhythm-assessment.md) | Assessment of circadian rhythm parameters during spaceflight |
| [Commercial Space Equipment](StructureDefinition-space-equipment.md) | STUB - Device profile for commercial space equipment. |
| [Communication Session Assessment](StructureDefinition-communication-session-assessment.md) | Assessment of communication system performance during underwater training |
| [Cumulative Radiation Dose](StructureDefinition-cumulative-radiation-dose.md) | Cumulative radiation dose over daily, weekly, 30-day, annual, mission and career periods. |
| [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md) | Longitudinal, integrated measure of cumulative stress burden analogous to cumulative radiation dose. |
| [Decompression Protocol](StructureDefinition-decompression-protocol.md) | Standardized decompression procedures for diving operations and space analog training |
| [Decompression Sickness](StructureDefinition-decompression-sickness.md) | Decompression sickness occurring during diving or altitude training |
| [Decompression Sickness Risk Assessment](StructureDefinition-dcs-risk-assessment.md) | Individual DCS susceptibility assessment for EVA planning |
| [Dive Medical Clearance](StructureDefinition-dive-medical-clearance.md) | Medical clearance examination for diving operations |
| [Dive Profile](StructureDefinition-dive-profile.md) | Comprehensive dive profile including depth, time, and environmental data |
| [Diving Equipment](StructureDefinition-diving-equipment.md) | Equipment used for diving operations and underwater training |
| [EVA Suit Provisioning Record](StructureDefinition-eva-suit-provisioning-record.md) | Logistics record for EVA suit provisioning, delivery, and positioning |
| [Emergency Care Plan](StructureDefinition-emergency-care-plan.md) | Evacuation and contingency plan addressing spaceflight emergency conditions |
| [Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.md) | Emergency evacuation or abort action performed during spaceflight |
| [Emergency Risk Assessment](StructureDefinition-emergency-risk-assessment.md) | Probability prediction for spaceflight emergency types to support contingency planning |
| [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md) | Comprehensive hyperbaric oxygen therapy with full monitoring and safety protocols |
| [Environmental Monitoring](StructureDefinition-environmental-monitoring.md) | Profile for environmental monitoring. |
| [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md) | Record of an Artemis mission EVA (moonwalk) with duration, location, participants, suit device, and metabolic data |
| [Flow Directionality Index Observation](StructureDefinition-flow-directionality-index-observation.md) | FDI calculation with component times: FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total). Range [-1, 1]. |
| [Gimbal Screening](StructureDefinition-gimbal-screening.md) | Screening protocol for Multi Axis Gimbal training device. |
| [Habitat Environmental Monitoring](StructureDefinition-habitat-environmental-observation.md) | Observation of environmental conditions inside Mars habitat (pressure, O2, CO2, temperature, humidity, dust) |
| [Habitat Location](StructureDefinition-habitat-location.md) | Location profile for lunar habitats, Gateway modules, and landing sites with selenographic coordinates and region code |
| [Hydration Status Observation](StructureDefinition-hydration-status-observation.md) | Hydration status monitoring for space missions |
| [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md) | A medical facility equipped with a hyperbaric chamber for pressurized treatment |
| [Hyperbaric Treatment](StructureDefinition-hyperbaric-treatment.md) | Hyperbaric oxygen therapy or chamber treatment |
| [ISRU Production Log](StructureDefinition-isru-production-log.md) | Tracking ISRU propellant production (CH4/O2) for Mars return journey |
| [Immune Biomarker Panel](StructureDefinition-immune-biomarker-panel.md) | Panel of immune function biomarkers for monitoring spaceflight-associated immune dysregulation |
| [Internal Jugular Vein Area Observation](StructureDefinition-internal-jugular-vein-area-observation.md) | IJV cross-sectional area measured by ultrasound at end-diastole |
| [Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md) | IJV flow grade and Flow Directionality Index assessment via spectral pulse-wave Doppler |
| [Internal Jugular Vein Pressure Observation](StructureDefinition-internal-jugular-vein-pressure-observation.md) | IJV pressure measurement using ultrasound vessel wall near-closure method |
| [LBNP Countermeasure System](StructureDefinition-lbnp-countermeasure-system.md) | Lower Body Negative Pressure device with configurable pressure range |
| [Lower Body Negative Pressure Procedure](StructureDefinition-lower-body-negative-pressure-procedure.md) | LBNP session applying sub-atmospheric pressure to the lower body as a countermeasure for cephalad fluid shift |
| [MRID Questionnaire Profile](StructureDefinition-mrid-questionnaire.md) | Profile for NASA Medical Requirements Integration Document (MRID) questionnaires. This profile standardizes the structure and metadata for MEDB (Medical Evaluation Document Baseline) and MR (Medical Requirements) documents translated to FHIR Questionnaire resources for structured data capture.All MRID questionnaires follow a standard structure with groups for:* Medical Requirements Overview (MRID metadata)
* Preflight Training
* Preflight Activities
* In-Flight Activities
* Postflight Activities
* Data Delivery
* Domain-Specific Results (e.g., radiation doses, ECG findings)
* Postflight Debrief
The profile supports SDC-compatible extensions for:* Launch context (astronaut/patient reference)
* Observation extraction from QuestionnaireResponse
 |
| [Mars Crew Member Profile](StructureDefinition-mars-crew-member.md) | Patient profile for Mars crew with extensions for radiation career dose, flight certification, and baseline health metrics |
| [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md) | Record of Mars surface EVA with duration, location, participants, suit device, metabolic data, and dust exposure |
| [Mars Radiation Risk Assessment](StructureDefinition-mars-radiation-risk-assessment.md) | Radiation exposure risk assessment for long-duration deep space missions |
| [Metabolic Risk Summary](StructureDefinition-metabolic-risk-summary.md) | Evaluates risk from prolonged caloric deficits and metabolic stress |
| [Microbial Contamination Condition](StructureDefinition-microbial-contamination-condition.md) | Diagnosis of microbial contamination on spacecraft surfaces or equipment with planetary protection classification |
| [Microbial Contamination Risk](StructureDefinition-microbial-contamination-risk.md) | Forward contamination risk prediction for planetary protection compliance |
| [Microbial Viability Assay](StructureDefinition-microbial-viability-assay.md) | Microbial viability assay measuring colony-forming units or most probable number on spacecraft surfaces |
| [Mission Plan](StructureDefinition-mission-plan.md) | Artemis mission timeline with phases, events, constraints, and medical protocols |
| [Mission Risk Assessment](StructureDefinition-space-risk-assessment.md) | Risk assessment for space missions, covering mission-level, oncologic, musculoskeletal and other spaceflight risks. |
| [Mission Timeline Plan](StructureDefinition-mission-timeline-plan.md) | Mars mission timeline with phases, events, EVA schedules, and medical protocols |
| [Multi-Omics Observation](StructureDefinition-multi-omics-observation.md) | Multi-omics analysis observation from astronaut molecular profiling |
| [NASA Standard Measures Observation](StructureDefinition-standard-measures-observation.md) | Standardized assessment from the NASA Spaceflight Standard Measures program for pre/in/post-flight comparison |
| [Neutral Buoyancy Facility](StructureDefinition-neutral-buoyancy-facility.md) | Facility for underwater astronaut training |
| [Neutral Buoyancy Training Session](StructureDefinition-neutral-buoyancy-session.md) | Training session in a neutral buoyancy facility for EVA simulation, including communication systems, safety protocols, regulatory compliance and environmental conditions |
| [Omics Risk Assessment](StructureDefinition-omics-risk-assessment.md) | Personalized risk assessment derived from multi-omics molecular profiles |
| [Parabolic Flight Exposure](StructureDefinition-parabolic-flight-exposure.md) | Parabolic flight session providing brief microgravity exposure for research |
| [Personalized Countermeasure Plan](StructureDefinition-personalized-countermeasure-plan.md) | Individualized countermeasure plan informed by multi-omics data for spaceflight health optimization |
| [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md) | Documentation of psychological countermeasure interventions for behavioral health in aerospace missions. |
| [Radiation Detection Device](StructureDefinition-radiation-detector.md) | Device profile for personal and area radiation monitors used in spaceflight, with detector-property slices. |
| [Radioprotective Medication](StructureDefinition-radioprotective-medication.md) | Radioprotective and antioxidant medications used as countermeasures against space radiation |
| [Radioprotective Medication Administration](StructureDefinition-radioprotective-administration.md) | Administration of radioprotective medication during space missions, typically timed relative to radiation exposure |
| [Regulatory Compliance Assessment](StructureDefinition-regulatory-compliance-assessment.md) | Assessment of compliance with diving and space medicine regulatory standards |
| [SANS Assessment](StructureDefinition-sans-assessment.md) | Spaceflight-Associated Neuro-ocular Syndrome assessment including OCT, OCT-A, and clinical findings |
| [Space Adverse Event](StructureDefinition-space-adverse-event.md) | Adverse events from medications or procedures during spaceflight |
| [Space Blood Product](StructureDefinition-space-blood-product.md) | Blood products adapted for spaceflight including lyophilized RBCs and freeze-dried plasma |
| [Space Body Temperature Observation](StructureDefinition-space-body-temperature.md) | Body temperature measurement during spaceflight with method, circadian context, and environmental factors |
| [Space CGM Device](StructureDefinition-space-cgm-device.md) | Continuous glucose monitoring device used during spaceflight |
| [Space CGM Observation](StructureDefinition-space-cgm-observation.md) | Continuous glucose monitoring observation during spaceflight |
| [Space CGM Summary Report](StructureDefinition-space-cgm-summary.md) | Summary report of CGM data over a reporting period during spaceflight |
| [Space ECG Observation](StructureDefinition-space-ecg-observation.md) | Electrocardiogram observation during spaceflight for cardiac arrhythmia monitoring |
| [Space Emergency Condition](StructureDefinition-space-emergency-condition.md) | Diagnosis of an emergency situation during spaceflight requiring immediate response |
| [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md) | Panel observation grouping related exercise measures for a single session (type, duration, intensity, HR) |
| [Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md) | Individual exercise measurement (duration, intensity, heart rate, power output) for space-based physical activity |
| [Space Exercise Session](StructureDefinition-space-exercise-session.md) | Procedural record of a space-based exercise event, linking prescriptions, goals, devices, and observations |
| [Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md) | Weekly exercise volume derived from mission exercise sessions (EVS - Exercise Vital Sign) |
| [Space Health Condition](StructureDefinition-space-condition.md) | Health conditions specific to outerspace environment. |
| [Space Health Procedure](StructureDefinition-space-procedure.md) | Health procedures performed in the spaceflight environment. Constrains Procedure for use with astronaut and analog-crew records. |
| [Space Insurance Contract](StructureDefinition-space-insurance-contract.md) | STUB - Specialized contract coverage for space travel |
| [Space Joint Health Assessment](StructureDefinition-space-joint-health-assessment.md) | Ultrasound-based joint health assessment during spaceflight |
| [Space Molecular Sequence](StructureDefinition-space-molecular-sequence.md) | Molecular sequence data from astronaut genomic, transcriptomic, or proteomic analysis |
| [Space Motion Sickness Condition](StructureDefinition-space-motion-sickness-condition.md) | Diagnosis and tracking of space motion sickness, terrestrial re-entry motion sickness, and related vestibular disorders |
| [Space Nutrition Intake](StructureDefinition-space-nutrition-intake.md) | Documentation of actual daily intake and hydration events for space missions |
| [Space Nutrition Inventory Item](StructureDefinition-space-nutrition-inventory-item.md) | Tracks food stores aboard spacecraft or planetary habitats |
| [Space Nutrition Product](StructureDefinition-space-nutrition-product.md) | Space-rated food, supplements, and electrolytes with mission-specific properties |
| [Space Organization](StructureDefinition-space-org.md) | STUB - Organizations involved with astronautics and space travel. |
| [Space Point-of-Care Ultrasound (POCUS)](StructureDefinition-space-pocus.md) | Point-of-care ultrasound examination in austere spaceflight environments |
| [Space Radiation Exposure](StructureDefinition-space-radiation-exposure.md) | Radiation dose measurement for a crew member during a space mission, with mission context, radiation type, shielding and countermeasure extensions and detailed dosimetry components. |
| [Space Radiation Exposure Summary](StructureDefinition-space-radiation-summary.md) | Diagnostic report summarizing a crew member's radiation exposure over a mission or reporting period. |
| [Space Sleep Study Observation](StructureDefinition-space-sleep-study.md) | Sleep architecture observation during spaceflight including PSG and actigraphy-derived measures |
| [Space Specimen Collection](StructureDefinition-space-specimen-collection.md) | Specimen collected during spaceflight using microgravity-adapted methods |
| [Space Surgical Procedure](StructureDefinition-space-surgical-procedure.md) | Surgical procedure adapted for spaceflight austere environments, potentially using 3D-printed instruments |
| [Space Transfusion Procedure](StructureDefinition-space-transfusion-procedure.md) | Blood transfusion procedure adapted for spaceflight and austere environments |
| [Space Vehicle](StructureDefinition-space-vehicle.md) | STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc) |
| [Space insurance](StructureDefinition-space-insurance.md) | STUB - Insurance plan for space travel |
| [Spaceflight Anemia Panel](StructureDefinition-spaceflight-anemia-panel.md) | Panel of hematological markers for spaceflight-associated anemia assessment |
| [Spaceflight Specimen](StructureDefinition-spaceflight-specimen.md) | Biological specimen collected during spaceflight using microgravity-adapted methods |
| [Sterilization Procedure](StructureDefinition-sterilization-procedure.md) | Sterilization procedure for planetary protection bioburden reduction (UV, DHMR, VHP, etc.) |
| [Suit Redundancy Assessment](StructureDefinition-suit-redundancy-assessment.md) | Assessment of EVA suit redundancy status, consumables remaining, and maintenance schedule |
| [Telemedicine Communication](StructureDefinition-telemedicine-communication.md) | Telemedicine communication request with clinical data and imaging payloads |
| [Telemedicine Consult Request](StructureDefinition-telemedicine-consult-request.md) | Request for telemedicine consultation from crew medical officer to ground specialist |
| [Telemedicine Device](StructureDefinition-telemedicine-device.md) | Medical device used for telemedicine in spaceflight operations |
| [Telemedicine Encounter](StructureDefinition-telemedicine-encounter.md) | Telemedicine encounter between crew and ground medical team |
| [Ultrasound Monitoring Device](StructureDefinition-ultrasound-monitoring-device.md) | Point-of-care ultrasound device for IJV imaging (e.g., Butterfly iQ3) |
| [Underwater Communication System](StructureDefinition-underwater-communication-system.md) | Communication equipment for underwater training operations |
| [Underwater EVA Simulation](StructureDefinition-underwater-eva-simulation.md) | Extravehicular activity simulation conducted underwater |
| [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md) | Emergency response procedures during underwater training operations |
| [xEVAS Suit Definition](StructureDefinition-xevas-suit-definition.md) | Definition of an Exploration Extravehicular Activity Suit (xEVAS) including model, capabilities, and operational parameters |
| [xGeo Locations](StructureDefinition-space-location.md) | STUB - Locations in outerspace, past the Karman line, such as a space ship or space habitat. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Areographic Coordinates](StructureDefinition-areographic-coordinates.md) | Mars latitude and longitude for surface locations |
| [Biobank Location](StructureDefinition-biobank-location.md) | Storage location details for astronaut biobank specimens |
| [Cardiovascular Fitness Assessment](StructureDefinition-cardiovascular-fitness.md) | Assessment of cardiovascular fitness for diving |
| [Circadian Phase](StructureDefinition-circadian-phase.md) | Circadian rhythm phase at the time of observation |
| [Communication Delay](StructureDefinition-communication-delay.md) | Earth-Mars light-time delay for data transmission context |
| [Communication Latency](StructureDefinition-communication-latency.md) | One-way signal latency for telemedicine encounters, complementing the Mars-specific CommunicationDelay extension with general-purpose latency tracking |
| [Communication Systems Used](StructureDefinition-communication-systems.md) | Communication systems and protocols used during training |
| [Complication Monitoring](StructureDefinition-complication-monitoring.md) | Monitoring for treatment complications |
| [Crew Coordination Assessment](StructureDefinition-crew-coordination.md) | Assessment of crew coordination during simulation |
| [Decompression Algorithm Used](StructureDefinition-decompression-algorithm.md) | The specific decompression algorithm or table used |
| [Derived From Activity Group](StructureDefinition-derived-from-group.md) | Links aggregated metrics to source activity group observations |
| [Diving Medical Contraindications](StructureDefinition-diving-contraindications.md) | Medical conditions that contraindicate diving |
| [EVA Number](StructureDefinition-eva-number.md) | Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2) |
| [Emergency Procedures](StructureDefinition-emergency-procedures.md) | Emergency decompression procedures if applicable |
| [Emergency Response Assessment](StructureDefinition-underwater-emergency-response-ext.md) | Assessment of emergency response procedures |
| [Emergency Response Time](StructureDefinition-response-time.md) | Time from emergency recognition to response initiation |
| [Energy Expenditure](StructureDefinition-energy-expenditure.md) | Total daily energy expenditure in kcal/day |
| [Environmental Conditions](StructureDefinition-environmental-conditions.md) | Environmental conditions during training session |
| [Environmental Factors](StructureDefinition-environmental-factors.md) | Environmental conditions affecting decompression requirements |
| [Evidence Source](StructureDefinition-evidence-source.md) | Links clinical data to research evidence sources such as SHARED database entries or PubMed references |
| [Exercise Device](StructureDefinition-exercise-device.md) | Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS) |
| [Flight Day](StructureDefinition-flight-day.md) | Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N) |
| [Gravity Context](StructureDefinition-gravity-context.md) | Gravitational environment in which the observation, condition, or procedure occurred |
| [Harness Load](StructureDefinition-harness-load.md) | Percentage of body weight applied by harness during treadmill exercise |
| [Hydration Deficit](StructureDefinition-hydration-deficit.md) | Daily hydration deficit in liters per day |
| [Hyperbaric Chamber Capabilities](StructureDefinition-hyperbaric-capabilities.md) | Specific capabilities of the hyperbaric chamber |
| [Hyperbaric Chamber Configuration](StructureDefinition-chamber-configuration.md) | Configuration and setup of the hyperbaric chamber |
| [Hyperbaric Chamber Type](StructureDefinition-chamber-type.md) | Type of hyperbaric chamber (monoplace, multiplace, etc.) |
| [Hyperbaric Treatment Table](StructureDefinition-treatment-table.md) | Specific treatment table used (e.g., USN Table 6) |
| [ISRU System Status](StructureDefinition-isru-status.md) | In-Situ Resource Utilization system status and propellant production levels |
| [Inventory Risk Flag](StructureDefinition-inventory-risk-flag.md) | Risk level for nutrition inventory status |
| [Isolation Risk Factor](StructureDefinition-isolation-risk.md) | Captures isolation and confinement risk factors affecting behavioral health |
| [LBNP Pressure Level](StructureDefinition-lbnp-pressure-level.md) | Applied lower body negative pressure level in mmHg (negative values: -10 to -50 mmHg) |
| [Lessons Learned](StructureDefinition-lessons-learned.md) | Lessons learned and recommendations from emergency response |
| [Location Capabilities](StructureDefinition-location-capabilities.md) | Specific capabilities and equipment available at location |
| [Location Hierarchy](StructureDefinition-location-hierarchy.md) | Hierarchical relationship between locations (parent/child) |
| [Lunar Coordinates](StructureDefinition-lunar-coordinates.md) | Selenographic latitude and longitude for lunar surface locations |
| [MRID Discipline](StructureDefinition-mrid-discipline.md) | The medical discipline category for the medical requirement |
| [MRID Document Number](StructureDefinition-mrid-document-number.md) | The official MRID document identifier (e.g., MEDB 3.1, MR004L, MR005S) |
| [MRID Flight Duration Requirement](StructureDefinition-mrid-flight-duration.md) | Indicates the flight duration requirements for this medical requirement (e.g., 'All flights', '>= 30 days', '>= 180 days') |
| [MRID Frequency](StructureDefinition-mrid-frequency.md) | How often this medical requirement applies (e.g., 'Every ISS Increment', 'Annual', 'Per mission') |
| [MRID Launch Context](StructureDefinition-mrid-launch-context.md) | Context for pre-populating the questionnaire with astronaut/patient reference. Compatible with SDC launchContext pattern. |
| [MRID Sponsor](StructureDefinition-mrid-sponsor.md) | The NASA organizational sponsor responsible for the medical requirement |
| [Maximum Depth Reached](StructureDefinition-maximum-depth-reached.md) | Maximum depth reached during the dive requiring decompression |
| [Maximum Operating Pressure](StructureDefinition-maximum-pressure.md) | Maximum pressure the chamber can safely operate at, or maximum pressure reached during a hyperbaric treatment |
| [Maximum Training Depth](StructureDefinition-maximum-depth.md) | Maximum depth reached during training session |
| [Medical Intervention](StructureDefinition-medical-intervention.md) | Medical interventions provided during emergency response |
| [Mission Context](StructureDefinition-mission-context.md) | Links clinical observations and events to specific space missions |
| [Mission Context for Diagnostic Reports](StructureDefinition-diagnostic-report-mission-context.md) | Links diagnostic reports to specific space missions |
| [Mission Phase](StructureDefinition-mission-phase.md) | Phase of the space mission during which the clinical event occurred |
| [Occlusion Pressure](StructureDefinition-occlusion-pressure.md) | Applied limb occlusion pressure during blood flow restriction training |
| [Operational Status](StructureDefinition-operational-status.md) | Current operational status of the facility |
| [Oxygen Concentration](StructureDefinition-oxygen-concentration.md) | Oxygen concentration during treatment |
| [Oxygen Delivery Capability](StructureDefinition-oxygen-capability.md) | Oxygen delivery capabilities of the chamber |
| [Patient Monitoring](StructureDefinition-patient-monitoring.md) | Continuous patient monitoring during hyperbaric treatment |
| [Planetary Protection Category](StructureDefinition-planetary-protection-category.md) | COSPAR planetary protection category applicable to the procedure, device, or observation |
| [Pulmonary Function Assessment](StructureDefinition-pulmonary-function.md) | Assessment of respiratory function for diving |
| [Radiation Countermeasures](StructureDefinition-radiation-countermeasures.md) | Protective measures taken during radiation exposure |
| [Radiation Shielding](StructureDefinition-radiation-shielding.md) | Shielding mass and composition for habitat or vehicle |
| [Regulatory Compliance](StructureDefinition-regulatory-compliance.md) | Regulatory standards compliance during training session |
| [Rehydration Requirement](StructureDefinition-rehydration-requirement.md) | Amount of water required to prepare space food |
| [Rescue Procedures Used](StructureDefinition-rescue-procedures.md) | Specific rescue procedures and techniques employed |
| [Safety Protocols](StructureDefinition-safety-protocols.md) | Safety protocols and procedures followed during training |
| [Safety Stop Compliance](StructureDefinition-safety-stop-compliance.md) | Compliance with required safety stops during ascent |
| [Sex-Specific Protocol](StructureDefinition-sex-specific-protocol.md) | Indicates sex-specific adaptations to the BFRT protocol based on known differences in vascular and musculoskeletal response |
| [Shelf Life Decay](StructureDefinition-shelf-life-decay.md) | Degradation of nutritional value over time in space conditions |
| [Shielding Mass](StructureDefinition-shielding-mass.md) | Effective shielding mass in g/cm² |
| [Space Radiation Type](StructureDefinition-radiation-type.md) | Type of space radiation exposure |
| [Space Suit Configuration](StructureDefinition-suit-configuration.md) | Configuration of space suit simulator used in training |
| [Suit Operational State](StructureDefinition-suit-operational-state.md) | Current operational configuration state of an EVA suit |
| [Task Completion Metrics](StructureDefinition-task-completion-metrics.md) | Performance metrics for tasks completed during training |
| [Tool Usage Assessment](StructureDefinition-tool-usage-assessment.md) | Assessment of tool manipulation and usage effectiveness |
| [Total Decompression Time](StructureDefinition-total-decompression-time.md) | Total time required for decompression including all stops |
| [Training Session Duration](StructureDefinition-session-duration.md) | Duration of the neutral buoyancy training session |
| [Training Session Objectives](StructureDefinition-training-objectives.md) | Specific training objectives for the session |
| [Treatment Duration](StructureDefinition-treatment-duration.md) | Total duration of hyperbaric treatment |
| [Type of Emergency](StructureDefinition-emergency-type.md) | Classification of the emergency situation |
| [Vestibular Function Assessment](StructureDefinition-vestibular-assessment.md) | Assessment of inner ear and balance function |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Actigraphy Metric Value Set](ValueSet-actigraphy-metric-vs.md) | Actigraphy-derived metrics |
| [Aerospace Location Type](ValueSet-location-type-vs.md) | Location types for lunar and planetary mission locations |
| [All Artemis Devices](ValueSet-artemis-all-devices-vs.md) | Both certified and prototype Artemis devices (the complete Artemis device inventory) |
| [All Mars Mission Devices](ValueSet-mars-all-devices-vs.md) | Both certified and prototype Mars devices |
| [Antiemetic Medication Value Set](ValueSet-antiemetic-medication-vs.md) | Antiemetic medications for spaceflight use |
| [Antiemetic Protocol Value Set](ValueSet-antiemetic-protocol-vs.md) | Antiemetic administration protocols |
| [Antioxidant Biomarker Value Set](ValueSet-antioxidant-biomarker-vs.md) | Oxidative stress and antioxidant biomarkers |
| [Artemis Certified Devices](ValueSet-artemis-certified-devices-vs.md) | Flight-qualified Artemis mission hardware |
| [Artemis Landing Regions](ValueSet-artemis-landing-region-vs.md) | Candidate Artemis III south pole landing regions for Location bindings |
| [Artemis Missions](ValueSet-artemis-mission-vs.md) | All Artemis program missions I-XXX |
| [Artemis Prototype Devices](ValueSet-artemis-prototype-devices-vs.md) | Developmental and test Artemis hardware |
| [Artemis Radiation Measures](ValueSet-artemis-radiation-measure-vs.md) | Dose measure codes for ArtemisRadiationExposure.code |
| [BFRT Device Type Value Set](ValueSet-bfrt-device-type-vs.md) | BFRT device types |
| [BFRT Outcome Value Set](ValueSet-bfrt-outcome-vs.md) | BFRT outcome measures |
| [BFRT Protocol Value Set](ValueSet-bfrt-protocol-vs.md) | Blood flow restriction training protocol types |
| [BLiSS Output Value Set](ValueSet-bliss-output-vs.md) | Bioregenerative life support output types |
| [Behavioral Health Metrics Value Set](ValueSet-behavioral-health-metrics-vs.md) | Key behavioral health state metrics used in aerospace behavioral health monitoring. |
| [Behavioral Readiness Assessment](ValueSet-behavioral-readiness-vs.md) | Value set for behavioral/psychological flight readiness outcomes. |
| [Biomanufacturing Process Value Set](ValueSet-biomanufacturing-process-vs.md) | Biomanufacturing process types |
| [Bone Density Measurement Site Value Set](ValueSet-bone-density-site-vs.md) | Anatomical sites for BMD measurement |
| [Bone Density Method Value Set](ValueSet-bone-density-method-vs.md) | Methods for BMD measurement |
| [CGM Device Type Value Set](ValueSet-cgm-device-type-vs.md) | Types of CGM devices |
| [CGM Metrics Value Set](ValueSet-cgm-metrics-vs.md) | Standardized CGM metrics |
| [Calorie Deficit Risk Levels](ValueSet-calorie-deficit-risk-vs.md) | Risk categorization for caloric deficits |
| [Cardiac Monitoring Value Set](ValueSet-cardiac-monitoring-vs.md) | Cardiac monitoring parameters |
| [Circadian Phase Value Set](ValueSet-circadian-phase-vs.md) | Circadian rhythm phases |
| [Circadian Rhythm Assessment Value Set](ValueSet-circadian-assessment-vs.md) | Circadian rhythm assessment parameters |
| [Cognitive Performance Indicators Value Set](ValueSet-cognitive-performance-indicators-vs.md) | Cognitive and vigilance performance indicators relevant to operational readiness. |
| [DCS Risk Value Set](ValueSet-dcs-risk-vs.md) | DCS risk factors and outcomes |
| [Decompression Procedures](ValueSet-decompression-procedures-vs.md) | Standardized decompression procedures and protocols |
| [Diving Medical Contraindications](ValueSet-diving-contraindicated-conditions-vs.md) | Medical conditions that contraindicate diving activities |
| [Diving Medical Examinations](ValueSet-diving-medical-examinations-vs.md) | Types of medical examinations for diving fitness |
| [Dosimeter Types](ValueSet-dosimeter-type-vs.md) | Types of radiation dosimeters |
| [ECG Interpretation Results](ValueSet-ecg-interpretation-vs.md) | Value set for ECG interpretation outcomes. |
| [EVA Suit State Value Set](ValueSet-eva-suit-state-vs.md) | EVA suit operational states |
| [EVS Units](ValueSet-evs-units-vs.md) | Units for Exercise Vital Sign measurements |
| [Emergency Response Value Set](ValueSet-emergency-response-vs.md) | Emergency response and evacuation options |
| [Expanded Specimen Type Value Set](ValueSet-expanded-specimen-type-vs.md) | Specimen types for astronaut biobank |
| [Fitness Assessment Results](ValueSet-fitness-assessment-result-vs.md) | Value set for fitness test termination criteria and outcomes. |
| [Gimbal Contraindications](ValueSet-gimbal-contraindicated-conditions-vs.md) | Contraindicated conditions for riding a multi-axis gimbal |
| [Gravity Context Value Set](ValueSet-gravity-context-vs.md) | Gravitational environments for clinical context |
| [Graybiel Motion Sickness Severity Value Set](ValueSet-graybiel-severity-vs.md) | Graybiel severity grades for motion sickness |
| [Human Mars Mission Plans](ValueSet-crewed-mars-missions-vs.md) | Proposed and conceptual human mission architectures to Mars |
| [Hydration Types](ValueSet-hydration-type-vs.md) | Types of hydration products used in space |
| [Hyperbaric Chamber Capabilities](ValueSet-hyperbaric-capabilities-vs.md) | Capabilities available in hyperbaric chambers |
| [Hyperbaric Chamber Types](ValueSet-hyperbaric-chamber-type-vs.md) | Types of hyperbaric chambers |
| [IJV Flow Grade Value Set](ValueSet-ijv-flow-grade-vs.md) | Internal jugular vein flow grades |
| [ISS Crewmember Types](ValueSet-iss-crewmember-type-vs.md) | Value set for types of ISS crewmembers by agency. |
| [Immune Biomarker Value Set](ValueSet-immune-biomarker-vs.md) | Immune function biomarkers |
| [Isolation Syndrome Factors Value Set](ValueSet-isolation-syndrome-factors-vs.md) | Risk factors related to isolation and confinement that affect behavioral health. |
| [Location Capabilities Value Set](ValueSet-location-capabilities-vs.md) | Capabilities and services available at aerospace medicine locations |
| [MRID Launch Context Name](ValueSet-mrid-launch-context-name-vs.md) | Names for launch context variables in MRID questionnaires |
| [MRID Launch Context Type](ValueSet-mrid-launch-context-type-vs.md) | FHIR resource types for launch context in MRID questionnaires |
| [Macronutrient Metrics](ValueSet-macronutrient-metrics-vs.md) | Measurement types for macronutrient tracking |
| [Mars Landing Sites](ValueSet-mars-landing-sites-vs.md) | Candidate landing sites for human Mars missions |
| [Mars Mission Devices - Certified](ValueSet-mars-certified-devices-vs.md) | Flight-qualified hardware for Mars missions |
| [Mars Mission Devices - Prototype](ValueSet-mars-prototype-devices-vs.md) | Developmental and test hardware for Mars missions |
| [Mars Missions](ValueSet-mars-missions-vs.md) | All Mars missions (robotic and human, completed and planned) |
| [Microbial Contaminant Type Value Set](ValueSet-microbial-contaminant-type-vs.md) | Types of microbial contamination |
| [Microgravity Countermeasure Value Set](ValueSet-microgravity-countermeasure-vs.md) | Countermeasure interventions for microgravity cardiovascular effects |
| [Mission Phase Value Set](ValueSet-mission-phase-vs.md) | Phases of a space mission |
| [NASA Cardiovascular Assessment Equipment](ValueSet-nasa-cardiovascular-equipment-vs.md) | Value set for cardiovascular assessment hardware. |
| [NASA Exercise Equipment](ValueSet-nasa-exercise-equipment-vs.md) | Value set for exercise and fitness assessment hardware. |
| [NASA MRID Medical Disciplines](ValueSet-nasa-mrid-discipline-vs.md) | Value set for NASA MRID medical disciplines. |
| [NASA MRID Sponsor Organizations](ValueSet-nasa-mrid-sponsor-vs.md) | Value set for NASA MRID sponsor organizations. |
| [NASA Medical Data Archive Systems](ValueSet-nasa-data-archive-vs.md) | Value set for data archive and delivery systems. |
| [NASA Medical Facilities](ValueSet-nasa-medical-facility-vs.md) | Value set for medical testing facility locations. |
| [NASA Medical Hardware](ValueSet-nasa-medical-hardware-vs.md) | Complete value set for all NASA medical hardware. |
| [NASA Medical Personnel Roles](ValueSet-nasa-medical-roles-vs.md) | Value set for medical personnel roles. |
| [NASA Mission Phases](ValueSet-nasa-mission-phase-vs.md) | Value set for mission phase timing. |
| [NASA Postflight Schedule Offsets](ValueSet-nasa-postflight-offset-vs.md) | Value set for R-plus postflight schedule offsets. |
| [NASA Preflight Schedule Offsets](ValueSet-nasa-preflight-offset-vs.md) | Value set for L-minus preflight schedule offsets. |
| [NASA Radiation Monitoring Equipment](ValueSet-nasa-radiation-equipment-vs.md) | Value set for radiation monitoring hardware. |
| [NASA Schedule Offsets](ValueSet-nasa-schedule-offset-vs.md) | Complete value set for all mission schedule offsets. |
| [NASA Standard Measures Value Set](ValueSet-nasa-standard-measures-vs.md) | NASA Spaceflight Standard Measures assessments |
| [Neutral Buoyancy Training Activities](ValueSet-neutral-buoyancy-training-activities-vs.md) | Types of training activities conducted in neutral buoyancy environments |
| [Nutrition Inventory Status](ValueSet-nutrition-inventory-status-vs.md) | Status levels for nutrition inventory management |
| [Operational Status Value Set](ValueSet-operational-status-vs.md) | Operational status codes for facilities and vehicles |
| [Organ-Specific Dose Codes](ValueSet-organ-dose-codes-vs.md) | Codes for organ-specific radiation dose measurements (bone marrow, lens of eye, skin, CNS, thyroid, gonads, lung, GI tract, whole body). |
| [Organ-on-Chip Type Value Set](ValueSet-organ-chip-type-vs.md) | Types of organ-on-chip devices |
| [Parabolic Flight Phase Value Set](ValueSet-parabolic-flight-phase-vs.md) | Phases of a parabolic flight maneuver |
| [Planetary Protection Category Value Set](ValueSet-planetary-protection-category-vs.md) | COSPAR planetary protection categories |
| [Radiation Countermeasures](ValueSet-radiation-countermeasures-vs.md) | Protective measures against radiation |
| [Radiation Dose Units](ValueSet-radiation-dose-units-vs.md) | Units for radiation dose measurements |
| [Radioprotective Medication Value Set](ValueSet-radioprotective-medication-vs.md) | Radioprotective medications for spaceflight |
| [Regulatory Standards for Diving and Space Medicine](ValueSet-regulatory-standards-vs.md) | Regulatory standards and compliance requirements |
| [SANS Assessment Value Set](ValueSet-sans-assessment-vs.md) | SANS assessment parameters |
| [Shielding Condition](ValueSet-shielding-condition-vs.md) | Shielding conditions for radiation exposure observations |
| [Sleep Architecture Value Set](ValueSet-sleep-architecture-vs.md) | Sleep architecture parameters |
| [Space Adverse Event Value Set](ValueSet-space-adverse-event-vs.md) | Adverse events from spaceflight medications |
| [Space Anemia Value Set](ValueSet-space-anemia-vs.md) | Spaceflight anemia assessment parameters |
| [Space Blood Product Value Set](ValueSet-space-blood-product-vs.md) | Blood products for spaceflight use |
| [Space Emergency Type Value Set](ValueSet-space-emergency-type-vs.md) | Types of spaceflight emergency situations |
| [Space Exercise Modality Value Set](ValueSet-space-exercise-modality-vs.md) | Permitted space exercise modalities, derived from the Space Exercise Modality Code System. |
| [Space Exercise Performance Metrics](ValueSet-space-performance-metric-vs.md) | Performance metrics for space exercise (defined in SpacePerformanceMetricCS) |
| [Space Motion Sickness Value Set](ValueSet-space-motion-sickness-vs.md) | Types of motion sickness in spaceflight |
| [Space Nutrition Types](ValueSet-space-nutrition-type-vs.md) | Types of nutritional products available in space missions |
| [Space Omics Type Value Set](ValueSet-space-omics-type-vs.md) | Multi-omics analysis types |
| [Space POCUS Type Value Set](ValueSet-space-pocus-type-vs.md) | POCUS examination types |
| [Space Radiation Dose Measurement Codes](ValueSet-space-radiation-dose-codes-vs.md) | Codes for radiation dose measurements in space environments: LOINC total-dose and dose-rate codes plus source-specific dose codes from the Space Radiation Code System. |
| [Space Radiation Types](ValueSet-space-radiation-type-vs.md) | Types of radiation encountered in space |
| [Space Specimen Type Value Set](ValueSet-space-specimen-type-vs.md) | Specimen types collected during spaceflight |
| [Space Surgical Procedure Value Set](ValueSet-space-surgical-procedure-vs.md) | Surgical procedures for spaceflight |
| [Space Transfusion Procedure Value Set](ValueSet-space-transfusion-procedure-vs.md) | Transfusion procedures for spaceflight |
| [Sterilization Method Value Set](ValueSet-sterilization-method-vs.md) | Sterilization methods for planetary protection |
| [Stress Countermeasures Value Set](ValueSet-stress-countermeasures-vs.md) | Standardized set of psychological countermeasures used to mitigate stress and support mental health. |
| [Suit Provisioning Status Value Set](ValueSet-suit-provisioning-status-vs.md) | Suit provisioning and logistics status |
| [Telemedicine Equipment Value Set](ValueSet-telemedicine-equipment-vs.md) | Telemedicine equipment types |
| [Telemedicine Modality Value Set](ValueSet-telemedicine-modality-vs.md) | Telemedicine modalities |
| [Temperature Measurement Method Value Set](ValueSet-temperature-measurement-method-vs.md) | Methods of body temperature measurement |
| [Underwater Communication Systems](ValueSet-underwater-communication-systems-vs.md) | Communication systems used in underwater training operations |
| [Underwater Training Procedures](ValueSet-underwater-training-procedures-vs.md) | Procedures and activities conducted during underwater training |
| [Water Volume Units](ValueSet-water-volume-units-vs.md) | Units for measuring water volume |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Actigraphy Metric Code System](CodeSystem-actigraphy-metric-cs.md) | Metrics derived from wrist actigraphy for sleep-wake monitoring |
| [Aerospace Behavioral State Code System](CodeSystem-aerospace-behavioral-state-cs.md) | Codes describing behavioral and psychological state parameters in aerospace missions. |
| [Aerospace Location Type](CodeSystem-location-type-cs.md) | Types of locations used in lunar and planetary mission records (landing sites, orbital stations, surface habitats, outposts, analog facilities) |
| [Aerospace Observation Category](CodeSystem-aerospace-observation-category-cs.md) | Observation categories for spacecraft and habitat telemetry that are not covered by the HL7 observation-category code system (operational, environmental, life-support) |
| [Antiemetic Medication Code System](CodeSystem-antiemetic-medication-cs.md) | Antiemetic medications used for space motion sickness prophylaxis and treatment |
| [Antiemetic Protocol Code System](CodeSystem-antiemetic-protocol-cs.md) | Protocols for antiemetic administration in spaceflight contexts |
| [Antioxidant Biomarker Code System](CodeSystem-antioxidant-biomarker-cs.md) | Biomarkers of oxidative stress and antioxidant status |
| [Artemis Certified Devices](CodeSystem-artemis-certified-devices-cs.md) | Flight-qualified hardware and systems used in Artemis missions (Orion, SLS, xEMU, Starship-HLS, CLPS landers, Gateway modules, LTV, radioisotope power units, etc.) |
| [Artemis Landing Regions](CodeSystem-artemis-landing-region-cs.md) | Candidate Artemis III landing regions near the lunar south pole (within 6° of pole, near permanently shadowed craters) |
| [Artemis Missions](CodeSystem-artemis-mission-cs.md) | Historical and planned Artemis program missions with target destinations, launch dates, and status. Reflects the post-2026 replan in which Artemis III is a crewed low-Earth orbit test flight and Artemis IV is the first crewed lunar landing. |
| [Artemis Prototype Devices](CodeSystem-artemis-prototype-devices-cs.md) | Developmental and test hardware not yet flight-certified: demo units, ground analogs, next-generation prototypes, and planned LunaNet, surface mobility, habitat, logistics, ISRU, and surface power infrastructure elements |
| [Artemis Radiation Measures](CodeSystem-artemis-radiation-measure-cs.md) | Observation and component codes used by the ArtemisRadiationExposure profile: dose measures and the contextual components (radiation source, shielding condition, tissue type). Radiation source values come from SpaceRadiationTypeCS. |
| [BFRT Device Type Code System](CodeSystem-bfrt-device-type-cs.md) | Types of blood flow restriction devices |
| [BFRT Outcome Code System](CodeSystem-bfrt-outcome-cs.md) | Outcome measures for blood flow restriction training effectiveness |
| [BFRT Protocol Code System](CodeSystem-bfrt-protocol-cs.md) | Blood flow restriction training protocol types for microgravity exercise countermeasures |
| [BLiSS Output Code System](CodeSystem-bliss-output-cs.md) | Bioregenerative Life Support System (BLiSS) output types |
| [Behavioral Biomarker Code System](CodeSystem-behavioral-biomarker-cs.md) | Codes for physiologic and digital biomarkers related to behavioral health and stress. |
| [Biomanufacturing Metric Code System](CodeSystem-biomanufacturing-metric-cs.md) | Component codes for biomanufacturing output observations |
| [Biomanufacturing Process Code System](CodeSystem-biomanufacturing-process-cs.md) | Biomanufacturing processes for in-situ resource utilization and life support |
| [Bone Density Method Code System](CodeSystem-bone-density-method-cs.md) | Methods for bone mineral density measurement in spaceflight |
| [CGM Device Type Code System](CodeSystem-cgm-device-type-cs.md) | Types of continuous glucose monitoring devices |
| [Calorie Deficit Risk Levels](CodeSystem-calorie-deficit-risk-cs.md) | Risk categorization for caloric deficits |
| [Cardiac Monitoring Code System](CodeSystem-cardiac-monitoring-cs.md) | Cardiac monitoring parameters for spaceflight ECG assessment |
| [Circadian Phase Code System](CodeSystem-circadian-phase-cs.md) | Circadian rhythm phases for contextualizing temperature and physiological measurements |
| [Circadian Rhythm Assessment Code System](CodeSystem-circadian-assessment-cs.md) | Parameters for circadian rhythm assessment in spaceflight |
| [Continuous Glucose Monitoring Metrics Code System](CodeSystem-cgm-metrics-cs.md) | Standardized CGM metrics for spaceflight metabolic monitoring |
| [Decompression Protocols and Procedures](CodeSystem-decompression-protocol-cs.md) | Standardized decompression protocols and safety procedures |
| [Decompression Sickness Risk Code System](CodeSystem-dcs-risk-cs.md) | Decompression sickness risk factors and outcomes for EVA risk assessment |
| [Diving Medicine Code System](CodeSystem-diving-medicine-cs.md) | Medical codes specific to diving medicine and hyperbaric treatments |
| [Diving and Space Medicine Regulatory Compliance](CodeSystem-regulatory-compliance-cs.md) | Regulatory standards and compliance codes for diving and space medicine |
| [EVA Suit Inventory Metric Code System](CodeSystem-eva-suit-inventory-metric-cs.md) | Component codes for EVA suit inventory and readiness observations |
| [EVA Suit State Code System](CodeSystem-eva-suit-state-cs.md) | Operational states of EVA suit systems |
| [Emergency Response Code System](CodeSystem-emergency-response-cs.md) | Emergency response and evacuation options for spaceflight |
| [Expanded Specimen Type Code System](CodeSystem-expanded-specimen-type-cs.md) | Specimen types for astronaut biobank and multi-omics analysis |
| [Gravity Context Code System](CodeSystem-gravity-context-cs.md) | Gravitational environment contexts for observations and procedures |
| [Graybiel Motion Sickness Severity Scale](CodeSystem-graybiel-severity-cs.md) | Modified Graybiel scale for grading motion sickness severity in spaceflight |
| [Human Mars Mission Plans](CodeSystem-crewed-mars-missions-cs.md) | Proposed or conceptual human mission architectures to Mars (Mars Direct, NASA DRMs, SpaceX, etc.) |
| [Hydration Product Types](CodeSystem-hydration-type-cs.md) | Types of hydration products used in space |
| [Hyperbaric Chamber Capabilities](CodeSystem-hyperbaric-capabilities-cs.md) | Capabilities and services available in hyperbaric chambers |
| [Hyperbaric Chamber Types](CodeSystem-hyperbaric-chamber-type-cs.md) | Types of hyperbaric chambers |
| [IJV Flow Grade Code System](CodeSystem-ijv-flow-grade-cs.md) | Internal jugular vein flow grading system based on spectral pulse-wave Doppler assessment |
| [ISRU Metrics](CodeSystem-isru-metrics-cs.md) | Measurement codes for in-situ resource utilization (ISRU) propellant production logs |
| [Immune Biomarker Code System](CodeSystem-immune-biomarker-cs.md) | Immune function biomarkers monitored during spaceflight |
| [Isolation Syndrome Factor Code System](CodeSystem-isolation-syndrome-factor-cs.md) | Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions. |
| [Joint Assessment Code System](CodeSystem-joint-assessment-cs.md) | Parameters for ultrasound-based joint health assessment |
| [Location Capabilities Code System](CodeSystem-location-capabilities-cs.md) | Capabilities and services available at aerospace medicine locations |
| [MRID Launch Context Name CodeSystem](CodeSystem-mrid-launch-context-name-cs.md) | Names for launch context variables |
| [MRID Launch Context Type CodeSystem](CodeSystem-mrid-launch-context-type-cs.md) | FHIR resource types for launch context |
| [Macronutrient Metrics](CodeSystem-macronutrient-metrics-cs.md) | Measurement types for macronutrient tracking |
| [Mars Landing Sites (Candidate)](CodeSystem-mars-landing-sites-cs.md) | Candidate landing sites for human Mars missions with areographic coordinates and site characteristics |
| [Mars Mission Devices - Certified](CodeSystem-mars-certified-devices-cs.md) | Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.) |
| [Mars Mission Devices - Prototype](CodeSystem-mars-prototype-devices-cs.md) | Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems) |
| [Mars Missions](CodeSystem-mars-missions-cs.md) | NASA and international missions to Mars (robotic and conceptual human missions) |
| [Microbial Contaminant Type Code System](CodeSystem-microbial-contaminant-type-cs.md) | Types of microbial contamination relevant to planetary protection |
| [Microgravity Countermeasure Code System](CodeSystem-microgravity-countermeasure-cs.md) | Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects |
| [Mission Phase Code System](CodeSystem-mission-phase-cs.md) | Phases of a space mission for temporal context of clinical observations |
| [NASA MRID Medical Disciplines](CodeSystem-nasa-mrid-discipline-cs.md) | Medical disciplines categorizing NASA Medical Requirements Integration Documents. |
| [NASA MRID Sponsor Organizations](CodeSystem-nasa-mrid-sponsor-cs.md) | Organizations that sponsor medical requirements within NASA's Medical Requirements Integration Documents. |
| [NASA Medical Data Archive Systems](CodeSystem-nasa-data-archive-cs.md) | Data archive and delivery systems for NASA medical data. |
| [NASA Medical Facility Locations](CodeSystem-nasa-medical-facility-cs.md) | Medical testing facility locations for NASA medical requirements. |
| [NASA Medical Hardware](CodeSystem-nasa-medical-hardware-cs.md) | Medical equipment and hardware used in NASA medical requirements. |
| [NASA Medical Personnel Roles](CodeSystem-nasa-medical-roles-cs.md) | Personnel roles involved in NASA medical requirements. |
| [NASA Mission Phase Timing](CodeSystem-nasa-mission-phase-cs.md) | Mission phases and timing codes for medical requirements scheduling. |
| [NASA Schedule Offset Notation](CodeSystem-nasa-schedule-offset-cs.md) | L-minus and R-plus notation codes for mission timeline scheduling. |
| [NASA Spaceflight Standard Measures Code System](CodeSystem-nasa-standard-measures-cs.md) | Standardized assessments from the NASA Spaceflight Standard Measures program |
| [Neutral Buoyancy Training Code System](CodeSystem-neutral-buoyancy-training-cs.md) | Specialized codes for neutral buoyancy training activities and assessments |
| [Nutrition Inventory Status](CodeSystem-nutrition-inventory-status-cs.md) | Status levels for nutrition inventory management |
| [Operational Status Code System](CodeSystem-operational-status-cs.md) | Operational status codes for facilities and vehicles |
| [Organ-on-Chip Type Code System](CodeSystem-organ-chip-type-cs.md) | Types of organ-on-chip (microphysiological systems) used in the AVATAR investigation |
| [Parabolic Flight Phase Code System](CodeSystem-parabolic-flight-phase-cs.md) | Phases of a parabolic flight maneuver used in microgravity research |
| [Planetary Protection Category Code System](CodeSystem-planetary-protection-category-cs.md) | COSPAR planetary protection categories for mission classification |
| [Psychological Countermeasure Code System](CodeSystem-psychological-countermeasure-cs.md) | Codes for psychological countermeasure interventions in aerospace missions. |
| [Radiation Countermeasures Code System](CodeSystem-radiation-countermeasures-cs.md) | Protective measures against space radiation |
| [Radiation Detector Type Code System](CodeSystem-radiation-detector-type-cs.md) | Types of radiation detection equipment |
| [Radioprotective Medication Code System](CodeSystem-radioprotective-medication-cs.md) | Radioprotective and antioxidant medications for space radiation countermeasures |
| [SANS Assessment Code System](CodeSystem-sans-assessment-cs.md) | Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment |
| [Shielding Condition](CodeSystem-shielding-condition-cs.md) | Qualitative radiation shielding condition of the crew at the time of a radiation exposure measurement |
| [Sleep Architecture Code System](CodeSystem-sleep-architecture-cs.md) | Sleep architecture parameters measured during spaceflight sleep studies |
| [Space Adverse Event Code System](CodeSystem-space-adverse-event-cs.md) | Adverse events associated with antiemetic and countermeasure medications in spaceflight |
| [Space Anemia Code System](CodeSystem-space-anemia-cs.md) | Parameters for spaceflight-associated anemia assessment |
| [Space Blood Product Code System](CodeSystem-space-blood-product-cs.md) | Blood products adapted for spaceflight and austere environment use |
| [Space Emergency Type Code System](CodeSystem-space-emergency-type-cs.md) | Types of emergency situations during spaceflight operations |
| [Space Exercise Modality Code System](CodeSystem-space-exercise-modality-cs.md) | Spaceflight-specific exercise modalities used in microgravity and partial gravity environments (e.g., ISS treadmill, ARED resistive training, artificial gravity). |
| [Space Exercise Performance Metric Code System](CodeSystem-space-performance-metric-cs.md) | Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force). |
| [Space Motion Sickness Code System](CodeSystem-space-motion-sickness-cs.md) | Types of motion sickness encountered in space travel and related vestibular disorders |
| [Space Nutrition Product Types](CodeSystem-space-nutrition-type-cs.md) | Types of nutritional products used in space missions |
| [Space Omics Type Code System](CodeSystem-space-omics-type-cs.md) | Multi-omics analysis types for astronaut molecular profiling |
| [Space POCUS Type Code System](CodeSystem-space-pocus-type-cs.md) | Point-of-care ultrasound examination types for austere spaceflight environments |
| [Space Procedure Code System](CodeSystem-space-procedure-cs.md) | Operational procedures performed in spaceflight that have no SNOMED CT equivalent |
| [Space Radiation Code System](CodeSystem-space-radiation-cs.md) | Measurement, dose-accumulation, organ-dose, detector-property and reporting concepts used by the space radiation profiles. Radiation types are in SpaceRadiationTypeCS; detector hardware types are in RadiationDetectorTypeCS. |
| [Space Radiation Type Code System](CodeSystem-space-radiation-type-cs.md) | Types of radiation encountered in space environments |
| [Space Specimen Type Code System](CodeSystem-space-specimen-type-cs.md) | Specimen types collected during spaceflight with microgravity-adapted methods |
| [Space Surgical Procedure Code System](CodeSystem-space-surgical-procedure-cs.md) | Surgical procedures adapted for spaceflight austere environments |
| [Space Transfusion Procedure Code System](CodeSystem-space-transfusion-procedure-cs.md) | Transfusion procedures adapted for spaceflight and austere environments |
| [Space Visual Effects](CodeSystem-space-visual-effects-cs.md) | CodeSystem for space visual effects not found in SNOMED CT |
| [Sterilization Method Code System](CodeSystem-sterilization-method-cs.md) | Sterilization methods for planetary protection bioburden reduction |
| [Suit Provisioning Status Code System](CodeSystem-suit-provisioning-status-cs.md) | Provisioning and logistics status of EVA suit assets |
| [Telemedicine Equipment Code System](CodeSystem-telemedicine-equipment-cs.md) | Medical equipment used for telemedicine in spaceflight |
| [Telemedicine Modality Code System](CodeSystem-telemedicine-modality-cs.md) | Telemedicine modalities for spaceflight medical operations |
| [Temperature Measurement Method Code System](CodeSystem-temperature-measurement-method-cs.md) | Methods of body temperature measurement relevant to spaceflight |
| [Underwater Communication Systems](CodeSystem-underwater-communication-cs.md) | Communication systems and protocols for underwater training operations |
| [Venous Flow Metric Code System](CodeSystem-venous-flow-metric-cs.md) | Component codes for internal jugular vein flow directionality measurements |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [Mission Phase to NASA Mission Phase Timing](ConceptMap-MissionPhaseToNASAMissionPhase.md) | Maps the clinical mission phases in MissionPhaseCS to the coarser NASA medical-requirements timing phases in NASAMissionPhaseCS. Pre-flight maps to preflight activity, all in-space phases map to inflight, and both post-flight phases map to postflight. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [14-Day CGM Summary Report](DiagnosticReport-CGM-Summary-14Day.md) | 14-day CGM summary report for spaceflight metabolic monitoring |
| [ARCHeR Actigraphy - Flight Day 5](Observation-ARCHeR-Actigraphy-FD5.md) | Actigraphy data from ARCHeR investigation on flight day 5 showing circadian adaptation |
| [Algae Cultivation Procedure](Procedure-Biomanufacturing-AlgaeCultivation-001.md) | Chlorella vulgaris cultivation cycle in ISS photobioreactor |
| [Algae Photobioreactor](Device-Bioreactor-Algae-001.md) | Closed-loop algae photobioreactor for O2 production and CO2 fixation |
| [Almond butter](Binary-artemis-030.md) |  |
| [Almonds](Binary-artemis-025.md) |  |
| [Apple cider](Binary-artemis-008.md) |  |
| [Aquarius Underwater Laboratory](Location-AquariusUnderwaterLaboratory.md) | NOAA's Aquarius underwater research station used for NEEMO missions |
| [Artemis Base Camp Habitat](Location-ArtemisBaseCampHabitat.md) | Artemis lunar surface habitat module |
| [Artemis IV EVA-1](Procedure-Artemis-IV-EVA-1.md) | First lunar surface EVA of Artemis IV mission at Malapert Massif |
| [Artemis IV EVA-1 Radiation Exposure](Observation-Artemis-IV-EVA1-Radiation.md) | Radiation dose during first lunar surface EVA (6.5 hours unshielded) |
| [Artemis IV EVA-2](Procedure-Artemis-IV-EVA-2.md) | Second lunar surface EVA of Artemis IV mission exploring shadowed crater |
| [Artemis IV Mission Encounter](Encounter-Artemis-IV-Mission.md) | Encounter representing the entire Artemis IV mission from launch to splashdown |
| [Artemis IV Mission Plan](PlanDefinition-Artemis-IV-Mission-Plan.md) | Complete mission plan for Artemis IV including phases, timelines, and EVA schedules |
| [Artemis IV Suit Provisioning](SupplyDelivery-ArtemisIV-SuitProvisioning-001.md) | EVA suit provisioning record for Artemis IV lunar landing mission |
| [Artemis IV Translunar Radiation Exposure](Observation-Artemis-IV-Translunar-Radiation.md) | Cumulative radiation dose during 4-day translunar cruise |
| [Autonomous Medical Encounter - Appendicitis Sol 189](Encounter-Emergency-Appendicitis-Sol189.md) | Crew-led emergency appendectomy on Mars with 15-minute Earth communication delay |
| [BFRT Pneumatic Cuff Device](Device-BFRT-Pneumatic-Cuff-001.md) | Pneumatic occlusion cuff for blood flow restriction training on ISS |
| [BLiSS O2 Production Output](Observation-BLiSS-O2-Production-001.md) | Daily O2 production observation from algae photobioreactor |
| [Barbecued beef brisket](Binary-artemis-018.md) |  |
| [Biosphere 2 Undersea Habitat](Location-Biosphere2UnderseaHabitat.md) | University of Arizona Biosphere 2 analog training facility |
| [Blue Origin West Texas Facility](Location-BlueOriginWestTexas.md) | Blue Origin suborbital flight operations |
| [Body Temperature - Flight Day 30 Morning](Observation-Body-Temp-FD30-Morning.md) | Oral body temperature measurement on flight day 30 during morning circadian nadir |
| [Boeing Starliner Calypso](Location-StarlinerCalypso.md) | Boeing CST-100 Starliner spacecraft |
| [Breakfast sausage](Binary-artemis-014.md) |  |
| [Broccoli au gratin](Binary-artemis-019.md) |  |
| [Brooks Altitude Chamber](Location-BrooksAltitudeChamber.md) | High-altitude environmental training facility |
| [Brooks School of Aerospace Medicine](Location-BrooksAerospaceMedicine.md) | USAF School of Aerospace Medicine hyperbaric facility |
| [Butterfly iQ3 Ultrasound](Device-Butterfly-iQ3-001.md) | Butterfly iQ3 point-of-care ultrasound for IJV cross-sectional area and flow assessment |
| [Butternut squash](Binary-artemis-023.md) |  |
| [CGM Glucose Reading - Flight Day 15](Observation-CGM-Reading-FD15.md) | Single CGM glucose reading on flight day 15 with summary metrics |
| [CHESA Undersea Laboratory](Location-CHESAUnderseaLaboratory.md) | Commercial underwater training facility |
| [CSA David Florida Laboratory](Location-CSADavidFloridaLaboratory.md) | Canadian Space Agency testing facility |
| [CSA Life Sciences Research](Location-CSALifeSciencesResearch.md) | Canadian Space Agency life sciences research division |
| [Cake](Binary-artemis-038.md) |  |
| [Candy-coated almonds](Binary-artemis-039.md) |  |
| [Cashews](Binary-artemis-026.md) |  |
| [Cauliflower](Binary-artemis-024.md) |  |
| [Chocolate](Binary-artemis-037.md) |  |
| [Chocolate breakfast drink](Binary-artemis-004.md) |  |
| [Chocolate spread](Binary-artemis-028.md) |  |
| [Cinnamon](Binary-artemis-035.md) |  |
| [Cobbler](Binary-artemis-040.md) |  |
| [Cocoa](Binary-artemis-010.md) |  |
| [Coffee](Binary-artemis-001.md) |  |
| [Condition - Asphyxiation](Condition-ConditionAsphyxiation.md) | Oxygen deprivation |
| [Condition - Blunt Trauma](Condition-ConditionBluntTrauma.md) | Blunt injury (disorder) |
| [Condition - Burn](Condition-ConditionBurn.md) | Burn injury (morphologic abnormality) |
| [Condition - Heart Attack](Condition-ConditionHeartAttack.md) | Myocardial infarction (disorder) |
| [Condition - Hypoxia](Condition-ConditionHypoxia.md) | Oxygen deprivation |
| [Condition - Occular Degeneration](Condition-ConditionOccularDegeneration.md) | Microgravity induced occular degeneration. |
| [Condition - Osteoporosis](Condition-ConditionOsteoporosis.md) | Microgravity induced bone loss. |
| [Condition - Radiation Exposure](Condition-ConditionRadiationExposure.md) | Radiation exposure (rads) |
| [Condition - Smoke Inhalation](Condition-ConditionSmokeInhalation.md) | Smoke inhalation injury (disorder) |
| [Condition - Stroke](Condition-ConditionStroke.md) | Cerebrovascular accident (disorder) |
| [Cookies](Binary-artemis-036.md) |  |
| [Couscous with nuts](Binary-artemis-015.md) |  |
| [Crew Dragon Endeavour](Location-CrewDragonEndeavour.md) | SpaceX Crew Dragon spacecraft Endeavour |
| [Crew Dragon Resilience](Location-CrewDragonResilience.md) | SpaceX Crew Dragon spacecraft Resilience |
| [Crew Personal Dosimeter (example)](Device-radiation-detector-example.md) | Electronic personal dosimeter worn by the example astronaut during an ISS increment. |
| [Cumulative Radiation Dose - Outbound Transit](Observation-CumulativeDose-Transit.md) | Cumulative galactic cosmic radiation dose accumulated by Commander Chen during the 6-month outbound Earth-Mars transit |
| [Cumulative Radiation Dose, ISS Expedition 75 (example)](Observation-cumulative-radiation-dose-example.md) | Dose-equivalent accumulated over the first 180 days of an ISS increment, with rolling-period and career totals. |
| [DHMR Sterilization at 125C/50hr](Procedure-Sterilization-DHMR-001.md) | Dry heat microbial reduction sterilization of Mars lander component at 125°C for 50 hours |
| [DLR Institute of Aerospace Medicine](Location-DLRAerospaceMedicine.md) | German Aerospace Center medical research institute |
| [Daily Radiation Exposure, ISS Flight Day 45 (example)](Observation-space-radiation-exposure-example.md) | One day of dose-equivalent measured by the crew personal dosimeter, with organ-dose and dose-rate components. |
| [Department of Defense](Organization-UsDeptOfDefence.md) | Organization - Department of Defense |
| [Device - Air Lock](Device-DeviceAirLock.md) | Air Lock |
| [Device - Ascent/Entry Spacesuit](Device-AscentEntrySpacesuit.md) | Ascent/Entry Spacesuit |
| [Device - Astro Spacesuit](Device-AstroSpacesuit.md) | Astro Spacesuit |
| [Device - Cislunar Highway Patrol System](Device-CislunarHighwayPatrolSystem.md) | Space traffic patrol system |
| [Device - Cyber Truck](Device-DeviceCyberTruck.md) | Cyber truck |
| [Device - Dream Chaser](Device-DreamChaserVehicle.md) | Space Vehicle |
| [Device - Flight Recorder (FHIR)](Device-DeviceFlightRecorder.md) | Mission flight recorder that monitors astronaut and passenger activities. |
| [Device - Flight Suit](Device-DeviceFlightSuit.md) | Flight suit for space travel. |
| [Device - Hospital Bed](Device-DeviceHospitalBed.md) | General hospital bed. |
| [Device - James Webb Telescope](Device-JamesWebTelescope.md) | Deep space telescope at Legrange Point 2 |
| [Device - Lunar Crater Radio Telescope](Device-DeviceRadiotelescope.md) | Lunar Crater Radio Telescope |
| [Device - Lunar Rover](Device-DeviceLunarRover.md) | Lunar rover |
| [Device - Orbital Reef](Device-DeviceOrbitalReef.md) | Space Station |
| [Device - Smart Clothing](Device-DeviceSmartClothing.md) | ECG enabled undershirt |
| [Device - Space Garage](Device-DeviceSpaceGarage.md) | Space Garage |
| [Device - Space Suit](Device-DeviceSpaceSuit.md) | Environmental suit for extra-vehicular operations. |
| [Device - Space Tent](Device-DeviceSpaceTent.md) | Space Tent |
| [Device - Telehealth Monitor](Device-DeviceTelehealthMonitor.md) | Monitoring terminal that supports both video conferencing and streaming vital sign signals. |
| [Device - Vital Signs Monitor](Device-DeviceVitalSignsMonitor.md) | Vital signs monitor (heart rate, respiration, blood pressure, temperature). |
| [Device - xEMU Spacesuit](Device-xEMUSpacesuit.md) | xEMU Spacesuit |
| [Device - xEVAS Spacesuit](Device-xEVASSpacesuit.md) | xEVAS Spacesuit |
| [Dexcom G7 CGM Device](Device-CGM-Dexcom-G7-001.md) | Dexcom G7 continuous glucose monitor used during ISS expedition |
| [Dried Blood Spot Specimen with Biobank Metadata](Specimen-DBS-Specimen-001.md) | Dried blood spot specimen collected in-flight and stored in astronaut biobank |
| [ESA Human Centrifuge](Location-ESACentrfugeCologne.md) | European Space Agency centrifuge facility |
| [Earth-Moon L4/L5 Stations](Location-EarthMoonL4L5Stations.md) | Space habitats at Earth-Moon Lagrange points |
| [Edwards Air Force Base](Location-EdwardsAirForceBase.md) | USAF Test Pilot School and aerospace medicine research |
| [Emergency Dragon Return](Procedure-Emergency-DragonReturn-001.md) | Emergency return to Earth via Crew Dragon following depressurization event |
| [European Astronaut Centre NBL](Location-EuropeanAstronautCentreNBL.md) | ESA's neutral buoyancy facility in Cologne, Germany |
| [Example Astronaut](Patient-ExampleAstronaut.md) | Example astronaut for testing radiation tracking |
| [Example Dive Medical Clearance](Procedure-ExampleDiveMedicalClearance.md) | Example medical clearance for diving operations |
| [Example Hyperbaric Chamber](Location-ExampleHyperbaricChamber.md) | Example hyperbaric chamber facility |
| [Example Neutral Buoyancy Training Session](Procedure-ExampleNeutralBuoyancySession.md) | Example of a typical neutral buoyancy training session |
| [Example Training Dive Profile](Observation-ExampleDiveProfile.md) | Example dive profile from neutral buoyancy training |
| [FDI Observation with All Components](Observation-FDI-Components-001.md) | Flow Directionality Index observation with all five component measurements |
| [Granola with blueberries](Binary-artemis-017.md) |  |
| [Green tea](Binary-artemis-002.md) |  |
| [Habitat Environmental Conditions - Sol 125](Observation-HabitatEnvironment-Sol125.md) | Atmospheric monitoring inside Mars habitat on Sol 125 |
| [Honey](Binary-artemis-034.md) |  |
| [Hot sauce](Binary-artemis-031.md) |  |
| [Hyperbaric Treatment Chamber](Location-HyperbaricChamberFacility.md) | Hyperbaric medicine treatment facility |
| [IJV Flow During LBNP (FDI = 0.85)](Observation-IJV-Flow-During-LBNP-001.md) | Internal jugular vein flow observation with FDI of 0.85 during LBNP at -30 mmHg |
| [ISRU Production Log - Sol 210](Observation-ISRU-Production-Sol210.md) | Cumulative propellant production by Sol 210 (7 months operation) |
| [ISRU Propellant Production Plant](Device-ISRU-Plant-Jezero-1.md) | In-situ resource utilization plant for CH4/O2 production from Martian atmosphere |
| [ISS Anxiety Assessment - Pre-EVA](Observation-ISS-AnxietyAssessment-PreEVA.md) | Pre-EVA anxiety assessment with HRV biomarker showing elevated stress. |
| [ISS Bright Light Therapy - Mission Week 8](Procedure-ISS-BrightLightTherapy-Week8.md) | Scheduled bright light exposure to stabilize circadian rhythm and improve sleep quality. |
| [ISS CBT Session - Mission Week 12](Procedure-ISS-CBT-Session-Week12.md) | Telemedicine cognitive behavioral therapy session addressing mid-mission mood decline. |
| [ISS Cognitive Readiness - Post-Anomaly](Observation-ISS-CognitiveReadiness-PostAnomaly.md) | Cognitive readiness assessment following ammonia leak alarm (false positive). |
| [ISS Columbus Laboratory](Location-InternationalSpaceStationColumbus.md) | International Space Station European laboratory module |
| [ISS Crew Debrief - Post-Anomaly](Procedure-ISS-CrewDebrief-PostAnomaly.md) | Structured crew debrief following ammonia leak false alarm to process stress and restore team cohesion. |
| [ISS Cumulative Stress Burden - Mission Day 180 (End of Mission)](Observation-ISS-StressBurden-Day180.md) | End-of-mission cumulative stress burden showing sustained elevation despite countermeasures. |
| [ISS Cumulative Stress Burden - Mission Day 90](Observation-ISS-StressBurden-Day90.md) | Third-quarter phenomenon stress accumulation with breakdown by emotional, cognitive, and social domains. |
| [ISS Cupola Module](Location-InternationalSpaceStationCupola.md) | International Space Station Cupola observation module |
| [ISS Destiny Laboratory](Location-InternationalSpaceStationDestiny.md) | International Space Station US laboratory module |
| [ISS EVS Minutes per Week - Week 23 2025](Observation-ISS-EVS-MinPerWeek-2025W23.md) | EVS minutes per week derived from ISS treadmill and ARED exercise sessions during Expedition 75, mission week 23. |
| [ISS Emergency Contingency Plan](CarePlan-ISS-Emergency-Plan-001.md) | ISS crew contingency plan covering depressurization, fire, and toxic atmosphere scenarios |
| [ISS Expedition 75 In-Flight Period](Encounter-ISS-Exp75-InFlight.md) | Encounter representing the in-flight period of ISS Expedition 75 |
| [ISS Guided Meditation - Daily Practice](Procedure-ISS-GuidedMeditation-Daily.md) | Daily 15-minute guided meditation session for stress reduction and mood regulation. |
| [ISS Isolation Factor - Circadian Drift](Observation-ISS-IsolationFactor-CircadianDrift.md) | Sleep-wake cycle misalignment due to shift work and 16 sunrises per day. |
| [ISS Isolation Factor - Confinement](Observation-ISS-IsolationFactor-Confinement.md) | Assessment of confinement stress during prolonged mission. |
| [ISS Isolation Factor - Interpersonal Friction](Observation-ISS-IsolationFactor-InterpersonalFriction.md) | Documented interpersonal tension between crew members during third quarter. |
| [ISS Kibo Laboratory](Location-InternationalSpaceStationKibo.md) | International Space Station Japanese laboratory module |
| [ISS Mood Assessment - Mission Week 12](Observation-ISS-MoodAssessment-Week12.md) | Weekly mood and anxiety assessment with cortisol biomarker during mid-mission period. |
| [ISS Suit Redundancy Assessment](Observation-SuitRedundancy-Assessment-001.md) | Quarterly redundancy assessment for ISS EVA suit inventory |
| [ISS T2 Treadmill](Device-ISS-T2-Treadmill.md) | Treadmill 2 (T2) on the International Space Station with vibration isolation |
| [ISS T2 Treadmill Run - Activity Type](Observation-ISS-T2-Run-Type-001.md) | Activity-based measure indicating the type of ISS T2 treadmill running. |
| [ISS T2 Treadmill Run - Duration](Observation-ISS-T2-Run-Duration-001.md) | Activity-based measure capturing duration (minutes) of an ISS T2 treadmill session. |
| [ISS T2 Treadmill Run - Mean Heart Rate](Observation-ISS-T2-Run-MeanHR-001.md) | Mean heart rate during an ISS treadmill session. |
| [ISS T2 Treadmill Session - Activity Group](Observation-ISS-T2-Run-Group-001.md) | Panel Observation representing a single 30-minute ISS T2 treadmill session. |
| [ISS T2 Treadmill Session - Procedure](Procedure-ISS-Exercise-Session-Proc-001.md) | Procedure resource representing a single ISS T2 treadmill session linked to PA artifacts and the SpaceExerciseActivityGroup panel. |
| [ISS Unity Node](Location-InternationalSpaceStationUnity.md) | International Space Station Unity connecting node |
| [ISS Zvezda Service Module](Location-InternationalSpaceStationZvezda.md) | International Space Station Russian service module with enhanced shielding |
| [Immune Biomarker Panel - Pre-flight Baseline](Observation-Immune-Panel-PreFlight.md) | Pre-flight baseline immune biomarker panel for Artemis II crew member |
| [Insurance - Contract](Contract-SpaceTourismTravelInsuranceContract.md) | STUB - Space tourist insurance coverage. |
| [Insurance - Plan](InsurancePlan-SpaceTourismTravelInsurance.md) | Space tourist insurance plan. |
| [JAXA Space Biomedical Research Office](Location-JAXASpaceBiomedicalResearch.md) | Japan Aerospace Exploration Agency medical research |
| [James Webb Space Telescope Location](Location-JamesWebbSpaceTelescope.md) | James Webb Space Telescope at Sun-Earth L2 |
| [Kennedy Space Center Medical Facility](Location-KSCMedicalFacility.md) | KSC astronaut medical support facility |
| [LBNP Chamber Device](Device-LBNP-Chamber-001.md) | Lower body negative pressure chamber with -50 mmHg capability for parabolic flight campaign |
| [LBNP Session at -30 mmHg During Microgravity](Procedure-LBNP-Session-Microgravity-001.md) | LBNP procedure at -30 mmHg during microgravity phase of 87th ESA Parabolic Flight Campaign |
| [Lemonade](Binary-artemis-007.md) |  |
| [Location - Airlock1](Location-LocationAirlock1.md) | Airlock 1 |
| [Location - Artemis Space Camp](Location-LocationArtemisSpaceCamp.md) | Artemis space camp (Pending) |
| [Location - Biosphere2](Location-LocationBiosphere2.md) | Biosphere 2 ecology dome at University of Arizona |
| [Location - Crater](Location-LocationCrater0.md) | Lunar crater with no known scientific or industrial uses. |
| [Location - Cyber Truck](Location-LocationCyberTruck.md) | Tesla cyber truck |
| [Location - Dragon Capsule](Location-LocationDragon.md) | Dragon capsule, part of the SpaceX Crew Dragon flight system. |
| [Location - Gateway](Location-LocationLunarGateway.md) | Lunar Gateway - outpost and transfer station in lunar orbit. (Pending) |
| [Location - Habitat Crater](Location-LocationCrater3.md) | Lunar micro-crater suitable for habitat construction. |
| [Location - ICU Bed](Location-LocationIcuBed.md) | Intensive Care Unit - Bed |
| [Location - ICU Ward](Location-LocationIcuWard.md) | Intensive Care Unit - Ward |
| [Location - ISS](Location-LocationInternationalSpaceStation.md) | International Space Station - football field sized orbital space station in low earth orbit (LEO) |
| [Location - Ice Crater](Location-LocationCrater1.md) | Lunar crater containing ice |
| [Location - Kennedy Space Center](Location-KennedySpaceCenter.md) | Kennedy Space Center, Florida |
| [Location - Lab To Orbit](Location-LabToOrbit.md) | Lab To Orbit - Colorado |
| [Location - Legrange Point 2](Location-LegangePoint2.md) | Legrange Point 2 |
| [Location - Lunar Tent 1](Location-LocationLunarTent1.md) | Inflatable lunar tent with controlled atmosphere. |
| [Location - Lunar Village](Location-LocationLunarVillage.md) | EU Lunar Village (Pending) |
| [Location - LunarBuggy](Location-LocationLunarBuggy.md) | Lunar buggy for the Artemis mission (GM / Lockheed Martin) |
| [Location - Mir](Location-LocationMirSpaceStation.md) | Mir Space Station (Decomissioned) |
| [Location - Orbital Reef](Location-LocationOrbitalReefSpaceStation.md) | Orbital Reef Space Station |
| [Location - Palace in the Sky](Location-LocationTaingong.md) | Palace in the Sky (Taingong) |
| [Location - Soyez Capsule](Location-LocationSoyez.md) | Soyez capsule, part of the Korolev Design Bureau lunar landing flight system. |
| [Location - Space Lab](Location-LocationSpaceLabSpaceStation.md) | Space Lab (Decomissioned) |
| [Location - SpaceGarage1](Location-LocationSpaceGarage.md) | Space Garage |
| [Location - Telescope Crater](Location-LocationCrater2.md) | Lunar crater suitable for a space telescope. |
| [Low-Load BFRT Protocol](ActivityDefinition-BFRT-Protocol-LowLoad-001.md) | Prescribed low-load BFRT protocol for lower extremity countermeasures |
| [Lower Body BFRT Session](Procedure-BFRT-LowerBody-Session-001.md) | Lower-body BFRT session at 30% 1RM with 80 mmHg occlusion pressure |
| [Lunar Gateway HALO Module](Location-Gateway-HALO-Module.md) | Habitation and Logistics Outpost module of Lunar Gateway in NRHO |
| [Lunar Gateway HALO Module](Location-LunarGatewayHALO.md) | Lunar Gateway Habitation and Logistics Outpost |
| [Lunar Gateway Power and Propulsion Element](Location-LunarGatewayPPE.md) | Lunar Gateway Power and Propulsion Element |
| [Lunar South Pole Base](Location-LunarSouthPoleBases.md) | Permanent lunar base near the South Pole |
| [Lunar Telemedicine Terminal](Device-Telemedicine-LunarTerminal-001.md) | Integrated telemedicine terminal for Artemis lunar surface operations |
| [Macaroni & cheese](Binary-artemis-021.md) |  |
| [Malapert Massif Landing Site](Location-Malapert-Massif-Landing-Site.md) | Artemis IV landing site at Malapert Massif, lunar south pole region |
| [Mango salad](Binary-artemis-016.md) |  |
| [Mango-peach smoothie](Binary-artemis-003.md) |  |
| [Maple syrup](Binary-artemis-027.md) |  |
| [Mars Ascent Vehicle](Location-MarsAscentVehicle.md) | Mars surface to orbit transport |
| [Mars Base Alpha](Location-MarsBaseAlpha.md) | First permanent Mars surface base |
| [Mars Crew Member - Commander Chen](Patient-MarsCrewMember1.md) | Example Mars crew member (Commander Sarah Chen) with baseline health data |
| [Mars Crew Member - Mission Specialist Okafor](Patient-MarsCrewMember2.md) | Example Mars crew member (Mission Specialist Daniel Okafor), geologist and subject of the autonomous appendectomy encounter |
| [Mars Direct Mission 2040](Encounter-MarsDirectMission2040.md) | Entire Mars Direct mission encounter (launch to splashdown) |
| [Mars Direct Mission Plan 2040](PlanDefinition-MarsDirectMissionPlan2040.md) | Complete mission timeline for Mars Direct architecture mission |
| [Mars EVA - Sol 147](Procedure-MarsEVA-Sol147.md) | Surface EVA to collect geological samples at crater rim, duration 6.5 hours |
| [Mars Lander Contamination Risk](RiskAssessment-ContaminationRisk-MarsLander-001.md) | Forward contamination risk assessment for Mars lander mission |
| [Mars Surface Habitat - Jezero Crater](Location-MarsHabitat-Jezero.md) | Pressurized habitat module at Jezero Crater landing site |
| [Mars Transit Vehicle](Location-MarsTransitVehicle.md) | Deep space transport for Mars missions |
| [Mayo Clinic Aerospace Medicine](Location-MayoAerospaceMedicine.md) | Mayo Clinic aerospace medicine and altitude research |
| [Metabolomics Observation](Observation-Metabolomics-Observation-001.md) | Untargeted metabolomics analysis of dried blood spot from ISS crew member |
| [NASA Ames Research Center](Location-NASAAmesResearchCenter.md) | NASA Ames centrifuge and spatial disorientation research |
| [NASA Neutral Buoyancy Laboratory](Location-NASANeutralBuoyancyLaboratory.md) | NASA's Neutral Buoyancy Laboratory at Johnson Space Center, Houston, Texas |
| [Naval Medical Research Unit](Location-NavalMedicalResearchUnit.md) | US Navy diving medicine and hyperbaric research facility |
| [Neutral Buoyancy Facility Equipment](Device-NeutralBuoyancyFacilityEquipment.md) | Equipment used in neutral buoyancy training facility |
| [Observation - Environmental](Observation-Observation.Environmental-1.md) | Environmental monitoring status report |
| [Observation - Orbital Elements](Observation-Observation.Kepler.ECI.1.md) | Observation - Orbital Elements |
| [Org - Axiom Space](Organization-AxiomSpace.md) | Organization - Axiom Space |
| [Org - Collins Aerospace](Organization-CollinsAerospace.md) | Organization - Collins Aerospace |
| [Org - Department of Commerce](Organization-UsDepartmentOfCommerce.md) | Organization - Department of Commerce |
| [Org - Glenn Research Center](Organization-GlennResearchCenter.md) | Organization - Glenn Research Center |
| [Org - ILC Dover](Organization-IlcDover.md) | Organization - ILC Dover |
| [Org - NASA](Organization-NASA.md) | Organization - National Aeronautics and Space Administration |
| [Org - Oceaneering](Organization-Oceaneering.md) | Organization - Oceaneering |
| [Org - Office of Space Commerce](Organization-UsOfficeOfSpaceCommerce.md) | Organization - Office of Space Commerce |
| [Org - Pine Park Engineering](Organization-PineParkEngineering.md) | Organization - Pine Park Engineering |
| [Org - Sierra Space](Organization-SieraSpace.md) | Organization - Sierra Space |
| [Org - Space Force](Organization-SpaceForce.md) | Organization - US Space Force |
| [Org - Star Harbor Academy](Organization-StarHarborAcademy.md) | Organization - Star Harbor Academy |
| [Org - TRISH](Organization-TRISH.md) | Organization - Translational Research Institute for Space Health |
| [Patient - Ambassador Sarek](Patient-sarek.md) | Patient - Ambassador Sarek |
| [Patient - Catherine Janeway](Patient-janeway.md) | Patient - Catherine Janeway |
| [Patient - James Kirk](Patient-kirk.md) | Patient - James Kirk |
| [Patient - Red Shirt 1](Patient-redshirt1.md) | Patient - Red Shirt 1 |
| [Patient - Red Shirt 2](Patient-redshirt2.md) | Patient - Red Shirt 2 |
| [Patient - Space Construction 1](Patient-space-construction-engineer-1.md) | Patient - Space Construction Engineer |
| [Patient - Space Engineer](Patient-space-engineer-1.md) | Patient - Space Engineer |
| [Patient - Space Miner 1](Patient-spaceminer1.md) | Patient - Space Miner |
| [Patuxent River Naval Air Station](Location-PatuxentRiverNavalAirStation.md) | US Navy Test Pilot School |
| [Peanut butter](Binary-artemis-029.md) |  |
| [Personalized Countermeasure Plan](CarePlan-PersonalizedPlan-001.md) | Individualized countermeasure plan based on metabolomics and genomics data |
| [Pineapple drink](Binary-artemis-009.md) |  |
| [Procedure - Bone Densitometry](Procedure-ProcedureBoneDensitometry.md) | Bone densitometry scan |
| [Procedure - Compression](Procedure-ProcedureCompression.md) | Atmospheric compression of vehicle compartment |
| [Procedure - Decompression](Procedure-ProcedureDecompression.md) | Decompression of vehicle compartment |
| [Procedure - Eye Exam](Procedure-ProcedureEyeExam.md) | Eye exam |
| [Procedure - Hearing Exam](Procedure-ProcedureHearingExam.md) | Hearing exam |
| [Procedure - Ultrasound](Procedure-ProcedureUltrasound.md) | Ultrasound scan of the abdomen |
| [Promethazine IM Rescue Dose](MedicationAdministration-Promethazine-IM-Rescue.md) | Intramuscular promethazine 25mg for acute SMS rescue on flight day 2 |
| [Pudding](Binary-artemis-041.md) |  |
| [Quadriceps CSA Outcome](Observation-BFRT-Quadriceps-CSA-001.md) | Quadriceps cross-sectional area measurement after 8 weeks of BFRT |
| [Radiation Exposure Summary, ISS Expedition 75 (example)](DiagnosticReport-space-radiation-summary-example.md) | Increment radiation summary prepared by the flight surgeon from the daily and cumulative dose observations. |
| [Radiation Risk Assessment - Post Outbound Transit](RiskAssessment-RadiationRisk-PostTransit.md) | Cancer risk assessment after 6-month outbound transit to Mars |
| [Rapid Depressurization Event](Condition-Emergency-RapidDepress-001.md) | Rapid depressurization event on ISS requiring emergency response |
| [Remote-Guided POCUS Request](ServiceRequest-Telemedicine-POCUS-Request-001.md) | Request for remote-guided point-of-care ultrasound from ISS CMO to ground radiologist |
| [Risk - Atmosphere](RiskAssessment-RiskAssesmentAtmosphere.md) | Risk of flight running out of breathable atmosphere. (i.e. suffocation) |
| [Risk - Calorie Ristrction](RiskAssessment-RiskAssesmentCalorieRestriction.md) | Risk of calorie restriction among passengers. (i.e. starvation) |
| [Risk - Cancer](RiskAssessment-RiskAssesmentCancer.md) | Post-flight risk of cancer. (i.e. cancer) |
| [Risk - Catastrophic Failure](RiskAssessment-RiskAssesmentFlightRisk.md) | Risk of flight having a catastrophic engineering failure. (i.e. explotion) |
| [Risk - Contamination](RiskAssessment-RiskAssesmentContamination.md) | Risk assessment of microbial contamination. (i.e. mildew) |
| [Risk - Mission](RiskAssessment-RiskAssesmentMission.md) | Overall mission risk assessment for a space mission |
| [SCUBA Diving Equipment](Device-ScubaDivingEquipment.md) | Self-contained underwater breathing apparatus |
| [SMS Prophylaxis Protocol](CarePlan-SMS-Prophylaxis-Protocol.md) | Antiemetic care plan for SMS prophylaxis covering pre-flight through post-flight phases |
| [Shackleton Crater Base](Location-ShackletonCraterBase.md) | Research station at Shackleton Crater rim |
| [Soyuz MS Spacecraft](Location-SoyuzMS.md) | Russian Soyuz MS crew vehicle |
| [Space Motion Sickness Episode - Flight Day 2](Condition-SMS-Episode-FD2.md) | Moderate SMS episode on flight day 2 during ISS expedition |
| [SpaceX Hawthorne Factory](Location-SpaceXHawthorneFactory.md) | SpaceX manufacturing and mission control facility |
| [SpaceX Starbase](Location-SpaceXBocaChica.md) | SpaceX Starship development and launch facility |
| [Spaceport America](Location-VirginGalacticSpaceport.md) | Virgin Galactic commercial spaceport |
| [Spicy green beans](Binary-artemis-020.md) |  |
| [Spicy mustard](Binary-artemis-032.md) |  |
| [Standard Measures Grip Strength - Pre-flight](Observation-Standard-Measures-Grip-PreFlight.md) | NASA Standard Measures grip strength assessment at L-30 days |
| [Starship HLS for Artemis IV](Device-Starship-HLS-Artemis-IV.md) | SpaceX Starship Human Landing System variant for Artemis IV lunar landing |
| [Store-and-Forward Telemedicine Encounter](Encounter-Telemedicine-StoreForward-001.md) | Store-and-forward dermatology consultation from ISS to ground |
| [Strawberry breakfast drink](Binary-artemis-006.md) |  |
| [Strawberry jam](Binary-artemis-033.md) |  |
| [Sun-Earth L1 Observatory](Location-SunEarthL1Station.md) | Space weather monitoring station at L1 |
| [Surface Swab CFU Assay](Observation-MicrobialAssay-SurfaceSwab-001.md) | Surface swab colony-forming unit assay of Mars lander deck panel |
| [Tortillas](Binary-artemis-011.md) |  |
| [Trauma EFAST Exam](Questionnaire-TraumaEFASTQuestionnaire.md) |  |
| [Tropical fruit salad](Binary-artemis-022.md) |  |
| [TsPK Centrifuge Complex](Location-NASCOMRussianCentrifuge.md) | Russian cosmonaut centrifuge training facility |
| [UTMB Aerospace Medicine Research](Location-UTMBAerospaceResearch.md) | University of Texas Medical Branch aerospace medicine program |
| [University of Pennsylvania Hyperbaric Center](Location-UniversityOfPennsylvaniaHyperbaric.md) | Academic hyperbaric medicine and research center |
| [Urinary Retention After Promethazine](AdverseEvent-Urinary-Retention-Post-Promethazine.md) | Urinary retention adverse event 4 hours after promethazine IM administration |
| [Vanilla breakfast drink](Binary-artemis-005.md) |  |
| [Vegetable quiche](Binary-artemis-013.md) |  |
| [Wheat flat bread](Binary-artemis-012.md) |  |
| [Wright-Patterson Aerospace Research Laboratory](Location-WrightPattersonAerospaceResearch.md) | USAF aerospace medicine research facility |
| [Yuri Gagarin Cosmonaut Training Center](Location-YuriGagarinCosmonautTrainingCenter.md) | Russian cosmonaut training facility with underwater training capabilities |
| [xEMU EVA Suit #001](Device-xEMU-Suit-001.md) | First xEMU suit certified for Artemis IV lunar surface EVAs |
| [xEVAS Lunar Suit Definition](DeviceDefinition-xEVAS-LunarSuit-Def-001.md) | Axiom Space xEVAS suit definition for Artemis lunar surface operations |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [NASA Hyperbaric Facility](Location-NASAHyperbaricFacility.md) | NASA's hyperbaric chamber for diving medicine and space analog training |

