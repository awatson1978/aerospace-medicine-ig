// ============================================================================
// MEDB 5.x Fitness Assessment Questionnaires
// ============================================================================
// This file contains questionnaires for MEDB 5.x series fitness assessments
// ============================================================================

Alias: $nasa-sponsor = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs
Alias: $nasa-discipline = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs
Alias: $nasa-phase = https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs
Alias: $nasa-offset = https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs
Alias: $nasa-hardware = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs
Alias: $nasa-facility = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs
Alias: $nasa-archive = https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs
Alias: $nasa-roles = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org


// ============================================================================
// MEDB 5.1 Aerobic Fitness Assessment Questionnaire
// ============================================================================
// Source: MEDB 5.1 Aerobic Fitness Assessment
// Purpose: Assess pre- and postflight aerobic capacity using VO2max testing
// ============================================================================

Instance: MEDB51AerobicFitnessQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 5.1 Aerobic Fitness Assessment"
Description: "NASA Medical Requirements Integration Document for aerobic fitness assessment. Captures VO2max and related cardiovascular fitness data for spaceflight crew members."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-5-1-aerobic-fitness"
* version = "1.0.0"
* name = "MEDB51AerobicFitness"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Exercise Physiology"
* contact.name = "Exercise Physiology Laboratory"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight aerobic capacity (VO2max) using graded exercise testing to monitor cardiovascular deconditioning."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 5.1 Aerobic Fitness Assessment"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To assess aerobic capacity (VO2max) using graded exercise testing. Establish baseline fitness and monitor for spaceflight-related cardiovascular deconditioning."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "VO2max, heart rate, blood pressure, workload, rating of perceived exertion"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = ">= 30 days"

// GROUP 2: PREFLIGHT TRAINING
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.description"
* item[1].item[0].text = "Training Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "Exercise hardware familiarization including T2 treadmill, CEVIS cycle, and ARED resistive exercise device."

* item[1].item[1].linkId = "preflight-training.duration"
* item[1].item[1].text = "Duration (minutes)"
* item[1].item[1].type = #integer
* item[1].item[1].initial.valueInteger = 120

* item[1].item[2].linkId = "preflight-training.schedule"
* item[1].item[2].text = "Schedule"
* item[1].item[2].type = #string
* item[1].item[2].initial.valueString = "L-12 months"

* item[1].item[3].linkId = "preflight-training.completed"
* item[1].item[3].text = "Training Completed"
* item[1].item[3].type = #boolean

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Graded exercise test (GXT) on treadmill or cycle ergometer with metabolic gas analysis. Test continues to volitional exhaustion or physician-determined endpoint."

* item[2].item[1].linkId = "preflight-activities.duration"
* item[2].item[1].text = "Duration (minutes)"
* item[2].item[1].type = #integer
* item[2].item[1].initial.valueInteger = 45

* item[2].item[2].linkId = "preflight-activities.schedule"
* item[2].item[2].text = "Schedule"
* item[2].item[2].type = #string
* item[2].item[2].initial.valueString = "L-180 to L-60 days"

* item[2].item[3].linkId = "preflight-activities.hardware"
* item[2].item[3].text = "Test Hardware"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueCoding = $nasa-hardware#quinton-treadmill "Quinton Treadmill"
* item[2].item[3].answerOption[1].valueCoding = $nasa-hardware#cevis "CEVIS Cycle Ergometer"

* item[2].item[4].linkId = "preflight-activities.location"
* item[2].item[4].text = "Test Location"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[4].initial.valueCoding = $nasa-facility#jsc "Johnson Space Center"

* item[2].item[5].linkId = "preflight-activities.test-date"
* item[2].item[5].text = "Test Date"
* item[2].item[5].type = #date

* item[2].item[6].linkId = "preflight-activities.test-completed"
* item[2].item[6].text = "Test Completed"
* item[2].item[6].type = #boolean
* item[2].item[6].required = true

// GROUP 4: PREFLIGHT FITNESS RESULTS
* item[3].linkId = "preflight-fitness-results"
* item[3].text = "Preflight Fitness Results"
* item[3].type = #group

* item[3].item[0].linkId = "preflight-fitness-results.vo2max-absolute"
* item[3].item[0].text = "VO2max Absolute (L/min)"
* item[3].item[0].type = #decimal
* item[3].item[0].code = $loinc#62872-7 "Oxygen consumption (VO2) at maximal exercise --peak"

* item[3].item[1].linkId = "preflight-fitness-results.vo2max-relative"
* item[3].item[1].text = "VO2max Relative (mL/kg/min)"
* item[3].item[1].type = #decimal

* item[3].item[2].linkId = "preflight-fitness-results.max-heart-rate"
* item[3].item[2].text = "Maximum Heart Rate (bpm)"
* item[3].item[2].type = #integer
* item[3].item[2].code = $loinc#55426-2 "Heart rate --peak exercise"

* item[3].item[3].linkId = "preflight-fitness-results.max-workload"
* item[3].item[3].text = "Maximum Workload (Watts or Speed/Grade)"
* item[3].item[3].type = #string

* item[3].item[4].linkId = "preflight-fitness-results.resting-hr"
* item[3].item[4].text = "Resting Heart Rate (bpm)"
* item[3].item[4].type = #integer
* item[3].item[4].code = $loinc#8867-4 "Heart rate"

* item[3].item[5].linkId = "preflight-fitness-results.resting-bp-systolic"
* item[3].item[5].text = "Resting Systolic BP (mmHg)"
* item[3].item[5].type = #integer
* item[3].item[5].code = $loinc#8480-6 "Systolic blood pressure"

* item[3].item[6].linkId = "preflight-fitness-results.resting-bp-diastolic"
* item[3].item[6].text = "Resting Diastolic BP (mmHg)"
* item[3].item[6].type = #integer
* item[3].item[6].code = $loinc#8462-4 "Diastolic blood pressure"

* item[3].item[7].linkId = "preflight-fitness-results.respiratory-exchange-ratio"
* item[3].item[7].text = "Peak RER"
* item[3].item[7].type = #decimal
* item[3].item[7].code = $loinc#20564-1 "Oxygen content/Oxygen consumption ratio"

* item[3].item[8].linkId = "preflight-fitness-results.test-termination-reason"
* item[3].item[8].text = "Test Termination Reason"
* item[3].item[8].type = #choice
* item[3].item[8].answerOption[0].valueString = "Volitional exhaustion"
* item[3].item[8].answerOption[1].valueString = "Target heart rate achieved"
* item[3].item[8].answerOption[2].valueString = "ECG abnormality"
* item[3].item[8].answerOption[3].valueString = "Blood pressure response"
* item[3].item[8].answerOption[4].valueString = "Symptoms"
* item[3].item[8].answerOption[5].valueString = "Equipment failure"

* item[3].item[9].linkId = "preflight-fitness-results.fitness-category"
* item[3].item[9].text = "Fitness Category"
* item[3].item[9].type = #choice
* item[3].item[9].answerOption[0].valueString = "Superior"
* item[3].item[9].answerOption[1].valueString = "Excellent"
* item[3].item[9].answerOption[2].valueString = "Good"
* item[3].item[9].answerOption[3].valueString = "Fair"
* item[3].item[9].answerOption[4].valueString = "Poor"

* item[3].item[10].linkId = "preflight-fitness-results.notes"
* item[3].item[10].text = "Test Notes"
* item[3].item[10].type = #text

// GROUP 5: IN-FLIGHT (limited VO2max testing)
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.description"
* item[4].item[0].text = "Activity Description"
* item[4].item[0].type = #text
* item[4].item[0].initial.valueString = "Periodic submaximal exercise tests using CEVIS or T2 to estimate VO2max changes during mission."

* item[4].item[1].linkId = "inflight-activities.schedule"
* item[4].item[1].text = "Schedule"
* item[4].item[1].type = #string
* item[4].item[1].initial.valueString = "Flight Day 14, monthly thereafter"

* item[4].item[2].linkId = "inflight-activities.inflight-vo2-estimate"
* item[4].item[2].text = "In-Flight VO2max Estimate (mL/kg/min)"
* item[4].item[2].type = #decimal

// GROUP 6: POSTFLIGHT ACTIVITIES
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.schedule"
* item[5].item[0].text = "Schedule"
* item[5].item[0].type = #string
* item[5].item[0].initial.valueString = "R+5 to R+7 days, R+30 days"

* item[5].item[1].linkId = "postflight-activities.test-date"
* item[5].item[1].text = "Postflight Test Date"
* item[5].item[1].type = #date

* item[5].item[2].linkId = "postflight-activities.test-completed"
* item[5].item[2].text = "Postflight Test Completed"
* item[5].item[2].type = #boolean
* item[5].item[2].required = true

// GROUP 7: POSTFLIGHT FITNESS RESULTS
* item[6].linkId = "postflight-fitness-results"
* item[6].text = "Postflight Fitness Results"
* item[6].type = #group

* item[6].item[0].linkId = "postflight-fitness-results.vo2max-absolute"
* item[6].item[0].text = "VO2max Absolute (L/min)"
* item[6].item[0].type = #decimal

* item[6].item[1].linkId = "postflight-fitness-results.vo2max-relative"
* item[6].item[1].text = "VO2max Relative (mL/kg/min)"
* item[6].item[1].type = #decimal

* item[6].item[2].linkId = "postflight-fitness-results.max-heart-rate"
* item[6].item[2].text = "Maximum Heart Rate (bpm)"
* item[6].item[2].type = #integer

* item[6].item[3].linkId = "postflight-fitness-results.percent-change"
* item[6].item[3].text = "Percent Change from Preflight (%)"
* item[6].item[3].type = #decimal

* item[6].item[4].linkId = "postflight-fitness-results.deconditioning-assessment"
* item[6].item[4].text = "Deconditioning Assessment"
* item[6].item[4].type = #choice
* item[6].item[4].answerOption[0].valueString = "Minimal (<5% decline)"
* item[6].item[4].answerOption[1].valueString = "Mild (5-10% decline)"
* item[6].item[4].answerOption[2].valueString = "Moderate (10-20% decline)"
* item[6].item[4].answerOption[3].valueString = "Significant (>20% decline)"

* item[6].item[5].linkId = "postflight-fitness-results.reconditioning-plan"
* item[6].item[5].text = "Reconditioning Plan Required"
* item[6].item[5].type = #boolean

// GROUP 8: DATA DELIVERY
* item[7].linkId = "data-delivery"
* item[7].text = "Data Delivery"
* item[7].type = #group

* item[7].item[0].linkId = "data-delivery.archive"
* item[7].item[0].text = "Data Archive System"
* item[7].item[0].type = #choice
* item[7].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[7].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"

// GROUP 9: POSTFLIGHT DEBRIEF
* item[8].linkId = "postflight-debrief"
* item[8].text = "Postflight Debrief"
* item[8].type = #group

* item[8].item[0].linkId = "postflight-debrief.schedule"
* item[8].item[0].text = "Schedule"
* item[8].item[0].type = #string
* item[8].item[0].initial.valueString = "R+30 days"

* item[8].item[1].linkId = "postflight-debrief.completed"
* item[8].item[1].text = "Debrief Completed"
* item[8].item[1].type = #boolean


// ============================================================================
// MEDB 5.2 Strength Assessment Questionnaire
// ============================================================================
// Source: MEDB 5.2 Muscle Strength Assessment
// Purpose: Assess pre- and postflight muscle strength
// ============================================================================

Instance: MEDB52StrengthAssessmentQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 5.2 Strength Assessment"
Description: "NASA Medical Requirements Integration Document for muscle strength assessment. Captures isokinetic and isometric strength data for spaceflight crew members."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-5-2-strength-assessment"
* version = "1.0.0"
* name = "MEDB52StrengthAssessment"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Exercise Physiology"
* contact.name = "Exercise Physiology Laboratory"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight muscle strength using isokinetic and isometric testing to monitor for spaceflight-related muscle atrophy."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 5.2 Muscle Strength Assessment"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To assess muscle strength using isokinetic dynamometry. Establish baseline and monitor for spaceflight-related muscle atrophy and strength loss."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Peak torque, total work, average power for knee, ankle, trunk muscle groups"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = ">= 30 days"

// GROUP 2: PREFLIGHT ACTIVITIES
* item[1].linkId = "preflight-activities"
* item[1].text = "Preflight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-activities.description"
* item[1].item[0].text = "Activity Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "Isokinetic strength testing of major muscle groups including knee extensors/flexors, ankle plantar/dorsiflexors, and trunk extensors/flexors."

* item[1].item[1].linkId = "preflight-activities.schedule"
* item[1].item[1].text = "Schedule"
* item[1].item[1].type = #string
* item[1].item[1].initial.valueString = "L-180 to L-60 days"

* item[1].item[2].linkId = "preflight-activities.test-date"
* item[1].item[2].text = "Test Date"
* item[1].item[2].type = #date

* item[1].item[3].linkId = "preflight-activities.test-completed"
* item[1].item[3].text = "Test Completed"
* item[1].item[3].type = #boolean

// GROUP 3: PREFLIGHT STRENGTH RESULTS
* item[2].linkId = "preflight-strength-results"
* item[2].text = "Preflight Strength Results"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-strength-results.knee-extension"
* item[2].item[0].text = "Knee Extension"
* item[2].item[0].type = #group

* item[2].item[0].item[0].linkId = "preflight-strength-results.knee-extension.right-peak-torque"
* item[2].item[0].item[0].text = "Right Peak Torque (Nm)"
* item[2].item[0].item[0].type = #decimal

* item[2].item[0].item[1].linkId = "preflight-strength-results.knee-extension.left-peak-torque"
* item[2].item[0].item[1].text = "Left Peak Torque (Nm)"
* item[2].item[0].item[1].type = #decimal

* item[2].item[1].linkId = "preflight-strength-results.knee-flexion"
* item[2].item[1].text = "Knee Flexion"
* item[2].item[1].type = #group

* item[2].item[1].item[0].linkId = "preflight-strength-results.knee-flexion.right-peak-torque"
* item[2].item[1].item[0].text = "Right Peak Torque (Nm)"
* item[2].item[1].item[0].type = #decimal

* item[2].item[1].item[1].linkId = "preflight-strength-results.knee-flexion.left-peak-torque"
* item[2].item[1].item[1].text = "Left Peak Torque (Nm)"
* item[2].item[1].item[1].type = #decimal

* item[2].item[2].linkId = "preflight-strength-results.ankle-plantarflexion"
* item[2].item[2].text = "Ankle Plantarflexion"
* item[2].item[2].type = #group

* item[2].item[2].item[0].linkId = "preflight-strength-results.ankle-plantarflexion.right-peak-torque"
* item[2].item[2].item[0].text = "Right Peak Torque (Nm)"
* item[2].item[2].item[0].type = #decimal

* item[2].item[2].item[1].linkId = "preflight-strength-results.ankle-plantarflexion.left-peak-torque"
* item[2].item[2].item[1].text = "Left Peak Torque (Nm)"
* item[2].item[2].item[1].type = #decimal

* item[2].item[3].linkId = "preflight-strength-results.trunk-extension"
* item[2].item[3].text = "Trunk Extension Peak Torque (Nm)"
* item[2].item[3].type = #decimal

* item[2].item[4].linkId = "preflight-strength-results.trunk-flexion"
* item[2].item[4].text = "Trunk Flexion Peak Torque (Nm)"
* item[2].item[4].type = #decimal

* item[2].item[5].linkId = "preflight-strength-results.grip-strength-right"
* item[2].item[5].text = "Right Hand Grip Strength (kg)"
* item[2].item[5].type = #decimal
* item[2].item[5].code = $loinc#83174-3 "Grip strength Hand - right"

* item[2].item[6].linkId = "preflight-strength-results.grip-strength-left"
* item[2].item[6].text = "Left Hand Grip Strength (kg)"
* item[2].item[6].type = #decimal
* item[2].item[6].code = $loinc#83176-8 "Grip strength Hand - left"

// GROUP 4: POSTFLIGHT ACTIVITIES
* item[3].linkId = "postflight-activities"
* item[3].text = "Postflight Activities"
* item[3].type = #group

* item[3].item[0].linkId = "postflight-activities.schedule"
* item[3].item[0].text = "Schedule"
* item[3].item[0].type = #string
* item[3].item[0].initial.valueString = "R+5 to R+7 days, R+30 days"

* item[3].item[1].linkId = "postflight-activities.test-date"
* item[3].item[1].text = "Postflight Test Date"
* item[3].item[1].type = #date

* item[3].item[2].linkId = "postflight-activities.test-completed"
* item[3].item[2].text = "Postflight Test Completed"
* item[3].item[2].type = #boolean

// GROUP 5: POSTFLIGHT STRENGTH RESULTS
* item[4].linkId = "postflight-strength-results"
* item[4].text = "Postflight Strength Results"
* item[4].type = #group

* item[4].item[0].linkId = "postflight-strength-results.knee-extension-right"
* item[4].item[0].text = "Knee Extension Right Peak Torque (Nm)"
* item[4].item[0].type = #decimal

* item[4].item[1].linkId = "postflight-strength-results.knee-extension-left"
* item[4].item[1].text = "Knee Extension Left Peak Torque (Nm)"
* item[4].item[1].type = #decimal

* item[4].item[2].linkId = "postflight-strength-results.percent-change-knee"
* item[4].item[2].text = "Percent Change Knee Extension (%)"
* item[4].item[2].type = #decimal

* item[4].item[3].linkId = "postflight-strength-results.trunk-extension"
* item[4].item[3].text = "Trunk Extension Peak Torque (Nm)"
* item[4].item[3].type = #decimal

* item[4].item[4].linkId = "postflight-strength-results.percent-change-trunk"
* item[4].item[4].text = "Percent Change Trunk Extension (%)"
* item[4].item[4].type = #decimal

* item[4].item[5].linkId = "postflight-strength-results.muscle-atrophy-assessment"
* item[4].item[5].text = "Muscle Atrophy Assessment"
* item[4].item[5].type = #choice
* item[4].item[5].answerOption[0].valueString = "Minimal (<5% decline)"
* item[4].item[5].answerOption[1].valueString = "Mild (5-10% decline)"
* item[4].item[5].answerOption[2].valueString = "Moderate (10-20% decline)"
* item[4].item[5].answerOption[3].valueString = "Significant (>20% decline)"

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[5].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MEDB 5.3 Exercise Prescription Questionnaire
// ============================================================================
// Source: MEDB 5.3 Exercise Countermeasures Prescription
// Purpose: Document in-flight exercise prescription and adherence
// ============================================================================

Instance: MEDB53ExercisePrescriptionQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 5.3 Exercise Prescription"
Description: "NASA Medical Requirements Integration Document for exercise prescription. Documents in-flight exercise countermeasures protocol and adherence."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-5-3-exercise-prescription"
* version = "1.0.0"
* name = "MEDB53ExercisePrescription"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Exercise Physiology"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To document and track in-flight exercise countermeasures prescription and crew adherence to maintain fitness during long-duration spaceflight."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 5.3 Exercise Countermeasures Prescription"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "To prescribe and monitor in-flight exercise countermeasures to prevent cardiovascular, musculoskeletal, and neuromuscular deconditioning during spaceflight."

// GROUP 2: EXERCISE PRESCRIPTION
* item[1].linkId = "exercise-prescription"
* item[1].text = "Exercise Prescription"
* item[1].type = #group

* item[1].item[0].linkId = "exercise-prescription.aerobic"
* item[1].item[0].text = "Aerobic Exercise"
* item[1].item[0].type = #group

* item[1].item[0].item[0].linkId = "exercise-prescription.aerobic.modality"
* item[1].item[0].item[0].text = "Modality"
* item[1].item[0].item[0].type = #choice
* item[1].item[0].item[0].repeats = true
* item[1].item[0].item[0].answerOption[0].valueCoding = $nasa-hardware#t2-treadmill "T2 Treadmill"
* item[1].item[0].item[0].answerOption[1].valueCoding = $nasa-hardware#cevis "CEVIS Cycle Ergometer"

* item[1].item[0].item[1].linkId = "exercise-prescription.aerobic.frequency"
* item[1].item[0].item[1].text = "Frequency (sessions/week)"
* item[1].item[0].item[1].type = #integer

* item[1].item[0].item[2].linkId = "exercise-prescription.aerobic.duration"
* item[1].item[0].item[2].text = "Duration (minutes/session)"
* item[1].item[0].item[2].type = #integer

* item[1].item[0].item[3].linkId = "exercise-prescription.aerobic.intensity"
* item[1].item[0].item[3].text = "Intensity Target"
* item[1].item[0].item[3].type = #string

* item[1].item[1].linkId = "exercise-prescription.resistive"
* item[1].item[1].text = "Resistive Exercise"
* item[1].item[1].type = #group

* item[1].item[1].item[0].linkId = "exercise-prescription.resistive.modality"
* item[1].item[1].item[0].text = "Modality"
* item[1].item[1].item[0].type = #choice
* item[1].item[1].item[0].answerOption[0].valueCoding = $nasa-hardware#ared "ARED (Advanced Resistive Exercise Device)"

* item[1].item[1].item[1].linkId = "exercise-prescription.resistive.frequency"
* item[1].item[1].item[1].text = "Frequency (sessions/week)"
* item[1].item[1].item[1].type = #integer

* item[1].item[1].item[2].linkId = "exercise-prescription.resistive.exercises"
* item[1].item[1].item[2].text = "Prescribed Exercises"
* item[1].item[1].item[2].type = #choice
* item[1].item[1].item[2].repeats = true
* item[1].item[1].item[2].answerOption[0].valueString = "Squat"
* item[1].item[1].item[2].answerOption[1].valueString = "Deadlift"
* item[1].item[1].item[2].answerOption[2].valueString = "Heel Raise"
* item[1].item[1].item[2].answerOption[3].valueString = "Bench Press"
* item[1].item[1].item[2].answerOption[4].valueString = "Shoulder Press"
* item[1].item[1].item[2].answerOption[5].valueString = "Bent Over Row"
* item[1].item[1].item[2].answerOption[6].valueString = "Upright Row"

* item[1].item[2].linkId = "exercise-prescription.total-weekly-hours"
* item[1].item[2].text = "Total Weekly Exercise Time (hours)"
* item[1].item[2].type = #decimal

// GROUP 3: WEEKLY ADHERENCE TRACKING
* item[2].linkId = "weekly-adherence"
* item[2].text = "Weekly Adherence Tracking"
* item[2].type = #group

* item[2].item[0].linkId = "weekly-adherence.week-number"
* item[2].item[0].text = "Mission Week Number"
* item[2].item[0].type = #integer

* item[2].item[1].linkId = "weekly-adherence.aerobic-sessions-completed"
* item[2].item[1].text = "Aerobic Sessions Completed"
* item[2].item[1].type = #integer

* item[2].item[2].linkId = "weekly-adherence.aerobic-time-total"
* item[2].item[2].text = "Total Aerobic Time (minutes)"
* item[2].item[2].type = #integer

* item[2].item[3].linkId = "weekly-adherence.resistive-sessions-completed"
* item[2].item[3].text = "Resistive Sessions Completed"
* item[2].item[3].type = #integer

* item[2].item[4].linkId = "weekly-adherence.adherence-percentage"
* item[2].item[4].text = "Adherence Percentage (%)"
* item[2].item[4].type = #decimal

* item[2].item[5].linkId = "weekly-adherence.missed-sessions-reason"
* item[2].item[5].text = "Reason for Missed Sessions"
* item[2].item[5].type = #choice
* item[2].item[5].repeats = true
* item[2].item[5].answerOption[0].valueString = "Operational constraints"
* item[2].item[5].answerOption[1].valueString = "Equipment issues"
* item[2].item[5].answerOption[2].valueString = "Crew schedule conflict"
* item[2].item[5].answerOption[3].valueString = "Medical hold"
* item[2].item[5].answerOption[4].valueString = "Other"

* item[2].item[6].linkId = "weekly-adherence.notes"
* item[2].item[6].text = "Notes"
* item[2].item[6].type = #text

// GROUP 4: DATA DELIVERY
* item[3].linkId = "data-delivery"
* item[3].text = "Data Delivery"
* item[3].type = #group

* item[3].item[0].linkId = "data-delivery.archive"
* item[3].item[0].text = "Data Archive System"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[3].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"
