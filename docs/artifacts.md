# Artifacts Summary - v0.5.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Environmental Monitoring API for Closed Biome Systems](StructureDefinition-EnvironmentalMonitoringLogicalModel.md) | A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses. |
| [Spacecraft Life Support Telemetry](StructureDefinition-SpacecraftLifeSupportTelemetry.md) | A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Astronaut and Space Tourist Medical Screening Questionnaire](Questionnaire-AstronautFlightReadinessQuestionnaire.md) | A medical screening form for astronaut or space tourism flight readiness, based on FAA Form 8500-8, NASA/ESA standards, and commercial vendor practices. |
| [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md) | FAA Form 8500-8 Application for Airman Medical Certificate converted to FHIR Questionnaire format |
| [G-SHOCK Centrifugal Trainer Eligibility Questionnaire](Questionnaire-GShockEligibility.md) | Pre-training screening questionnaire to determine eligibility for G-SHOCK multi-axis gimbal training |
| [NASA HERA Analog Mission Application](Questionnaire-HERAAnalogMissionApplication.md) | Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Advanced Dive Profile](StructureDefinition-advanced-dive-profile.md) | Comprehensive dive profile with enhanced data collection and regulatory compliance |
| [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md) | Radiation exposure observation for deep space missions with GCR vs SPE differentiation and shielding context |
| [Astrodynamics Observation](StructureDefinition-AstrodynamicsObservation.md) | An observation of a satellite or celestial object's orbital characteristics, using orbital elements. |
| [Astronaut Patient Profile](StructureDefinition-Astronaut.md) | Patient profile for astronauts and space travelers |
| [Autonomous Medical Encounter](StructureDefinition-autonomous-medical-encounter.md) | Encounter profile for crew-led medical events with no real-time ground support due to communication delays |
| [Average Blood Pressure](StructureDefinition-average-blood-pressure.md) | A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol. The average blood pressure has a systolic and a diastolic component. |
| [Barotrauma Assessment](StructureDefinition-BarotraumaAssessment.md) | Assessment of pressure-related injuries (barotrauma) |
| [Behavioral Health State](StructureDefinition-behavioral-health-state.md) | Point-in-time behavioral and psychological state assessment for aerospace missions. |
| [Blood Pressure Device](StructureDefinition-bp-device.md) | A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size. |
| [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.md) | Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components. |
| [Body Height](StructureDefinition-height.md) | The measurement in centimeters or feet and inches from the top of the head to the heel, usually while standing. |
| [Body Mass Index](StructureDefinition-body-mass-index.md) | A numerical index based on an individual's weight in kilograms divided by the square of their height in meters. |
| [Body Temperature](StructureDefinition-body-temperature.md) | The measured heat of an individual's body. |
| [Body Weight](StructureDefinition-body-weight.md) | The measured mass of an individual's body. |
| [Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md) | Quantifies acute and cumulative calorie deficits for astronauts |
| [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md) | STUB - Device profile for commercial space equipment. |
| [Communication Session Assessment](StructureDefinition-communication-session-assessment.md) | Assessment of communication system performance during underwater training |
| [Cumulative Radiation Dose (Fixed)](StructureDefinition-cumulative-radiation-dose.md) | Enhanced cumulative radiation dose tracking with comprehensive time periods |
| [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md) | Longitudinal, integrated measure of cumulative stress burden analogous to cumulative radiation dose. |
| [Decompression Protocol](StructureDefinition-decompression-protocol.md) | Standardized decompression procedures for diving operations and space analog training |
| [Decompression Sickness](StructureDefinition-DecompressionSickness.md) | Decompression sickness occurring during diving or altitude training |
| [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md) | Medical clearance examination for diving operations |
| [Dive Profile](StructureDefinition-DiveProfile.md) | Comprehensive dive profile including depth, time, and environmental data |
| [Diving Equipment](StructureDefinition-DivingEquipment.md) | Equipment used for diving operations and underwater training |
| [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md) | Comprehensive hyperbaric oxygen therapy with full monitoring and safety protocols |
| [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md) | Comprehensive neutral buoyancy training session with full regulatory compliance tracking |
| [Environmental Monitoring](StructureDefinition-EnvironmentalMonitoring.md) | Profile for environmental monitoring. |
| [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md) | Record of an Artemis mission EVA (moonwalk) with duration, location, participants, suit device, and metabolic data |
| [Gimbal Screening](StructureDefinition-GimbalScreening.md) | Screening protocol for Multi Axis Gimbal training device. |
| [Habitat Environmental Monitoring](StructureDefinition-habitat-environmental-observation.md) | Observation of environmental conditions inside Mars habitat (pressure, O2, CO2, temperature, humidity, dust) |
| [Habitat Location](StructureDefinition-habitat-location.md) | Location profile for lunar habitats, Gateway modules, and landing sites with selenographic coordinates and region code |
| [Heart Rate](StructureDefinition-heart-rate.md) | The number of heart beats in a minute. |
| [Hydration Status Observation](StructureDefinition-hydration-status-observation.md) | Hydration status monitoring for space missions |
| [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md) | A medical facility equipped with a hyperbaric chamber for pressurized treatment |
| [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md) | Hyperbaric oxygen therapy or chamber treatment |
| [ISRU Production Log](StructureDefinition-isru-production-log.md) | Tracking ISRU propellant production (CH4/O2) for Mars return journey |
| [Mars Crew Member Profile](StructureDefinition-mars-crew-member.md) | Patient profile for Mars crew with extensions for radiation career dose, flight certification, and baseline health metrics |
| [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md) | Record of Mars surface EVA with duration, location, participants, suit device, metabolic data, and dust exposure |
| [Mars Radiation Risk Assessment](StructureDefinition-mars-radiation-risk-assessment.md) | Radiation exposure risk assessment for long-duration deep space missions |
| [Metabolic Risk Summary](StructureDefinition-metabolic-risk-summary.md) | Evaluates risk from prolonged caloric deficits and metabolic stress |
| [Mission Plan](StructureDefinition-mission-plan.md) | Artemis mission timeline with phases, events, constraints, and medical protocols |
| [Mission Risk Assessment](StructureDefinition-SpaceRiskAssesment.md) | STUB - Risk assessment for space missions. |
| [Mission Timeline Plan](StructureDefinition-mission-timeline-plan.md) | Mars mission timeline with phases, events, EVA schedules, and medical protocols |
| [Neutral Buoyancy Facility](StructureDefinition-NeutralBuoyancyFacility.md) | Facility for underwater astronaut training |
| [Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md) | Training session in neutral buoyancy facility for EVA simulation |
| [Oxygen Saturation in Arterial Blood by Pulse Oximetry](StructureDefinition-oxygen-saturation-arterial-blood-pulseOx.md) | A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood via pulse oximetry. |
| [Oxygen Saturation in Arterial blood, method not specified](StructureDefinition-oxygen-saturation-arterial-blood.md) | A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood. |
| [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md) | Documentation of psychological countermeasure interventions for behavioral health in aerospace missions. |
| [Radiation Detection Device (Fixed)](StructureDefinition-radiation-detector.md) | Fixed device profile for radiation monitoring in space with properly constrained properties |
| [Regulatory Compliance Assessment](StructureDefinition-regulatory-compliance-assessment.md) | Assessment of compliance with diving and space medicine regulatory standards |
| [Respiratory Rate](StructureDefinition-respiratory-rate.md) | The measured number of breaths taken in a minute. |
| [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md) | Panel observation grouping related exercise measures for a single session (type, duration, intensity, HR) |
| [Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md) | Individual exercise measurement (duration, intensity, heart rate, power output) for space-based physical activity |
| [Space Exercise Session](StructureDefinition-space-exercise-session.md) | Procedural record of a space-based exercise event, linking prescriptions, goals, devices, and observations |
| [Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md) | Weekly exercise volume derived from mission exercise sessions (EVS - Exercise Vital Sign) |
| [Space Health Condition](StructureDefinition-SpaceCondition.md) | Health conditions specific to outerspace environment. |
| [Space Health Procedure](StructureDefinition-SpaceProcedure.md) | STUB - Health procedures specific to outerspace environment. |
| [Space Insurance Contract](StructureDefinition-SpaceInsuranceContract.md) | STUB - Specialized contract coverage for space travel |
| [Space Nutrition Intake](StructureDefinition-space-nutrition-intake.md) | Documentation of actual daily intake and hydration events for space missions |
| [Space Nutrition Inventory Item](StructureDefinition-space-nutrition-inventory-item.md) | Tracks food stores aboard spacecraft or planetary habitats |
| [Space Nutrition Product](StructureDefinition-space-nutrition-product.md) | Space-rated food, supplements, and electrolytes with mission-specific properties |
| [Space Organization](StructureDefinition-SpaceOrg.md) | STUB - Organizations involved with astronautics and space travel. |
| [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md) | Corrected radiation dose measurement for space missions with proper extension contexts |
| [Space Radiation Exposure Summary (Fixed)](StructureDefinition-space-radiation-summary.md) | Comprehensive radiation dose summary with proper mission context |
| [Space Vehicle](StructureDefinition-SpaceVehicle.md) | STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc) |
| [Space insurance](StructureDefinition-SpaceInsurance.md) | STUB - Insurance plan for space travel |
| [Twenty Four Hour Blood Pressure](StructureDefinition-twenty-four-hour-blood-pressure.md) | An average blood pressure (systolic and diastolic) over a twenty four hour period. |
| [Underwater Communication System](StructureDefinition-underwater-communication-system.md) | Communication equipment for underwater training operations |
| [Underwater EVA Simulation](StructureDefinition-UnderwaterEVASimulation.md) | Extravehicular activity simulation conducted underwater |
| [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md) | Emergency response procedures during underwater training operations |
| [Vital Signs Panel](StructureDefinition-vital-signs-panel.md) | A vital signs panel as defined by Logica Health. It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body temperature, blood pressure panel, heart rate, respiratory rate, head-occcipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index. |
| [xGeo Locations](StructureDefinition-SpaceLocation.md) | STUB - Locations in outerspace, past the Karman line, such as a space ship or space habitat. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Areographic Coordinates](StructureDefinition-areographic-coordinates.md) | Mars latitude and longitude for surface locations |
| [Cardiovascular Fitness Assessment](StructureDefinition-cardiovascular-fitness.md) | Assessment of cardiovascular fitness for diving |
| [Communication Delay](StructureDefinition-communication-delay.md) | Earth-Mars light-time delay for data transmission context |
| [Communication Systems Used](StructureDefinition-communication-systems.md) | Communication systems and protocols used during training |
| [Complication Monitoring](StructureDefinition-complication-monitoring.md) | Monitoring for treatment complications |
| [Crew Coordination Assessment](StructureDefinition-crew-coordination.md) | Assessment of crew coordination during simulation |
| [Decompression Algorithm Used](StructureDefinition-decompression-algorithm.md) | The specific decompression algorithm or table used |
| [Derived From Activity Group](StructureDefinition-derived-from-group.md) | Links aggregated metrics to source activity group observations |
| [Diving Medical Contraindications](StructureDefinition-diving-contraindications.md) | Medical conditions that contraindicate diving |
| [EVA Number](StructureDefinition-eva-number.md) | Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2) |
| [Emergency Procedures](StructureDefinition-emergency-procedures.md) | Emergency decompression procedures if applicable |
| [Emergency Response Assessment](StructureDefinition-emergency-response.md) | Assessment of emergency response procedures |
| [Emergency Response Time](StructureDefinition-response-time.md) | Time from emergency recognition to response initiation |
| [Energy Expenditure](StructureDefinition-energy-expenditure.md) | Total daily energy expenditure in kcal/day |
| [Environmental Conditions](StructureDefinition-environmental-conditions.md) | Environmental conditions during training session |
| [Environmental Factors](StructureDefinition-environmental-factors.md) | Environmental conditions affecting decompression requirements |
| [Exercise Device](StructureDefinition-exercise-device.md) | Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS) |
| [Harness Load](StructureDefinition-harness-load.md) | Percentage of body weight applied by harness during treadmill exercise |
| [Hydration Deficit](StructureDefinition-hydration-deficit.md) | Daily hydration deficit in liters per day |
| [Hyperbaric Chamber Capabilities](StructureDefinition-hyperbaric-capabilities.md) | Specific capabilities of the hyperbaric chamber |
| [Hyperbaric Chamber Configuration](StructureDefinition-chamber-configuration.md) | Configuration and setup of the hyperbaric chamber |
| [Hyperbaric Chamber Type](StructureDefinition-chamber-type.md) | Type of hyperbaric chamber (monoplace, multiplace, etc.) |
| [Hyperbaric Treatment Table](StructureDefinition-treatment-table.md) | Specific treatment table used (e.g., USN Table 6) |
| [ISRU System Status](StructureDefinition-isru-status.md) | In-Situ Resource Utilization system status and propellant production levels |
| [Inventory Risk Flag](StructureDefinition-inventory-risk-flag.md) | Risk level for nutrition inventory status |
| [Isolation Risk Factor](StructureDefinition-isolation-risk.md) | Captures isolation and confinement risk factors affecting behavioral health |
| [Lessons Learned](StructureDefinition-lessons-learned.md) | Lessons learned and recommendations from emergency response |
| [Location Capabilities](StructureDefinition-location-capabilities.md) | Specific capabilities and equipment available at location |
| [Location Hierarchy](StructureDefinition-location-hierarchy.md) | Hierarchical relationship between locations (parent/child) |
| [Lunar Coordinates](StructureDefinition-lunar-coordinates.md) | Selenographic latitude and longitude for lunar surface locations |
| [Maximum Depth Reached](StructureDefinition-maximum-depth-reached.md) | Maximum depth reached during the dive requiring decompression |
| [Maximum Operating Pressure](StructureDefinition-maximum-pressure.md) | Maximum pressure the chamber can safely operate at |
| [Maximum Training Depth](StructureDefinition-maximum-depth.md) | Maximum depth reached during training session |
| [Medical Intervention](StructureDefinition-medical-intervention.md) | Medical interventions provided during emergency response |
| [Mission Context](StructureDefinition-mission-context.md) | Links radiation exposure to specific space missions |
| [Mission Context for Diagnostic Reports](StructureDefinition-diagnostic-report-mission-context.md) | Links diagnostic reports to specific space missions |
| [Operational Status](StructureDefinition-operational-status.md) | Current operational status of the facility |
| [Oxygen Concentration](StructureDefinition-oxygen-concentration.md) | Oxygen concentration during treatment |
| [Oxygen Delivery Capability](StructureDefinition-oxygen-capability.md) | Oxygen delivery capabilities of the chamber |
| [Patient Monitoring](StructureDefinition-patient-monitoring.md) | Continuous patient monitoring during hyperbaric treatment |
| [Pulmonary Function Assessment](StructureDefinition-pulmonary-function.md) | Assessment of respiratory function for diving |
| [Radiation Countermeasures](StructureDefinition-radiation-countermeasures.md) | Protective measures taken during radiation exposure |
| [Radiation Shielding](StructureDefinition-radiation-shielding.md) | Shielding mass and composition for habitat or vehicle |
| [Regulatory Compliance](StructureDefinition-regulatory-compliance.md) | Regulatory standards compliance during training session |
| [Rehydration Requirement](StructureDefinition-rehydration-requirement.md) | Amount of water required to prepare space food |
| [Rescue Procedures Used](StructureDefinition-rescue-procedures.md) | Specific rescue procedures and techniques employed |
| [Safety Protocols](StructureDefinition-safety-protocols.md) | Safety protocols and procedures followed during training |
| [Safety Stop Compliance](StructureDefinition-safety-stop-compliance.md) | Compliance with required safety stops during ascent |
| [Shelf Life Decay](StructureDefinition-shelf-life-decay.md) | Degradation of nutritional value over time in space conditions |
| [Shielding Mass](StructureDefinition-shielding-mass.md) | Effective shielding mass in g/cm² |
| [Space Radiation Type](StructureDefinition-radiation-type.md) | Type of space radiation exposure |
| [Space Suit Configuration](StructureDefinition-suit-configuration.md) | Configuration of space suit simulator used in training |
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
| [Adaptations of Bone Health](ValueSet-SpaceAdaptationBoneHealth.md) | Bone health adaptations observed in spaceflight conditions. |
| [Aircraft Fume Exposure](ValueSet-AircraftFumeExposureValueSet.md) | Health impacts from exposure to aircraft contaminated air and fume events. |
| [All Artemis Devices](ValueSet-artemis-all-devices-vs.md) | Both certified and prototype Artemis devices |
| [All Mars Mission Devices](ValueSet-mars-all-devices-vs.md) | Both certified and prototype Mars devices |
| [Artemis Certified Devices](ValueSet-artemis-certified-devices-vs.md) | Flight-qualified Artemis mission hardware |
| [Artemis Landing Regions](ValueSet-artemis-landing-region-vs.md) | Candidate Artemis III south pole landing regions for Location bindings |
| [Artemis Missions](ValueSet-artemis-mission-vs.md) | All Artemis program missions I-V |
| [Artemis Prototype Devices](ValueSet-artemis-prototype-devices-vs.md) | Developmental and test Artemis hardware |
| [Back Pain and Space Travel](ValueSet-AstronautBackPain.md) | Back pain and associated conditions observed in astronauts and their potential terrestrial applications. |
| [Behavioral Health Metrics Value Set](ValueSet-behavioral-health-metrics-vs.md) | Key behavioral health state metrics used in aerospace behavioral health monitoring. |
| [Brain and Neurologic Changes](ValueSet-SpaceTravelBrainChanges.md) | Concepts related to physiological and neurological changes from prolonged space travel. |
| [Calorie Deficit Risk Levels](ValueSet-calorie-deficit-risk-vs.md) | Risk categorization for caloric deficits |
| [Cognitive Performance Indicators Value Set](ValueSet-cognitive-performance-indicators-vs.md) | Cognitive and vigilance performance indicators relevant to operational readiness. |
| [Complete Organ-Specific Dose Codes](ValueSet-organ-dose-codes-vs-complete.md) | Comprehensive codes for organ-specific radiation dose measurements |
| [Complete Radiation Countermeasures](ValueSet-radiation-countermeasures-vs-complete.md) | Comprehensive list of protective measures against space radiation |
| [Complete Radiation Detector Types](ValueSet-radiation-detector-type-vs-complete.md) | Comprehensive list of radiation detection devices used in space |
| [Complete Space Radiation Dose Measurement Codes](ValueSet-space-radiation-dose-codes-vs-complete.md) | Comprehensive codes for radiation dose measurements in space environments |
| [Complete Space Radiation Types](ValueSet-space-radiation-type-vs-complete.md) | Comprehensive list of ionizing radiation types encountered in space |
| [Decompression Procedures](ValueSet-decompression-procedures.md) | Standardized decompression procedures and protocols |
| [Diving Medical Contraindications](ValueSet-diving-contraindicated-conditions.md) | Medical conditions that contraindicate diving activities |
| [Diving Medical Examinations](ValueSet-diving-medical-examinations.md) | Types of medical examinations for diving fitness |
| [Dosimeter Types](ValueSet-dosimeter-type-vs.md) | Types of radiation dosimeters |
| [EVS Units](ValueSet-evs-units-vs.md) | Units for Exercise Vital Sign measurements |
| [Gimbal Contraindications](ValueSet-GimbalContraindicatedConditions.md) | Contraindicated conditions for riding a multi-axis gimbal |
| [Human Mars Mission Plans](ValueSet-crewed-mars-missions-vs.md) | Proposed and conceptual human mission architectures to Mars |
| [Hydration Types](ValueSet-hydration-type-vs.md) | Types of hydration products used in space |
| [Hyperbaric Chamber Capabilities](ValueSet-hyperbaric-capabilities-vs.md) | Capabilities available in hyperbaric chambers |
| [Hyperbaric Chamber Types](ValueSet-hyperbaric-chamber-type-vs.md) | Types of hyperbaric chambers |
| [Isolation Syndrome Factors Value Set](ValueSet-isolation-syndrome-factors-vs.md) | Risk factors related to isolation and confinement that affect behavioral health. |
| [Location Capabilities Value Set](ValueSet-location-capabilities-vs.md) | Capabilities and services available at aerospace medicine locations |
| [Lunar Dust Toxicity](ValueSet-LunarDustToxicityValueSet.md) | Conditions and effects associated with lunar dust exposure, including respiratory, ocular, and systemic toxicities. |
| [Macronutrient Metrics](ValueSet-macronutrient-metrics-vs.md) | Measurement types for macronutrient tracking |
| [Mars Landing Sites](ValueSet-mars-landing-sites-vs.md) | Candidate landing sites for human Mars missions |
| [Mars Mission Devices - Certified](ValueSet-mars-devices-certified-vs.md) | Flight-qualified hardware for Mars missions |
| [Mars Mission Devices - Prototype](ValueSet-mars-devices-prototype-vs.md) | Developmental and test hardware for Mars missions |
| [Mars Missions](ValueSet-mars-missions-vs.md) | All Mars missions (robotic and human, completed and planned) |
| [Muscle Stiffness](ValueSet-MuscleStiffnessAndSpaceHealth.md) | Concepts related to muscle stiffness and health in the context of spaceflight and Earth-based applications. |
| [Neutral Buoyancy Training Activities](ValueSet-neutral-buoyancy-training-activities.md) | Types of training activities conducted in neutral buoyancy environments |
| [Nutrition Inventory Status](ValueSet-nutrition-inventory-status-vs.md) | Status levels for nutrition inventory management |
| [Operational Status Value Set](ValueSet-operational-status-vs.md) | Operational status codes for facilities and vehicles |
| [Radiation Countermeasures](ValueSet-radiation-countermeasures-vs.md) | Protective measures against radiation |
| [Radiation Dose Units](ValueSet-radiation-dose-units-vs.md) | Units for radiation dose measurements |
| [Regulatory Standards for Diving and Space Medicine](ValueSet-regulatory-standards.md) | Regulatory standards and compliance requirements |
| [Sleep Loss and Hypoxia Effects](ValueSet-SleepLossHypoxiaEffect.md) | Concepts related to the physiological and cognitive effects of sleep loss and hypoxia. |
| [Sleep Loss and Hypoxia Responses](ValueSet-SleepLossHypoxiaResponses.md) | Concepts related to sleep deprivation and physiological/cognitive responses to systemic environmental hypoxia. |
| [Space Cardiovascular Effects](ValueSet-space-cardiovascular-effects.md) | Cardiovascular effects and conditions relevant to human spaceflight, including orthostatic intolerance, heart rate changes, and blood pressure |
| [Space Environmental Factors](ValueSet-space-environmental-factors.md) | Environmental factors relevant to human spaceflight, including weightlessness, radiation, isolation, and decompression |
| [Space Exercise Modality Value Set](ValueSet-space-exercise-modality-vs.md) | Permitted space exercise modalities, derived from the Space Exercise Modality Code System. |
| [Space Exercise Performance Metrics](ValueSet-space-performance-metric-vs.md) | Performance metrics for space exercise (defined in SpacePerformanceMetricCS) |
| [Space Monitoring Procedures](ValueSet-space-monitoring-procedures.md) | Monitoring procedures relevant to human spaceflight, including vital signs monitoring and physiological monitoring |
| [Space Neurological Effects](ValueSet-space-neurological-effects.md) | Neurological effects relevant to human spaceflight, including vestibular conditions, motion sickness, and intracranial pressure changes |
| [Space Nutrition Types](ValueSet-space-nutrition-type-vs.md) | Types of nutritional products available in space missions |
| [Space Physiological Effects](ValueSet-space-physiological-effects.md) | Physiological effects and conditions relevant to human spaceflight, including motion sickness, bone loss, muscle atrophy, and sleep disorders |
| [Space Psychological Effects](ValueSet-space-psychological-effects.md) | Psychological effects relevant to human spaceflight, including sleep disorders, isolation, anxiety, and depression |
| [Space Radiation Effects](ValueSet-space-radiation-effects.md) | Radiation effects and conditions relevant to human spaceflight, including cosmic radiation, radiation sickness, and radiation injuries |
| [Space Radiation Risks ValueSet](ValueSet-SpaceRadiationRisksVS.md) | Concepts relevant to space radiation risks and associated health concerns identified from Artemis I mission data. |
| [Space Radiation Types](ValueSet-space-radiation-type-vs.md) | Types of radiation encountered in space |
| [Space Visual Effects](ValueSet-space-visual-effects.md) | Visual and ocular effects relevant to human spaceflight, including visual impairment, optic nerve conditions, and intraocular pressure changes |
| [Stress Countermeasures Value Set](ValueSet-stress-countermeasures-vs.md) | Standardized set of psychological countermeasures used to mitigate stress and support mental health. |
| [Stress and Physiological Factors](ValueSet-SpaceflightStressFactors.md) | Concepts related to stress, physiological, and psychological factors during spaceflight analog missions. |
| [Underwater Communication Systems](ValueSet-underwater-communication-systems.md) | Communication systems used in underwater training operations |
| [Underwater Training Procedures](ValueSet-underwater-training-procedures.md) | Procedures and activities conducted during underwater training |
| [Water Volume Units](ValueSet-water-volume-units-vs.md) | Units for measuring water volume |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Aerospace Behavioral State Code System](CodeSystem-aerospace-behavioral-state-cs.md) | Codes describing behavioral and psychological state parameters in aerospace missions. |
| [Artemis Certified Devices](CodeSystem-artemis-certified-devices-cs.md) | Flight-qualified hardware and systems used in Artemis missions (Orion, xEMU, Starship-HLS, Gateway, LTV, etc.) |
| [Artemis Landing Regions](CodeSystem-artemis-landing-region-cs.md) | Candidate Artemis III landing regions near the lunar south pole (within 6° of pole, near permanently shadowed craters) |
| [Artemis Missions](CodeSystem-artemis-mission-cs.md) | Historical and planned Artemis program missions with target destinations, launch dates, and status |
| [Artemis Prototype Devices](CodeSystem-artemis-prototype-devices-cs.md) | Developmental and test hardware not yet flight-certified (demo units, ground analogs, next-gen prototypes) |
| [Behavioral Biomarker Code System](CodeSystem-behavioral-biomarker-cs.md) | Codes for physiologic and digital biomarkers related to behavioral health and stress. |
| [Calorie Deficit Risk Levels](CodeSystem-calorie-deficit-risk-cs.md) | Risk categorization for caloric deficits |
| [Decompression Protocols and Procedures](CodeSystem-decompression-protocol-cs.md) | Standardized decompression protocols and safety procedures |
| [Diving Medicine Code System](CodeSystem-diving-medicine-cs.md) | Medical codes specific to diving medicine and hyperbaric treatments |
| [Diving and Space Medicine Regulatory Compliance](CodeSystem-regulatory-compliance-cs.md) | Regulatory standards and compliance codes for diving and space medicine |
| [Enhanced Aerospace Medicine Code System](CodeSystem-aerospace-code-system-enhanced.md) | Comprehensive code system for aerospace medicine concepts including all referenced codes |
| [Human Mars Mission Plans](CodeSystem-crewed-mars-missions-cs.md) | Proposed or conceptual human mission architectures to Mars (Mars Direct, NASA DRMs, SpaceX, etc.) |
| [Hydration Product Types](CodeSystem-hydration-type-cs.md) | Types of hydration products used in space |
| [Hyperbaric Chamber Capabilities](CodeSystem-hyperbaric-capabilities-cs.md) | Capabilities and services available in hyperbaric chambers |
| [Hyperbaric Chamber Types](CodeSystem-hyperbaric-chamber-type-cs.md) | Types of hyperbaric chambers |
| [Isolation Syndrome Factor Code System](CodeSystem-isolation-syndrome-factor-cs.md) | Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions. |
| [Location Capabilities Code System](CodeSystem-location-capabilities-cs.md) | Capabilities and services available at aerospace medicine locations |
| [Macronutrient Metrics](CodeSystem-macronutrient-metrics-cs.md) | Measurement types for macronutrient tracking |
| [Mars Landing Sites (Candidate)](CodeSystem-mars-landing-sites-cs.md) | Candidate landing sites for human Mars missions with areographic coordinates and site characteristics |
| [Mars Mission Devices - Certified](CodeSystem-mars-devices-certified-cs.md) | Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.) |
| [Mars Mission Devices - Prototype](CodeSystem-mars-devices-prototype-cs.md) | Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems) |
| [Mars Missions](CodeSystem-mars-missions-cs.md) | NASA and international missions to Mars (robotic and conceptual human missions) |
| [Neutral Buoyancy Training Code System](CodeSystem-neutral-buoyancy-training-cs.md) | Specialized codes for neutral buoyancy training activities and assessments |
| [Nutrition Inventory Status](CodeSystem-nutrition-inventory-status-cs.md) | Status levels for nutrition inventory management |
| [Operational Status Code System](CodeSystem-operational-status-cs.md) | Operational status codes for facilities and vehicles |
| [Psychological Countermeasure Code System](CodeSystem-psychological-countermeasure-cs.md) | Codes for psychological countermeasure interventions in aerospace missions. |
| [Radiation Countermeasures Code System](CodeSystem-radiation-countermeasures-cs.md) | Protective measures against space radiation |
| [Radiation Detector Type Code System](CodeSystem-radiation-detector-type-cs.md) | Types of radiation detection equipment |
| [Space Cardiovascular Effects](CodeSystem-space-cardiovascular-effects-cs.md) | CodeSystem for space cardiovascular effects not found in SNOMED CT |
| [Space Environmental Factors](CodeSystem-space-environmental-factors-cs.md) | CodeSystem for space environmental factors not found in SNOMED CT |
| [Space Exercise Modality Code System](CodeSystem-space-exercise-modality-cs.md) | Spaceflight-specific exercise modalities used in microgravity and partial gravity environments (e.g., ISS treadmill, ARED resistive training, artificial gravity). |
| [Space Exercise Performance Metric Code System](CodeSystem-space-performance-metric-cs.md) | Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force). |
| [Space Monitoring Procedures](CodeSystem-space-monitoring-procedures-cs.md) | CodeSystem for space monitoring procedures not found in SNOMED CT |
| [Space Neurological Effects](CodeSystem-space-neurological-effects-cs.md) | CodeSystem for space neurological effects not found in SNOMED CT |
| [Space Nutrition Product Types](CodeSystem-space-nutrition-type-cs.md) | Types of nutritional products used in space missions |
| [Space Physiological Effects](CodeSystem-space-physiological-effects-cs.md) | CodeSystem for space physiological effects not found in SNOMED CT |
| [Space Preventive Health](CodeSystem-space-preventive-health-cs.md) | CodeSystem for space preventive health concepts not found in SNOMED CT |
| [Space Psychological Effects](CodeSystem-space-psychological-effects-cs.md) | CodeSystem for space psychological effects not found in SNOMED CT |
| [Space Radiation Type Code System](CodeSystem-space-radiation-type-cs.md) | Types of radiation encountered in space environments |
| [Space Treatment Procedures](CodeSystem-space-treatment-procedures-cs.md) | CodeSystem for space treatment procedures not found in SNOMED CT |
| [Space Visual Effects](CodeSystem-space-visual-effects-cs.md) | CodeSystem for space visual effects not found in SNOMED CT |
| [Underwater Communication Systems](CodeSystem-underwater-communication-cs.md) | Communication systems and protocols for underwater training operations |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Aquarius Underwater Laboratory](Location-AquariusUnderwaterLaboratory.md) | NOAA's Aquarius underwater research station used for NEEMO missions |
| [Artemis Base Camp Habitat](Location-ArtemisBaseCampHabitat.md) | Artemis lunar surface habitat module |
| [Artemis III EVA-1](Procedure-Artemis-III-EVA-1.md) | First lunar surface EVA of Artemis III mission at Malapert Massif |
| [Artemis III EVA-1 Radiation Exposure](Observation-Artemis-III-EVA1-Radiation.md) | Radiation dose during first lunar surface EVA (6.5 hours unshielded) |
| [Artemis III EVA-2](Procedure-Artemis-III-EVA-2.md) | Second lunar surface EVA of Artemis III mission exploring shadowed crater |
| [Artemis III Mission Encounter](Encounter-Artemis-III-Mission.md) | Encounter representing the entire Artemis III mission from launch to splashdown |
| [Artemis III Mission Plan](PlanDefinition-Artemis-III-Mission-Plan.md) | Complete mission plan for Artemis III including phases, timelines, and EVA schedules |
| [Artemis III Translunar Radiation Exposure](Observation-Artemis-III-Translunar-Radiation.md) | Cumulative radiation dose during 4-day translunar cruise |
| [Autonomous Medical Encounter - Appendicitis Sol 189](Encounter-Emergency-Appendicitis-Sol189.md) | Crew-led emergency appendectomy on Mars with 15-minute Earth communication delay |
| [Biosphere 2 Undersea Habitat](Location-Biosphere2UnderseaHabitat.md) | University of Arizona Biosphere 2 analog training facility |
| [Blue Origin West Texas Facility](Location-BlueOriginWestTexas.md) | Blue Origin suborbital flight operations |
| [Boeing Starliner Calypso](Location-StarlinerCalypso.md) | Boeing CST-100 Starliner spacecraft |
| [Brooks Altitude Chamber](Location-BrooksAltitudeChamber.md) | High-altitude environmental training facility |
| [Brooks School of Aerospace Medicine](Location-BrooksAerospaceMedicine.md) | USAF School of Aerospace Medicine hyperbaric facility |
| [CHESA Undersea Laboratory](Location-CHESAUnderseaLaboratory.md) | Commercial underwater training facility |
| [CSA David Florida Laboratory](Location-CSADavidFloridaLaboratory.md) | Canadian Space Agency testing facility |
| [CSA Life Sciences Research](Location-CSALifeSciencesResearch.md) | Canadian Space Agency life sciences research division |
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
| [Crew Dragon Endeavour](Location-CrewDragonEndeavour.md) | SpaceX Crew Dragon spacecraft Endeavour |
| [Crew Dragon Resilience](Location-CrewDragonResilience.md) | SpaceX Crew Dragon spacecraft Resilience |
| [DLR Institute of Aerospace Medicine](Location-DLRAerospaceMedicine.md) | German Aerospace Center medical research institute |
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
| [ESA Human Centrifuge](Location-ESACentrfugeCologne.md) | European Space Agency centrifuge facility |
| [Earth-Moon L4/L5 Stations](Location-EarthMoonL4L5Stations.md) | Space habitats at Earth-Moon Lagrange points |
| [Edwards Air Force Base](Location-EdwardsAirForceBase.md) | USAF Test Pilot School and aerospace medicine research |
| [European Astronaut Centre NBL](Location-EuropeanAstronautCentreNBL.md) | ESA's neutral buoyancy facility in Cologne, Germany |
| [Example Astronaut](Patient-ExampleAstronaut.md) | Example astronaut for testing radiation tracking |
| [Example Dive Medical Clearance](Procedure-ExampleDiveMedicalClearance.md) | Example medical clearance for diving operations |
| [Example Hyperbaric Chamber](Location-ExampleHyperbaricChamber.md) | Example hyperbaric chamber facility |
| [Example Neutral Buoyancy Training Session](Procedure-ExampleNeutralBuoyancySession.md) | Example of a typical neutral buoyancy training session |
| [Example Training Dive Profile](Observation-ExampleDiveProfile.md) | Example dive profile from neutral buoyancy training |
| [Habitat Environmental Conditions - Sol 125](Observation-HabitatEnvironment-Sol125.md) | Atmospheric monitoring inside Mars habitat on Sol 125 |
| [Hyperbaric Treatment Chamber](Location-HyperbaricChamberFacility.md) | Hyperbaric medicine treatment facility |
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
| [ISS Expedition 75 In-Flight Period](Encounter-ISS-Exp75-InFlight.md) | Encounter representing the in-flight period of ISS Expedition 75 |
| [ISS Guided Meditation - Daily Practice](Procedure-ISS-GuidedMeditation-Daily.md) | Daily 15-minute guided meditation session for stress reduction and mood regulation. |
| [ISS Isolation Factor - Circadian Drift](Observation-ISS-IsolationFactor-CircadianDrift.md) | Sleep-wake cycle misalignment due to shift work and 16 sunrises per day. |
| [ISS Isolation Factor - Confinement](Observation-ISS-IsolationFactor-Confinement.md) | Assessment of confinement stress during prolonged mission. |
| [ISS Isolation Factor - Interpersonal Friction](Observation-ISS-IsolationFactor-InterpersonalFriction.md) | Documented interpersonal tension between crew members during third quarter. |
| [ISS Kibo Laboratory](Location-InternationalSpaceStationKibo.md) | International Space Station Japanese laboratory module |
| [ISS Mood Assessment - Mission Week 12](Observation-ISS-MoodAssessment-Week12.md) | Weekly mood and anxiety assessment with cortisol biomarker during mid-mission period. |
| [ISS T2 Treadmill](Device-ISS-T2-Treadmill.md) | Treadmill 2 (T2) on the International Space Station with vibration isolation |
| [ISS T2 Treadmill Run - Activity Type](Observation-ISS-T2-Run-Type-001.md) | Activity-based measure indicating the type of ISS T2 treadmill running. |
| [ISS T2 Treadmill Run - Duration](Observation-ISS-T2-Run-Duration-001.md) | Activity-based measure capturing duration (minutes) of an ISS T2 treadmill session. |
| [ISS T2 Treadmill Run - Mean Heart Rate](Observation-ISS-T2-Run-MeanHR-001.md) | Mean heart rate during an ISS treadmill session. |
| [ISS T2 Treadmill Session - Activity Group](Observation-ISS-T2-Run-Group-001.md) | Panel Observation representing a single 30-minute ISS T2 treadmill session. |
| [ISS T2 Treadmill Session - Procedure](Procedure-ISS-Exercise-Session-Proc-001.md) | Procedure resource representing a single ISS T2 treadmill session linked to PA artifacts and the SpaceExerciseActivityGroup panel. |
| [ISS Unity Node](Location-InternationalSpaceStationUnity.md) | International Space Station Unity connecting node |
| [ISS Zvezda Service Module](Location-InternationalSpaceStationZvezda.md) | International Space Station Russian service module with enhanced shielding |
| [Insurance - Contract](Contract-SpaceTourismTravelInsuranceContract.md) | STUB - Space tourist insurance coverage. |
| [Insurance - Plan](InsurancePlan-SpaceTourismTravelInsurance.md) | Space tourist insurance plan. |
| [JAXA Space Biomedical Research Office](Location-JAXASpaceBiomedicalResearch.md) | Japan Aerospace Exploration Agency medical research |
| [James Webb Space Telescope Location](Location-JamesWebbSpaceTelescope.md) | James Webb Space Telescope at Sun-Earth L2 |
| [Kennedy Space Center Medical Facility](Location-KSCMedicalFacility.md) | KSC astronaut medical support facility |
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
| [Lunar Gateway HALO Module](Location-Gateway-HALO-Module.md) | Habitation and Logistics Outpost module of Lunar Gateway in NRHO |
| [Lunar Gateway HALO Module](Location-LunarGatewayHALO.md) | Lunar Gateway Habitation and Logistics Outpost |
| [Lunar Gateway Power and Propulsion Element](Location-LunarGatewayPPE.md) | Lunar Gateway Power and Propulsion Element |
| [Lunar South Pole Base](Location-LunarSouthPoleBases.md) | Permanent lunar base near the South Pole |
| [Malapert Massif Landing Site](Location-Malapert-Massif-Landing-Site.md) | Artemis III landing site at Malapert Massif, lunar south pole region |
| [Mars Ascent Vehicle](Location-MarsAscentVehicle.md) | Mars surface to orbit transport |
| [Mars Base Alpha](Location-MarsBaseAlpha.md) | First permanent Mars surface base |
| [Mars Crew Member - Commander Chen](Patient-MarsCrewMember1.md) | Example Mars crew member (Commander Sarah Chen) with baseline health data |
| [Mars Direct Mission 2040](Encounter-MarsDirectMission2040.md) | Entire Mars Direct mission encounter (launch to splashdown) |
| [Mars Direct Mission Plan 2040](PlanDefinition-MarsDirectMissionPlan2040.md) | Complete mission timeline for Mars Direct architecture mission |
| [Mars EVA - Sol 147](Procedure-MarsEVA-Sol147.md) | Surface EVA to collect geological samples at crater rim, duration 6.5 hours |
| [Mars Surface Habitat - Jezero Crater](Location-MarsHabitat-Jezero.md) | Pressurized habitat module at Jezero Crater landing site |
| [Mars Transit Vehicle](Location-MarsTransitVehicle.md) | Deep space transport for Mars missions |
| [Mayo Clinic Aerospace Medicine](Location-MayoAerospaceMedicine.md) | Mayo Clinic aerospace medicine and altitude research |
| [NASA Ames Research Center](Location-NASAAmesResearchCenter.md) | NASA Ames centrifuge and spatial disorientation research |
| [NASA Hyperbaric Facility](Location-NASAHyperbaricFacility.md) | NASA's hyperbaric chamber for diving medicine and space analog training |
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
| [Procedure - Bone Densitometry](Procedure-ProcedureBoneDensitometry.md) | Bone densitometry scan |
| [Procedure - Compression](Procedure-ProcedureCompression.md) | Atmospheric compression of vehicle compartment |
| [Procedure - Decompression](Procedure-ProcedureDecompression.md) | Decompression of vehicle compartment |
| [Procedure - Eye Exam](Procedure-ProcedureEyeExam.md) | Eye exam |
| [Procedure - Hearing Exam](Procedure-ProcedureHearingExam.md) | Hearing exam |
| [Procedure - Ultrasound](Procedure-ProcedureUltrasound.md) | Ultrasound scan of the abdomen |
| [Radiation Risk Assessment - Post Outbound Transit](RiskAssessment-RadiationRisk-PostTransit.md) | Cancer risk assessment after 6-month outbound transit to Mars |
| [Risk - Atmosphere](RiskAssessment-RiskAssesmentAtmosphere.md) | Risk of flight running out of breathable atmosphere. (i.e. suffocation) |
| [Risk - Calorie Ristrction](RiskAssessment-RiskAssesmentCalorieRestriction.md) | Risk of calorie restriction among passengers. (i.e. starvation) |
| [Risk - Cancer](RiskAssessment-RiskAssesmentCancer.md) | Post-flight risk of cancer. (i.e. cancer) |
| [Risk - Catastrophic Failure](RiskAssessment-RiskAssesmentFlightRisk.md) | Risk of flight having a catastrophic engineering failure. (i.e. explotion) |
| [Risk - Contamination](RiskAssessment-RiskAssesmentContamination.md) | Risk assessment of microbial contamination. (i.e. mildew) |
| [Risk - Mission](RiskAssessment-RiskAssesmentMission.md) | Overall mission risk assessment for a space mission |
| [SCUBA Diving Equipment](Device-ScubaDivingEquipment.md) | Self-contained underwater breathing apparatus |
| [Shackleton Crater Base](Location-ShackletonCraterBase.md) | Research station at Shackleton Crater rim |
| [Soyuz MS Spacecraft](Location-SoyuzMS.md) | Russian Soyuz MS crew vehicle |
| [SpaceX Hawthorne Factory](Location-SpaceXHawthorneFactory.md) | SpaceX manufacturing and mission control facility |
| [SpaceX Starbase](Location-SpaceXBocaChica.md) | SpaceX Starship development and launch facility |
| [Spaceport America](Location-VirginGalacticSpaceport.md) | Virgin Galactic commercial spaceport |
| [Starship HLS for Artemis III](Device-Starship-HLS-Artemis-III.md) | SpaceX Starship Human Landing System variant for Artemis III lunar landing |
| [Sun-Earth L1 Observatory](Location-SunEarthL1Station.md) | Space weather monitoring station at L1 |
| [Trauma EFAST Exam](Questionnaire-TraumaEFASTQuestionnaire.md) |  |
| [TsPK Centrifuge Complex](Location-NASCOMRussianCentrifuge.md) | Russian cosmonaut centrifuge training facility |
| [UTMB Aerospace Medicine Research](Location-UTMBAerospaceResearch.md) | University of Texas Medical Branch aerospace medicine program |
| [University of Pennsylvania Hyperbaric Center](Location-UniversityOfPennsylvaniaHyperbaric.md) | Academic hyperbaric medicine and research center |
| [Wright-Patterson Aerospace Research Laboratory](Location-WrightPattersonAerospaceResearch.md) | USAF aerospace medicine research facility |
| [Yuri Gagarin Cosmonaut Training Center](Location-YuriGagarinCosmonautTrainingCenter.md) | Russian cosmonaut training facility with underwater training capabilities |
| [xEMU EVA Suit #001](Device-xEMU-Suit-001.md) | First xEMU suit certified for Artemis III lunar surface EVAs |

