// ============================================================================
// MEDB 1.x Physical Examinations Questionnaires
// ============================================================================
// This file contains questionnaires for MEDB 1.x series physical examinations
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
// MEDB 1.6 Resting ECG Questionnaire
// ============================================================================
// Source: MEDB 1.6 Resting ECG
// Revised: 12/19/2013 | JSC28913
// Purpose: Assess pre- and postflight ECG recordings using 12-lead ECG
// ============================================================================

Instance: MEDB16RestingECGQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.6 Resting ECG"
Description: "NASA Medical Requirements Integration Document for resting 12-lead ECG assessment. Captures pre- and postflight ECG recordings for cardiovascular evaluation of long-duration flight crew members."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-6-resting-ecg"
* version = "1.0.0"
* name = "MEDB16RestingECG"
* status = #active
* date = "2013-12-19"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight ECG recordings on long-duration flight crew members at rest using a 12-lead electrocardiogram (ECG)"
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions for extraction support
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// ============================================================================
// GROUP 1: MEDICAL REQUIREMENTS OVERVIEW
// ============================================================================
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 1.6 Resting ECG"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = false
* item[0].item[2].readOnly = true
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#cardiovascular "Cardiovascular"

* item[0].item[3].linkId = "overview.category"
* item[0].item[3].text = "Category"
* item[0].item[3].type = #string
* item[0].item[3].required = true
* item[0].item[3].readOnly = true
* item[0].item[3].initial.valueString = "Medical Requirements"

* item[0].item[4].linkId = "overview.references"
* item[0].item[4].text = "References"
* item[0].item[4].type = #text
* item[0].item[4].required = false
* item[0].item[4].initial.valueString = "SSP 50260 ISS Medical Operations Requirements Document (MORD); SSP 50667 Medical Evaluations Document (MED) Volume B Section 1.6"

* item[0].item[5].linkId = "overview.purpose"
* item[0].item[5].text = "Purpose/Objectives"
* item[0].item[5].type = #text
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "To assess pre- and postflight ECG recordings on long-duration flight crew members at rest using a 12-lead electrocardiogram (ECG)"

* item[0].item[6].linkId = "overview.measurement-parameters"
* item[0].item[6].text = "Measurement Parameters"
* item[0].item[6].type = #string
* item[0].item[6].required = true
* item[0].item[6].initial.valueString = "12-lead ECG tracing"

* item[0].item[7].linkId = "overview.deliverables"
* item[0].item[7].text = "Deliverables"
* item[0].item[7].type = #text
* item[0].item[7].required = true
* item[0].item[7].initial.valueString = "Pre- and postflight ECG reports related to the cardiovascular examination."

* item[0].item[8].linkId = "overview.flight-duration"
* item[0].item[8].text = "Flight Duration"
* item[0].item[8].type = #string
* item[0].item[8].required = true
* item[0].item[8].initial.valueString = ">= 30 days"

* item[0].item[9].linkId = "overview.number-of-flights"
* item[0].item[9].text = "Number of Flights"
* item[0].item[9].type = #string
* item[0].item[9].required = true
* item[0].item[9].initial.valueString = "All"

* item[0].item[10].linkId = "overview.crew-members-required"
* item[0].item[10].text = "Number and Type of Crew Members Required"
* item[0].item[10].type = #string
* item[0].item[10].required = true
* item[0].item[10].initial.valueString = "All ISS crew members"

// ============================================================================
// GROUP 2: PREFLIGHT TRAINING (N/A for this MRID)
// ============================================================================
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.na"
* item[1].item[0].text = "No Preflight Training Required"
* item[1].item[0].type = #display

// ============================================================================
// GROUP 3: PREFLIGHT ACTIVITIES
// ============================================================================
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].required = false
* item[2].item[0].initial.valueString = "Subject lies supine for 15 minutes while ECG tracings are recorded from 10 electrode sites (using chest and limb leads)."

* item[2].item[1].linkId = "preflight-activities.duration"
* item[2].item[1].text = "Duration (minutes)"
* item[2].item[1].type = #integer
* item[2].item[1].required = true
* item[2].item[1].initial.valueInteger = 15

* item[2].item[2].linkId = "preflight-activities.schedule"
* item[2].item[2].text = "Schedule"
* item[2].item[2].type = #string
* item[2].item[2].required = true
* item[2].item[2].initial.valueString = "AME L-9/6 m to L-10 d & as clinically indicated"

* item[2].item[3].linkId = "preflight-activities.flexibility"
* item[2].item[3].text = "Flexibility"
* item[2].item[3].type = #string
* item[2].item[3].required = false
* item[2].item[3].initial.valueString = "Within specified range"

* item[2].item[4].linkId = "preflight-activities.personnel"
* item[2].item[4].text = "Personnel Required"
* item[2].item[4].type = #string
* item[2].item[4].required = true
* item[2].item[4].initial.valueString = "Lab Technician, crew member"

* item[2].item[5].linkId = "preflight-activities.hardware"
* item[2].item[5].text = "Preflight Hardware"
* item[2].item[5].type = #choice
* item[2].item[5].required = true
* item[2].item[5].answerOption[0].valueCoding = $nasa-hardware#12-lead-ecg "12-Lead ECG Machine"
* item[2].item[5].initial.valueCoding = $nasa-hardware#12-lead-ecg "12-Lead ECG Machine"

* item[2].item[6].linkId = "preflight-activities.location"
* item[2].item[6].text = "Test Location"
* item[2].item[6].type = #choice
* item[2].item[6].required = true
* item[2].item[6].repeats = true
* item[2].item[6].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[6].answerOption[1].valueCoding = $nasa-facility#russia-gctc "Gagarin Cosmonaut Training Center"

* item[2].item[7].linkId = "preflight-activities.constraints"
* item[2].item[7].text = "Constraints/Special Requirements"
* item[2].item[7].type = #text
* item[2].item[7].required = false
* item[2].item[7].initial.valueString = "No caffeine or alcohol for 12 hours prior to testing."

* item[2].item[8].linkId = "preflight-activities.test-date"
* item[2].item[8].text = "Preflight ECG Test Date"
* item[2].item[8].type = #date
* item[2].item[8].required = false

* item[2].item[9].linkId = "preflight-activities.test-completed"
* item[2].item[9].text = "Preflight ECG Completed"
* item[2].item[9].type = #boolean
* item[2].item[9].required = true

* item[2].item[10].linkId = "preflight-activities.constraints-met"
* item[2].item[10].text = "Pre-test Constraints Met (no caffeine/alcohol 12h)"
* item[2].item[10].type = #boolean
* item[2].item[10].required = false

// ============================================================================
// GROUP 4: PREFLIGHT ECG RESULTS (for extraction to Observation)
// ============================================================================
* item[3].linkId = "preflight-ecg-results"
* item[3].text = "Preflight ECG Results"
* item[3].type = #group

* item[3].item[0].linkId = "preflight-ecg-results.heart-rate"
* item[3].item[0].text = "Heart Rate (bpm)"
* item[3].item[0].type = #integer
* item[3].item[0].required = false
* item[3].item[0].code = $loinc#8867-4 "Heart rate"

* item[3].item[1].linkId = "preflight-ecg-results.pr-interval"
* item[3].item[1].text = "PR Interval (ms)"
* item[3].item[1].type = #integer
* item[3].item[1].required = false
* item[3].item[1].code = $loinc#8625-6 "PR interval"

* item[3].item[2].linkId = "preflight-ecg-results.qrs-duration"
* item[3].item[2].text = "QRS Duration (ms)"
* item[3].item[2].type = #integer
* item[3].item[2].required = false
* item[3].item[2].code = $loinc#8633-0 "QRS duration"

* item[3].item[3].linkId = "preflight-ecg-results.qt-interval"
* item[3].item[3].text = "QT Interval (ms)"
* item[3].item[3].type = #integer
* item[3].item[3].required = false
* item[3].item[3].code = $loinc#8634-8 "QT interval"

* item[3].item[4].linkId = "preflight-ecg-results.qtc-interval"
* item[3].item[4].text = "QTc Interval (ms)"
* item[3].item[4].type = #integer
* item[3].item[4].required = false
* item[3].item[4].code = $loinc#8636-3 "QT interval corrected"

* item[3].item[5].linkId = "preflight-ecg-results.axis"
* item[3].item[5].text = "QRS Axis (degrees)"
* item[3].item[5].type = #integer
* item[3].item[5].required = false

* item[3].item[6].linkId = "preflight-ecg-results.rhythm"
* item[3].item[6].text = "Rhythm"
* item[3].item[6].type = #choice
* item[3].item[6].required = false
* item[3].item[6].answerOption[0].valueCoding = $sct#426783006 "Sinus rhythm"
* item[3].item[6].answerOption[1].valueCoding = $sct#49710005 "Sinus bradycardia"
* item[3].item[6].answerOption[2].valueCoding = $sct#11092001 "Sinus tachycardia"
* item[3].item[6].answerOption[3].valueCoding = $sct#49436004 "Atrial fibrillation"
* item[3].item[6].answerOption[4].valueCoding = $sct#698247007 "Cardiac arrhythmia"

* item[3].item[7].linkId = "preflight-ecg-results.interpretation"
* item[3].item[7].text = "ECG Interpretation"
* item[3].item[7].type = #choice
* item[3].item[7].required = false
* item[3].item[7].code = $loinc#11524-6 "EKG study"
* item[3].item[7].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[3].item[7].answerOption[1].valueCoding = $sct#263654008 "Abnormal"
* item[3].item[7].answerOption[2].valueCoding = $sct#442564008 "Evaluation not done"

* item[3].item[8].linkId = "preflight-ecg-results.findings"
* item[3].item[8].text = "ECG Findings/Notes"
* item[3].item[8].type = #text
* item[3].item[8].required = false

// ============================================================================
// GROUP 5: IN-FLIGHT ACTIVITIES (N/A for this MRID)
// ============================================================================
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.na"
* item[4].item[0].text = "No In-Flight Activities"
* item[4].item[0].type = #display

// ============================================================================
// GROUP 6: POSTFLIGHT ACTIVITIES
// ============================================================================
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.description"
* item[5].item[0].text = "Activity Description"
* item[5].item[0].type = #text
* item[5].item[0].required = false
* item[5].item[0].initial.valueString = "Subject lies supine for 15 minutes while ECG tracings are recorded from 10 electrode sites (using chest and limb leads)."

* item[5].item[1].linkId = "postflight-activities.duration"
* item[5].item[1].text = "Duration (minutes)"
* item[5].item[1].type = #integer
* item[5].item[1].required = true
* item[5].item[1].initial.valueInteger = 15

* item[5].item[2].linkId = "postflight-activities.schedule"
* item[5].item[2].text = "Schedule"
* item[5].item[2].type = #string
* item[5].item[2].required = true
* item[5].item[2].initial.valueString = "R+0/3 days & as clinically indicated"

* item[5].item[3].linkId = "postflight-activities.flexibility"
* item[5].item[3].text = "Flexibility"
* item[5].item[3].type = #string
* item[5].item[3].required = false
* item[5].item[3].initial.valueString = "Within specified range"

* item[5].item[4].linkId = "postflight-activities.personnel"
* item[5].item[4].text = "Personnel Required"
* item[5].item[4].type = #string
* item[5].item[4].required = true
* item[5].item[4].initial.valueString = "Technician, crew member"

* item[5].item[5].linkId = "postflight-activities.hardware"
* item[5].item[5].text = "Postflight Hardware"
* item[5].item[5].type = #choice
* item[5].item[5].required = true
* item[5].item[5].answerOption[0].valueCoding = $nasa-hardware#12-lead-ecg "12-Lead ECG Machine"
* item[5].item[5].initial.valueCoding = $nasa-hardware#12-lead-ecg "12-Lead ECG Machine"

* item[5].item[6].linkId = "postflight-activities.location"
* item[5].item[6].text = "Test Location"
* item[5].item[6].type = #choice
* item[5].item[6].required = true
* item[5].item[6].repeats = true
* item[5].item[6].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[5].item[6].answerOption[1].valueCoding = $nasa-facility#russia-gctc "Gagarin Cosmonaut Training Center"

* item[5].item[7].linkId = "postflight-activities.constraints"
* item[5].item[7].text = "Constraints/Special Requirements"
* item[5].item[7].type = #text
* item[5].item[7].required = false
* item[5].item[7].initial.valueString = "No caffeine or alcohol for 12 hours prior to testing."

* item[5].item[8].linkId = "postflight-activities.test-date"
* item[5].item[8].text = "Postflight ECG Test Date"
* item[5].item[8].type = #date
* item[5].item[8].required = false

* item[5].item[9].linkId = "postflight-activities.test-completed"
* item[5].item[9].text = "Postflight ECG Completed"
* item[5].item[9].type = #boolean
* item[5].item[9].required = true

// ============================================================================
// GROUP 7: POSTFLIGHT ECG RESULTS (for extraction to Observation)
// ============================================================================
* item[6].linkId = "postflight-ecg-results"
* item[6].text = "Postflight ECG Results"
* item[6].type = #group

* item[6].item[0].linkId = "postflight-ecg-results.heart-rate"
* item[6].item[0].text = "Heart Rate (bpm)"
* item[6].item[0].type = #integer
* item[6].item[0].required = false
* item[6].item[0].code = $loinc#8867-4 "Heart rate"

* item[6].item[1].linkId = "postflight-ecg-results.pr-interval"
* item[6].item[1].text = "PR Interval (ms)"
* item[6].item[1].type = #integer
* item[6].item[1].required = false
* item[6].item[1].code = $loinc#8625-6 "PR interval"

* item[6].item[2].linkId = "postflight-ecg-results.qrs-duration"
* item[6].item[2].text = "QRS Duration (ms)"
* item[6].item[2].type = #integer
* item[6].item[2].required = false
* item[6].item[2].code = $loinc#8633-0 "QRS duration"

* item[6].item[3].linkId = "postflight-ecg-results.qt-interval"
* item[6].item[3].text = "QT Interval (ms)"
* item[6].item[3].type = #integer
* item[6].item[3].required = false
* item[6].item[3].code = $loinc#8634-8 "QT interval"

* item[6].item[4].linkId = "postflight-ecg-results.qtc-interval"
* item[6].item[4].text = "QTc Interval (ms)"
* item[6].item[4].type = #integer
* item[6].item[4].required = false
* item[6].item[4].code = $loinc#8636-3 "QT interval corrected"

* item[6].item[5].linkId = "postflight-ecg-results.axis"
* item[6].item[5].text = "QRS Axis (degrees)"
* item[6].item[5].type = #integer
* item[6].item[5].required = false

* item[6].item[6].linkId = "postflight-ecg-results.rhythm"
* item[6].item[6].text = "Rhythm"
* item[6].item[6].type = #choice
* item[6].item[6].required = false
* item[6].item[6].answerOption[0].valueCoding = $sct#426783006 "Sinus rhythm"
* item[6].item[6].answerOption[1].valueCoding = $sct#49710005 "Sinus bradycardia"
* item[6].item[6].answerOption[2].valueCoding = $sct#11092001 "Sinus tachycardia"
* item[6].item[6].answerOption[3].valueCoding = $sct#49436004 "Atrial fibrillation"
* item[6].item[6].answerOption[4].valueCoding = $sct#698247007 "Cardiac arrhythmia"

* item[6].item[7].linkId = "postflight-ecg-results.interpretation"
* item[6].item[7].text = "ECG Interpretation"
* item[6].item[7].type = #choice
* item[6].item[7].required = false
* item[6].item[7].code = $loinc#11524-6 "EKG study"
* item[6].item[7].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[6].item[7].answerOption[1].valueCoding = $sct#263654008 "Abnormal"
* item[6].item[7].answerOption[2].valueCoding = $sct#442564008 "Evaluation not done"

* item[6].item[8].linkId = "postflight-ecg-results.findings"
* item[6].item[8].text = "ECG Findings/Notes"
* item[6].item[8].type = #text
* item[6].item[8].required = false

* item[6].item[9].linkId = "postflight-ecg-results.comparison"
* item[6].item[9].text = "Comparison to Preflight ECG"
* item[6].item[9].type = #choice
* item[6].item[9].required = false
* item[6].item[9].answerOption[0].valueString = "No significant change"
* item[6].item[9].answerOption[1].valueString = "Improved"
* item[6].item[9].answerOption[2].valueString = "New findings"
* item[6].item[9].answerOption[3].valueString = "Unable to compare"

// ============================================================================
// GROUP 8: DATA DELIVERY
// ============================================================================
* item[7].linkId = "data-delivery"
* item[7].text = "Data Delivery"
* item[7].type = #group

* item[7].item[0].linkId = "data-delivery.pacs-transfer"
* item[7].item[0].text = "Raw Data Transferred to PACS"
* item[7].item[0].type = #boolean
* item[7].item[0].required = false

* item[7].item[1].linkId = "data-delivery.pacs-transfer-date"
* item[7].item[1].text = "PACS Transfer Date"
* item[7].item[1].type = #dateTime
* item[7].item[1].required = false
* item[7].item[1].enableWhen.question = "data-delivery.pacs-transfer"
* item[7].item[1].enableWhen.operator = #=
* item[7].item[1].enableWhen.answerBoolean = true

* item[7].item[2].linkId = "data-delivery.archive"
* item[7].item[2].text = "Data Archive Systems"
* item[7].item[2].type = #choice
* item[7].item[2].required = true
* item[7].item[2].repeats = true
* item[7].item[2].answerOption[0].valueCoding = $nasa-archive#pacs "Picture Archiving and Communication System"
* item[7].item[2].answerOption[1].valueCoding = $nasa-archive#mmis "Medical Mission Information System"

* item[7].item[3].linkId = "data-delivery.preflight-report-available"
* item[7].item[3].text = "Preflight Report Available in MMIS"
* item[7].item[3].type = #boolean
* item[7].item[3].required = false

* item[7].item[4].linkId = "data-delivery.postflight-report-available"
* item[7].item[4].text = "Postflight Report Available in MMIS"
* item[7].item[4].type = #boolean
* item[7].item[4].required = false

// ============================================================================
// GROUP 9: POSTFLIGHT DEBRIEF (N/A for this MRID)
// ============================================================================
* item[8].linkId = "postflight-debrief"
* item[8].text = "Postflight Debrief"
* item[8].type = #group

* item[8].item[0].linkId = "postflight-debrief.na"
* item[8].item[0].text = "No Postflight Debrief Required"
* item[8].item[0].type = #display


// ============================================================================
// MEDB 1.8 Audiometry Questionnaire
// ============================================================================
// Source: MEDB 1.8 Audiometry
// Purpose: Assess pre- and postflight hearing thresholds using pure tone audiometry
// ============================================================================

Instance: MEDB18AudiometryQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.8 Audiometry"
Description: "NASA Medical Requirements Integration Document for audiometric assessment. Captures pre- and postflight hearing threshold data to monitor crew hearing status."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-8-audiometry"
* version = "1.0.0"
* name = "MEDB18Audiometry"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight hearing thresholds on crew members using pure tone audiometry"
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
* item[0].item[0].initial.valueString = "MEDB 1.8 Audiometry"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#audiology "Audiology"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#audiology "Audiology"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To assess pre- and postflight hearing thresholds on crew members using pure tone audiometry. To track hearing changes across missions."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Pure tone air conduction thresholds at 500, 1000, 2000, 3000, 4000, 6000, 8000 Hz"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = ">= 30 days"

// GROUP 2: PREFLIGHT TRAINING (N/A)
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.na"
* item[1].item[0].text = "No Preflight Training Required"
* item[1].item[0].type = #display

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Pure tone audiometry is performed in a sound-treated booth. Testing includes air conduction thresholds at standard frequencies."

* item[2].item[1].linkId = "preflight-activities.duration"
* item[2].item[1].text = "Duration (minutes)"
* item[2].item[1].type = #integer
* item[2].item[1].required = true
* item[2].item[1].initial.valueInteger = 15

* item[2].item[2].linkId = "preflight-activities.schedule"
* item[2].item[2].text = "Schedule"
* item[2].item[2].type = #string
* item[2].item[2].required = true
* item[2].item[2].initial.valueString = "Annual medical examination and L-60 to L-10 days"

* item[2].item[3].linkId = "preflight-activities.hardware"
* item[2].item[3].text = "Preflight Hardware"
* item[2].item[3].type = #choice
* item[2].item[3].required = true
* item[2].item[3].answerOption[0].valueCoding = $nasa-hardware#audiometer "Audiometer"
* item[2].item[3].initial.valueCoding = $nasa-hardware#audiometer "Audiometer"

* item[2].item[4].linkId = "preflight-activities.location"
* item[2].item[4].text = "Test Location"
* item[2].item[4].type = #choice
* item[2].item[4].required = true
* item[2].item[4].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[4].initial.valueCoding = $nasa-facility#jsc "Johnson Space Center"

* item[2].item[5].linkId = "preflight-activities.test-date"
* item[2].item[5].text = "Preflight Audiometry Date"
* item[2].item[5].type = #date
* item[2].item[5].required = false

* item[2].item[6].linkId = "preflight-activities.test-completed"
* item[2].item[6].text = "Preflight Audiometry Completed"
* item[2].item[6].type = #boolean
* item[2].item[6].required = true

// GROUP 4: PREFLIGHT AUDIOMETRY RESULTS
* item[3].linkId = "preflight-audiometry-results"
* item[3].text = "Preflight Audiometry Results"
* item[3].type = #group

* item[3].item[0].linkId = "preflight-audiometry-results.right-ear"
* item[3].item[0].text = "Right Ear Thresholds"
* item[3].item[0].type = #group

* item[3].item[0].item[0].linkId = "preflight-audiometry-results.right-ear.500hz"
* item[3].item[0].item[0].text = "500 Hz Threshold (dB HL)"
* item[3].item[0].item[0].type = #integer
* item[3].item[0].item[0].code = $loinc#89024-4 "Hearing threshold Ear - right --500 Hz"

* item[3].item[0].item[1].linkId = "preflight-audiometry-results.right-ear.1000hz"
* item[3].item[0].item[1].text = "1000 Hz Threshold (dB HL)"
* item[3].item[0].item[1].type = #integer
* item[3].item[0].item[1].code = $loinc#89023-6 "Hearing threshold Ear - right --1000 Hz"

* item[3].item[0].item[2].linkId = "preflight-audiometry-results.right-ear.2000hz"
* item[3].item[0].item[2].text = "2000 Hz Threshold (dB HL)"
* item[3].item[0].item[2].type = #integer
* item[3].item[0].item[2].code = $loinc#89022-8 "Hearing threshold Ear - right --2000 Hz"

* item[3].item[0].item[3].linkId = "preflight-audiometry-results.right-ear.3000hz"
* item[3].item[0].item[3].text = "3000 Hz Threshold (dB HL)"
* item[3].item[0].item[3].type = #integer
* item[3].item[0].item[3].code = $loinc#89021-0 "Hearing threshold Ear - right --3000 Hz"

* item[3].item[0].item[4].linkId = "preflight-audiometry-results.right-ear.4000hz"
* item[3].item[0].item[4].text = "4000 Hz Threshold (dB HL)"
* item[3].item[0].item[4].type = #integer
* item[3].item[0].item[4].code = $loinc#89020-2 "Hearing threshold Ear - right --4000 Hz"

* item[3].item[0].item[5].linkId = "preflight-audiometry-results.right-ear.6000hz"
* item[3].item[0].item[5].text = "6000 Hz Threshold (dB HL)"
* item[3].item[0].item[5].type = #integer
* item[3].item[0].item[5].code = $loinc#89019-4 "Hearing threshold Ear - right --6000 Hz"

* item[3].item[0].item[6].linkId = "preflight-audiometry-results.right-ear.8000hz"
* item[3].item[0].item[6].text = "8000 Hz Threshold (dB HL)"
* item[3].item[0].item[6].type = #integer
* item[3].item[0].item[6].code = $loinc#89018-6 "Hearing threshold Ear - right --8000 Hz"

* item[3].item[1].linkId = "preflight-audiometry-results.left-ear"
* item[3].item[1].text = "Left Ear Thresholds"
* item[3].item[1].type = #group

* item[3].item[1].item[0].linkId = "preflight-audiometry-results.left-ear.500hz"
* item[3].item[1].item[0].text = "500 Hz Threshold (dB HL)"
* item[3].item[1].item[0].type = #integer
* item[3].item[1].item[0].code = $loinc#89017-8 "Hearing threshold Ear - left --500 Hz"

* item[3].item[1].item[1].linkId = "preflight-audiometry-results.left-ear.1000hz"
* item[3].item[1].item[1].text = "1000 Hz Threshold (dB HL)"
* item[3].item[1].item[1].type = #integer
* item[3].item[1].item[1].code = $loinc#89016-0 "Hearing threshold Ear - left --1000 Hz"

* item[3].item[1].item[2].linkId = "preflight-audiometry-results.left-ear.2000hz"
* item[3].item[1].item[2].text = "2000 Hz Threshold (dB HL)"
* item[3].item[1].item[2].type = #integer
* item[3].item[1].item[2].code = $loinc#89015-2 "Hearing threshold Ear - left --2000 Hz"

* item[3].item[1].item[3].linkId = "preflight-audiometry-results.left-ear.3000hz"
* item[3].item[1].item[3].text = "3000 Hz Threshold (dB HL)"
* item[3].item[1].item[3].type = #integer
* item[3].item[1].item[3].code = $loinc#89014-5 "Hearing threshold Ear - left --3000 Hz"

* item[3].item[1].item[4].linkId = "preflight-audiometry-results.left-ear.4000hz"
* item[3].item[1].item[4].text = "4000 Hz Threshold (dB HL)"
* item[3].item[1].item[4].type = #integer
* item[3].item[1].item[4].code = $loinc#89013-7 "Hearing threshold Ear - left --4000 Hz"

* item[3].item[1].item[5].linkId = "preflight-audiometry-results.left-ear.6000hz"
* item[3].item[1].item[5].text = "6000 Hz Threshold (dB HL)"
* item[3].item[1].item[5].type = #integer
* item[3].item[1].item[5].code = $loinc#89012-9 "Hearing threshold Ear - left --6000 Hz"

* item[3].item[1].item[6].linkId = "preflight-audiometry-results.left-ear.8000hz"
* item[3].item[1].item[6].text = "8000 Hz Threshold (dB HL)"
* item[3].item[1].item[6].type = #integer
* item[3].item[1].item[6].code = $loinc#89011-1 "Hearing threshold Ear - left --8000 Hz"

* item[3].item[2].linkId = "preflight-audiometry-results.interpretation"
* item[3].item[2].text = "Audiometric Interpretation"
* item[3].item[2].type = #choice
* item[3].item[2].answerOption[0].valueCoding = $sct#162339002 "Hearing normal"
* item[3].item[2].answerOption[1].valueCoding = $sct#15188001 "Hearing loss"
* item[3].item[2].answerOption[2].valueCoding = $sct#95820000 "Bilateral hearing loss"

* item[3].item[3].linkId = "preflight-audiometry-results.notes"
* item[3].item[3].text = "Audiometric Notes"
* item[3].item[3].type = #text

// GROUP 5: IN-FLIGHT (N/A)
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.na"
* item[4].item[0].text = "No In-Flight Activities"
* item[4].item[0].type = #display

// GROUP 6: POSTFLIGHT ACTIVITIES
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.schedule"
* item[5].item[0].text = "Schedule"
* item[5].item[0].type = #string
* item[5].item[0].initial.valueString = "R+3 to R+7 days"

* item[5].item[1].linkId = "postflight-activities.test-date"
* item[5].item[1].text = "Postflight Audiometry Date"
* item[5].item[1].type = #date

* item[5].item[2].linkId = "postflight-activities.test-completed"
* item[5].item[2].text = "Postflight Audiometry Completed"
* item[5].item[2].type = #boolean
* item[5].item[2].required = true

// GROUP 7: POSTFLIGHT AUDIOMETRY RESULTS
* item[6].linkId = "postflight-audiometry-results"
* item[6].text = "Postflight Audiometry Results"
* item[6].type = #group

* item[6].item[0].linkId = "postflight-audiometry-results.right-ear"
* item[6].item[0].text = "Right Ear Thresholds"
* item[6].item[0].type = #group

* item[6].item[0].item[0].linkId = "postflight-audiometry-results.right-ear.500hz"
* item[6].item[0].item[0].text = "500 Hz Threshold (dB HL)"
* item[6].item[0].item[0].type = #integer
* item[6].item[0].item[0].code = $loinc#89024-4 "Hearing threshold Ear - right --500 Hz"

* item[6].item[0].item[1].linkId = "postflight-audiometry-results.right-ear.1000hz"
* item[6].item[0].item[1].text = "1000 Hz Threshold (dB HL)"
* item[6].item[0].item[1].type = #integer

* item[6].item[0].item[2].linkId = "postflight-audiometry-results.right-ear.2000hz"
* item[6].item[0].item[2].text = "2000 Hz Threshold (dB HL)"
* item[6].item[0].item[2].type = #integer

* item[6].item[0].item[3].linkId = "postflight-audiometry-results.right-ear.4000hz"
* item[6].item[0].item[3].text = "4000 Hz Threshold (dB HL)"
* item[6].item[0].item[3].type = #integer

* item[6].item[0].item[4].linkId = "postflight-audiometry-results.right-ear.6000hz"
* item[6].item[0].item[4].text = "6000 Hz Threshold (dB HL)"
* item[6].item[0].item[4].type = #integer

* item[6].item[0].item[5].linkId = "postflight-audiometry-results.right-ear.8000hz"
* item[6].item[0].item[5].text = "8000 Hz Threshold (dB HL)"
* item[6].item[0].item[5].type = #integer

* item[6].item[1].linkId = "postflight-audiometry-results.left-ear"
* item[6].item[1].text = "Left Ear Thresholds"
* item[6].item[1].type = #group

* item[6].item[1].item[0].linkId = "postflight-audiometry-results.left-ear.500hz"
* item[6].item[1].item[0].text = "500 Hz Threshold (dB HL)"
* item[6].item[1].item[0].type = #integer

* item[6].item[1].item[1].linkId = "postflight-audiometry-results.left-ear.1000hz"
* item[6].item[1].item[1].text = "1000 Hz Threshold (dB HL)"
* item[6].item[1].item[1].type = #integer

* item[6].item[1].item[2].linkId = "postflight-audiometry-results.left-ear.2000hz"
* item[6].item[1].item[2].text = "2000 Hz Threshold (dB HL)"
* item[6].item[1].item[2].type = #integer

* item[6].item[1].item[3].linkId = "postflight-audiometry-results.left-ear.4000hz"
* item[6].item[1].item[3].text = "4000 Hz Threshold (dB HL)"
* item[6].item[1].item[3].type = #integer

* item[6].item[1].item[4].linkId = "postflight-audiometry-results.left-ear.6000hz"
* item[6].item[1].item[4].text = "6000 Hz Threshold (dB HL)"
* item[6].item[1].item[4].type = #integer

* item[6].item[1].item[5].linkId = "postflight-audiometry-results.left-ear.8000hz"
* item[6].item[1].item[5].text = "8000 Hz Threshold (dB HL)"
* item[6].item[1].item[5].type = #integer

* item[6].item[2].linkId = "postflight-audiometry-results.interpretation"
* item[6].item[2].text = "Audiometric Interpretation"
* item[6].item[2].type = #choice
* item[6].item[2].answerOption[0].valueCoding = $sct#162339002 "Hearing normal"
* item[6].item[2].answerOption[1].valueCoding = $sct#15188001 "Hearing loss"
* item[6].item[2].answerOption[2].valueCoding = $sct#95820000 "Bilateral hearing loss"

* item[6].item[3].linkId = "postflight-audiometry-results.comparison"
* item[6].item[3].text = "Comparison to Preflight"
* item[6].item[3].type = #choice
* item[6].item[3].answerOption[0].valueString = "No significant change"
* item[6].item[3].answerOption[1].valueString = "Threshold shift detected"
* item[6].item[3].answerOption[2].valueString = "Unable to compare"

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

* item[8].item[0].linkId = "postflight-debrief.na"
* item[8].item[0].text = "N/A - Included as part of Medical Operations overall debrief"
* item[8].item[0].type = #display


// ============================================================================
// MEDB 1.10 Ophthalmologic Examination Questionnaire
// ============================================================================
// Source: MEDB 1.10 Ophthalmologic Examination
// Purpose: Assess pre- and postflight ocular health including SANS monitoring
// ============================================================================

Instance: MEDB110OphthalmologicExamQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.10 Ophthalmologic Examination"
Description: "NASA Medical Requirements Integration Document for ophthalmologic examination. Captures comprehensive eye examination data for monitoring Spaceflight Associated Neuro-ocular Syndrome (SANS)."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-10-ophthalmologic-exam"
* version = "1.0.0"
* name = "MEDB110OphthalmologicExam"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight ocular status and monitor for Spaceflight Associated Neuro-ocular Syndrome (SANS)"
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
* item[0].item[0].initial.valueString = "MEDB 1.10 Ophthalmologic Examination"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#ophthalmology "Ophthalmology"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#ophthalmology "Ophthalmology"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To assess pre- and postflight ocular status, establish baseline measurements, and monitor for Spaceflight Associated Neuro-ocular Syndrome (SANS) including optic disc edema, globe flattening, choroidal folds, and refractive changes."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Visual acuity, refraction, IOP, fundoscopy, OCT, visual fields"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = ">= 30 days"

// GROUP 2: PREFLIGHT TRAINING (N/A)
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.na"
* item[1].item[0].text = "No Preflight Training Required"
* item[1].item[0].type = #display

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Comprehensive ophthalmologic examination including visual acuity, refraction, intraocular pressure, slit lamp examination, dilated fundoscopy, optical coherence tomography (OCT), and visual field testing."

* item[2].item[1].linkId = "preflight-activities.duration"
* item[2].item[1].text = "Duration (minutes)"
* item[2].item[1].type = #integer
* item[2].item[1].required = true
* item[2].item[1].initial.valueInteger = 90

* item[2].item[2].linkId = "preflight-activities.schedule"
* item[2].item[2].text = "Schedule"
* item[2].item[2].type = #string
* item[2].item[2].required = true
* item[2].item[2].initial.valueString = "AME L-9/6 m, L-90 to L-30 days"

* item[2].item[3].linkId = "preflight-activities.location"
* item[2].item[3].text = "Test Location"
* item[2].item[3].type = #choice
* item[2].item[3].required = true
* item[2].item[3].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[3].initial.valueCoding = $nasa-facility#jsc "Johnson Space Center"

* item[2].item[4].linkId = "preflight-activities.test-date"
* item[2].item[4].text = "Preflight Exam Date"
* item[2].item[4].type = #date

* item[2].item[5].linkId = "preflight-activities.test-completed"
* item[2].item[5].text = "Preflight Exam Completed"
* item[2].item[5].type = #boolean
* item[2].item[5].required = true

// GROUP 4: PREFLIGHT OPHTHALMOLOGIC RESULTS
* item[3].linkId = "preflight-ophth-results"
* item[3].text = "Preflight Ophthalmologic Results"
* item[3].type = #group

* item[3].item[0].linkId = "preflight-ophth-results.visual-acuity"
* item[3].item[0].text = "Visual Acuity"
* item[3].item[0].type = #group

* item[3].item[0].item[0].linkId = "preflight-ophth-results.visual-acuity.right-uncorrected"
* item[3].item[0].item[0].text = "Right Eye Uncorrected"
* item[3].item[0].item[0].type = #string
* item[3].item[0].item[0].code = $loinc#79880-1 "Visual acuity uncorrected Right eye"

* item[3].item[0].item[1].linkId = "preflight-ophth-results.visual-acuity.right-corrected"
* item[3].item[0].item[1].text = "Right Eye Best Corrected"
* item[3].item[0].item[1].type = #string
* item[3].item[0].item[1].code = $loinc#79881-9 "Visual acuity best corrected Right eye"

* item[3].item[0].item[2].linkId = "preflight-ophth-results.visual-acuity.left-uncorrected"
* item[3].item[0].item[2].text = "Left Eye Uncorrected"
* item[3].item[0].item[2].type = #string
* item[3].item[0].item[2].code = $loinc#79882-7 "Visual acuity uncorrected Left eye"

* item[3].item[0].item[3].linkId = "preflight-ophth-results.visual-acuity.left-corrected"
* item[3].item[0].item[3].text = "Left Eye Best Corrected"
* item[3].item[0].item[3].type = #string
* item[3].item[0].item[3].code = $loinc#79883-5 "Visual acuity best corrected Left eye"

* item[3].item[1].linkId = "preflight-ophth-results.refraction"
* item[3].item[1].text = "Refraction"
* item[3].item[1].type = #group

* item[3].item[1].item[0].linkId = "preflight-ophth-results.refraction.right-sphere"
* item[3].item[1].item[0].text = "Right Eye Sphere (D)"
* item[3].item[1].item[0].type = #decimal

* item[3].item[1].item[1].linkId = "preflight-ophth-results.refraction.right-cylinder"
* item[3].item[1].item[1].text = "Right Eye Cylinder (D)"
* item[3].item[1].item[1].type = #decimal

* item[3].item[1].item[2].linkId = "preflight-ophth-results.refraction.right-axis"
* item[3].item[1].item[2].text = "Right Eye Axis (degrees)"
* item[3].item[1].item[2].type = #integer

* item[3].item[1].item[3].linkId = "preflight-ophth-results.refraction.left-sphere"
* item[3].item[1].item[3].text = "Left Eye Sphere (D)"
* item[3].item[1].item[3].type = #decimal

* item[3].item[1].item[4].linkId = "preflight-ophth-results.refraction.left-cylinder"
* item[3].item[1].item[4].text = "Left Eye Cylinder (D)"
* item[3].item[1].item[4].type = #decimal

* item[3].item[1].item[5].linkId = "preflight-ophth-results.refraction.left-axis"
* item[3].item[1].item[5].text = "Left Eye Axis (degrees)"
* item[3].item[1].item[5].type = #integer

* item[3].item[2].linkId = "preflight-ophth-results.iop"
* item[3].item[2].text = "Intraocular Pressure"
* item[3].item[2].type = #group

* item[3].item[2].item[0].linkId = "preflight-ophth-results.iop.right"
* item[3].item[2].item[0].text = "Right Eye IOP (mmHg)"
* item[3].item[2].item[0].type = #integer
* item[3].item[2].item[0].code = $loinc#79893-4 "Intraocular pressure of Eye - right"

* item[3].item[2].item[1].linkId = "preflight-ophth-results.iop.left"
* item[3].item[2].item[1].text = "Left Eye IOP (mmHg)"
* item[3].item[2].item[1].type = #integer
* item[3].item[2].item[1].code = $loinc#79892-6 "Intraocular pressure of Eye - left"

* item[3].item[3].linkId = "preflight-ophth-results.fundoscopy"
* item[3].item[3].text = "Fundoscopy Findings"
* item[3].item[3].type = #group

* item[3].item[3].item[0].linkId = "preflight-ophth-results.fundoscopy.optic-disc-right"
* item[3].item[3].item[0].text = "Optic Disc Right Eye"
* item[3].item[3].item[0].type = #choice
* item[3].item[3].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[3].item[3].item[0].answerOption[1].valueCoding = $sct#423341008 "Optic disc edema"
* item[3].item[3].item[0].answerOption[2].valueCoding = $sct#263654008 "Abnormal"

* item[3].item[3].item[1].linkId = "preflight-ophth-results.fundoscopy.optic-disc-left"
* item[3].item[3].item[1].text = "Optic Disc Left Eye"
* item[3].item[3].item[1].type = #choice
* item[3].item[3].item[1].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[3].item[3].item[1].answerOption[1].valueCoding = $sct#423341008 "Optic disc edema"
* item[3].item[3].item[1].answerOption[2].valueCoding = $sct#263654008 "Abnormal"

* item[3].item[3].item[2].linkId = "preflight-ophth-results.fundoscopy.choroidal-folds"
* item[3].item[3].item[2].text = "Choroidal Folds Present"
* item[3].item[3].item[2].type = #boolean

* item[3].item[3].item[3].linkId = "preflight-ophth-results.fundoscopy.globe-flattening"
* item[3].item[3].item[3].text = "Globe Flattening Present"
* item[3].item[3].item[3].type = #boolean

* item[3].item[4].linkId = "preflight-ophth-results.oct"
* item[3].item[4].text = "OCT Measurements"
* item[3].item[4].type = #group

* item[3].item[4].item[0].linkId = "preflight-ophth-results.oct.rnfl-right"
* item[3].item[4].item[0].text = "Right Eye RNFL Average (microns)"
* item[3].item[4].item[0].type = #decimal

* item[3].item[4].item[1].linkId = "preflight-ophth-results.oct.rnfl-left"
* item[3].item[4].item[1].text = "Left Eye RNFL Average (microns)"
* item[3].item[4].item[1].type = #decimal

* item[3].item[4].item[2].linkId = "preflight-ophth-results.oct.total-retinal-thickness-right"
* item[3].item[4].item[2].text = "Right Eye Total Retinal Thickness (microns)"
* item[3].item[4].item[2].type = #decimal

* item[3].item[4].item[3].linkId = "preflight-ophth-results.oct.total-retinal-thickness-left"
* item[3].item[4].item[3].text = "Left Eye Total Retinal Thickness (microns)"
* item[3].item[4].item[3].type = #decimal

* item[3].item[5].linkId = "preflight-ophth-results.interpretation"
* item[3].item[5].text = "Overall Ophthalmologic Interpretation"
* item[3].item[5].type = #choice
* item[3].item[5].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[3].item[5].answerOption[1].valueCoding = $sct#263654008 "Abnormal"

* item[3].item[6].linkId = "preflight-ophth-results.notes"
* item[3].item[6].text = "Examination Notes"
* item[3].item[6].type = #text

// GROUP 5: IN-FLIGHT ACTIVITIES
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.description"
* item[4].item[0].text = "Activity Description"
* item[4].item[0].type = #text
* item[4].item[0].initial.valueString = "Fundoscopy using Fundoscope onboard ISS. Images reviewed by ground team for SANS monitoring."

* item[4].item[1].linkId = "inflight-activities.schedule"
* item[4].item[1].text = "Schedule"
* item[4].item[1].type = #string
* item[4].item[1].initial.valueString = "Monthly during mission"

* item[4].item[2].linkId = "inflight-activities.fundoscopy-completed"
* item[4].item[2].text = "In-flight Fundoscopy Completed"
* item[4].item[2].type = #boolean

* item[4].item[3].linkId = "inflight-activities.sans-suspected"
* item[4].item[3].text = "SANS Findings Suspected In-Flight"
* item[4].item[3].type = #boolean

// GROUP 6: POSTFLIGHT ACTIVITIES
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.schedule"
* item[5].item[0].text = "Schedule"
* item[5].item[0].type = #string
* item[5].item[0].initial.valueString = "R+1 to R+3 days, R+30 days, R+180 days"

* item[5].item[1].linkId = "postflight-activities.test-date"
* item[5].item[1].text = "Postflight Exam Date (Initial)"
* item[5].item[1].type = #date

* item[5].item[2].linkId = "postflight-activities.test-completed"
* item[5].item[2].text = "Postflight Exam Completed"
* item[5].item[2].type = #boolean
* item[5].item[2].required = true

// GROUP 7: POSTFLIGHT OPHTHALMOLOGIC RESULTS
* item[6].linkId = "postflight-ophth-results"
* item[6].text = "Postflight Ophthalmologic Results"
* item[6].type = #group

* item[6].item[0].linkId = "postflight-ophth-results.visual-acuity"
* item[6].item[0].text = "Visual Acuity"
* item[6].item[0].type = #group

* item[6].item[0].item[0].linkId = "postflight-ophth-results.visual-acuity.right-corrected"
* item[6].item[0].item[0].text = "Right Eye Best Corrected"
* item[6].item[0].item[0].type = #string

* item[6].item[0].item[1].linkId = "postflight-ophth-results.visual-acuity.left-corrected"
* item[6].item[0].item[1].text = "Left Eye Best Corrected"
* item[6].item[0].item[1].type = #string

* item[6].item[1].linkId = "postflight-ophth-results.iop"
* item[6].item[1].text = "Intraocular Pressure"
* item[6].item[1].type = #group

* item[6].item[1].item[0].linkId = "postflight-ophth-results.iop.right"
* item[6].item[1].item[0].text = "Right Eye IOP (mmHg)"
* item[6].item[1].item[0].type = #integer

* item[6].item[1].item[1].linkId = "postflight-ophth-results.iop.left"
* item[6].item[1].item[1].text = "Left Eye IOP (mmHg)"
* item[6].item[1].item[1].type = #integer

* item[6].item[2].linkId = "postflight-ophth-results.sans-assessment"
* item[6].item[2].text = "SANS Assessment"
* item[6].item[2].type = #group

* item[6].item[2].item[0].linkId = "postflight-ophth-results.sans-assessment.optic-disc-edema"
* item[6].item[2].item[0].text = "Optic Disc Edema Present"
* item[6].item[2].item[0].type = #boolean

* item[6].item[2].item[1].linkId = "postflight-ophth-results.sans-assessment.globe-flattening"
* item[6].item[2].item[1].text = "Globe Flattening Present"
* item[6].item[2].item[1].type = #boolean

* item[6].item[2].item[2].linkId = "postflight-ophth-results.sans-assessment.choroidal-folds"
* item[6].item[2].item[2].text = "Choroidal Folds Present"
* item[6].item[2].item[2].type = #boolean

* item[6].item[2].item[3].linkId = "postflight-ophth-results.sans-assessment.hyperopic-shift"
* item[6].item[2].item[3].text = "Hyperopic Shift Present"
* item[6].item[2].item[3].type = #boolean

* item[6].item[2].item[4].linkId = "postflight-ophth-results.sans-assessment.cotton-wool-spots"
* item[6].item[2].item[4].text = "Cotton Wool Spots Present"
* item[6].item[2].item[4].type = #boolean

* item[6].item[2].item[5].linkId = "postflight-ophth-results.sans-assessment.sans-grade"
* item[6].item[2].item[5].text = "SANS Grade"
* item[6].item[2].item[5].type = #choice
* item[6].item[2].item[5].answerOption[0].valueString = "No SANS"
* item[6].item[2].item[5].answerOption[1].valueString = "Grade 1 - Mild"
* item[6].item[2].item[5].answerOption[2].valueString = "Grade 2 - Moderate"
* item[6].item[2].item[5].answerOption[3].valueString = "Grade 3 - Severe"

* item[6].item[3].linkId = "postflight-ophth-results.comparison"
* item[6].item[3].text = "Comparison to Preflight"
* item[6].item[3].type = #choice
* item[6].item[3].answerOption[0].valueString = "No significant change"
* item[6].item[3].answerOption[1].valueString = "SANS findings present"
* item[6].item[3].answerOption[2].valueString = "Other changes"

* item[6].item[4].linkId = "postflight-ophth-results.notes"
* item[6].item[4].text = "Examination Notes"
* item[6].item[4].type = #text

// GROUP 8: DATA DELIVERY
* item[7].linkId = "data-delivery"
* item[7].text = "Data Delivery"
* item[7].type = #group

* item[7].item[0].linkId = "data-delivery.archive"
* item[7].item[0].text = "Data Archive Systems"
* item[7].item[0].type = #choice
* item[7].item[0].repeats = true
* item[7].item[0].answerOption[0].valueCoding = $nasa-archive#pacs "Picture Archiving and Communication System"
* item[7].item[0].answerOption[1].valueCoding = $nasa-archive#mmis "Medical Mission Information System"

// GROUP 9: POSTFLIGHT DEBRIEF
* item[8].linkId = "postflight-debrief"
* item[8].text = "Postflight Debrief"
* item[8].type = #group

* item[8].item[0].linkId = "postflight-debrief.na"
* item[8].item[0].text = "N/A - Included as part of Medical Operations overall debrief"
* item[8].item[0].type = #display


// ============================================================================
// MEDB 1.9 Dental Examination Questionnaire
// ============================================================================

Instance: MEDB19DentalExamQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.9 Dental Examination"
Description: "NASA Medical Requirements Integration Document for dental examination. Captures comprehensive dental assessment data for spaceflight crew members."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-9-dental-exam"
* version = "1.0.0"
* name = "MEDB19DentalExam"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess dental fitness for spaceflight and ensure crew are free of dental conditions that could cause in-flight emergencies."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 1.9 Dental Examination"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#dental "Dental"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#dental "Dental"

* item[1].linkId = "preflight-activities"
* item[1].text = "Preflight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-activities.schedule"
* item[1].item[0].text = "Schedule"
* item[1].item[0].type = #string
* item[1].item[0].initial.valueString = "Annual, L-180 to L-90 days, L-14 to L-7 days (final clearance)"

* item[1].item[1].linkId = "preflight-activities.exam-date"
* item[1].item[1].text = "Examination Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "preflight-activities.exam-completed"
* item[1].item[2].text = "Examination Completed"
* item[1].item[2].type = #boolean

* item[2].linkId = "dental-results"
* item[2].text = "Dental Examination Results"
* item[2].type = #group

* item[2].item[0].linkId = "dental-results.overall-status"
* item[2].item[0].text = "Overall Dental Status"
* item[2].item[0].type = #choice
* item[2].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[2].item[0].answerOption[1].valueCoding = $sct#263654008 "Abnormal"

* item[2].item[1].linkId = "dental-results.caries-present"
* item[2].item[1].text = "Dental Caries Present"
* item[2].item[1].type = #boolean

* item[2].item[2].linkId = "dental-results.periodontal-disease"
* item[2].item[2].text = "Periodontal Disease Present"
* item[2].item[2].type = #boolean

* item[2].item[3].linkId = "dental-results.restorations-needed"
* item[2].item[3].text = "Restorations Needed"
* item[2].item[3].type = #boolean

* item[2].item[4].linkId = "dental-results.restorations-completed"
* item[2].item[4].text = "Required Restorations Completed"
* item[2].item[4].type = #boolean

* item[2].item[5].linkId = "dental-results.panoramic-xray"
* item[2].item[5].text = "Panoramic X-ray Obtained"
* item[2].item[5].type = #boolean

* item[2].item[6].linkId = "dental-results.flight-risk"
* item[2].item[6].text = "In-Flight Emergency Risk"
* item[2].item[6].type = #choice
* item[2].item[6].answerOption[0].valueString = "Low risk"
* item[2].item[6].answerOption[1].valueString = "Moderate risk"
* item[2].item[6].answerOption[2].valueString = "High risk"

* item[2].item[7].linkId = "dental-results.cleared-for-flight"
* item[2].item[7].text = "Cleared for Flight"
* item[2].item[7].type = #boolean

* item[2].item[8].linkId = "dental-results.notes"
* item[2].item[8].text = "Examination Notes"
* item[2].item[8].type = #text

* item[3].linkId = "data-delivery"
* item[3].text = "Data Delivery"
* item[3].type = #group

* item[3].item[0].linkId = "data-delivery.archive"
* item[3].item[0].text = "Data Archive"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MEDB 1.11 Body Composition/DEXA Questionnaire
// ============================================================================

Instance: MEDB111BodyCompositionQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.11 Body Composition/DEXA"
Description: "NASA Medical Requirements Integration Document for body composition assessment using DEXA."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-11-body-composition"
* version = "1.0.0"
* name = "MEDB111BodyComposition"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Exercise Physiology"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess body composition including bone mineral density, lean mass, and fat mass using DEXA."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 1.11 Body Composition Assessment"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#exercise-physiology "Exercise Physiology"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#bone-muscle-exercise "Bone/Muscle/Exercise"

* item[1].linkId = "preflight-activities"
* item[1].text = "Preflight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-activities.schedule"
* item[1].item[0].text = "Schedule"
* item[1].item[0].type = #string
* item[1].item[0].initial.valueString = "L-180 to L-60 days"

* item[1].item[1].linkId = "preflight-activities.scan-date"
* item[1].item[1].text = "DEXA Scan Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "preflight-activities.scan-completed"
* item[1].item[2].text = "Scan Completed"
* item[1].item[2].type = #boolean

* item[2].linkId = "preflight-dexa-results"
* item[2].text = "Preflight DEXA Results"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-dexa-results.total-bmd"
* item[2].item[0].text = "Total Body BMD (g/cm²)"
* item[2].item[0].type = #decimal
* item[2].item[0].code = $loinc#38263-0 "DXA Bone density"

* item[2].item[1].linkId = "preflight-dexa-results.spine-bmd"
* item[2].item[1].text = "Lumbar Spine BMD (g/cm²)"
* item[2].item[1].type = #decimal
* item[2].item[1].code = $loinc#38264-8 "DXA Bone density Lumbar spine"

* item[2].item[2].linkId = "preflight-dexa-results.hip-bmd"
* item[2].item[2].text = "Total Hip BMD (g/cm²)"
* item[2].item[2].type = #decimal
* item[2].item[2].code = $loinc#38265-5 "DXA Bone density Femur"

* item[2].item[3].linkId = "preflight-dexa-results.total-lean-mass"
* item[2].item[3].text = "Total Lean Mass (kg)"
* item[2].item[3].type = #decimal
* item[2].item[3].code = $loinc#73708-0 "Lean body mass"

* item[2].item[4].linkId = "preflight-dexa-results.total-fat-mass"
* item[2].item[4].text = "Total Fat Mass (kg)"
* item[2].item[4].type = #decimal
* item[2].item[4].code = $loinc#73709-8 "Fat mass"

* item[2].item[5].linkId = "preflight-dexa-results.body-fat-percentage"
* item[2].item[5].text = "Body Fat Percentage (%)"
* item[2].item[5].type = #decimal
* item[2].item[5].code = $loinc#41982-0 "Percentage body fat"

* item[3].linkId = "postflight-activities"
* item[3].text = "Postflight Activities"
* item[3].type = #group

* item[3].item[0].linkId = "postflight-activities.schedule"
* item[3].item[0].text = "Schedule"
* item[3].item[0].type = #string
* item[3].item[0].initial.valueString = "R+5 to R+14 days, R+180 days, R+365 days"

* item[3].item[1].linkId = "postflight-activities.scan-date"
* item[3].item[1].text = "Postflight Scan Date"
* item[3].item[1].type = #date

* item[4].linkId = "postflight-dexa-results"
* item[4].text = "Postflight DEXA Results"
* item[4].type = #group

* item[4].item[0].linkId = "postflight-dexa-results.spine-bmd"
* item[4].item[0].text = "Lumbar Spine BMD (g/cm²)"
* item[4].item[0].type = #decimal

* item[4].item[1].linkId = "postflight-dexa-results.hip-bmd"
* item[4].item[1].text = "Total Hip BMD (g/cm²)"
* item[4].item[1].type = #decimal

* item[4].item[2].linkId = "postflight-dexa-results.bmd-change-spine"
* item[4].item[2].text = "BMD Change - Spine (%)"
* item[4].item[2].type = #decimal

* item[4].item[3].linkId = "postflight-dexa-results.bmd-change-hip"
* item[4].item[3].text = "BMD Change - Hip (%)"
* item[4].item[3].type = #decimal

* item[4].item[4].linkId = "postflight-dexa-results.bone-loss-assessment"
* item[4].item[4].text = "Bone Loss Assessment"
* item[4].item[4].type = #choice
* item[4].item[4].answerOption[0].valueString = "Within expected range"
* item[4].item[4].answerOption[1].valueString = "Elevated"
* item[4].item[4].answerOption[2].valueString = "Significant"

* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MEDB 1.14 Body Mass Measurement Questionnaire
// ============================================================================

Instance: MEDB114BodyMassQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 1.14 Body Mass Measurement"
Description: "NASA Medical Requirements Integration Document for body mass measurement tracking."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-1-14-body-mass"
* version = "1.0.0"
* name = "MEDB114BodyMass"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To track body mass changes during spaceflight as an indicator of nutritional status."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 1.14 Body Mass Measurement"

* item[1].linkId = "preflight-measurements"
* item[1].text = "Preflight Measurements"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-measurements.date"
* item[1].item[0].text = "Measurement Date"
* item[1].item[0].type = #date

* item[1].item[1].linkId = "preflight-measurements.body-mass"
* item[1].item[1].text = "Body Mass (kg)"
* item[1].item[1].type = #decimal
* item[1].item[1].code = $loinc#29463-7 "Body weight"

* item[1].item[2].linkId = "preflight-measurements.height"
* item[1].item[2].text = "Height (cm)"
* item[1].item[2].type = #decimal
* item[1].item[2].code = $loinc#8302-2 "Body height"

* item[1].item[3].linkId = "preflight-measurements.bmi"
* item[1].item[3].text = "BMI (kg/m²)"
* item[1].item[3].type = #decimal
* item[1].item[3].code = $loinc#39156-5 "Body mass index (BMI)"

* item[2].linkId = "inflight-measurements"
* item[2].text = "In-Flight Measurements"
* item[2].type = #group

* item[2].item[0].linkId = "inflight-measurements.schedule"
* item[2].item[0].text = "Measurement Schedule"
* item[2].item[0].type = #string
* item[2].item[0].initial.valueString = "Weekly"

* item[2].item[1].linkId = "inflight-measurements.flight-day"
* item[2].item[1].text = "Flight Day"
* item[2].item[1].type = #integer

* item[2].item[2].linkId = "inflight-measurements.body-mass"
* item[2].item[2].text = "Body Mass (kg)"
* item[2].item[2].type = #decimal

* item[2].item[3].linkId = "inflight-measurements.change-from-preflight"
* item[2].item[3].text = "Change from Preflight (%)"
* item[2].item[3].type = #decimal

* item[2].item[4].linkId = "inflight-measurements.mass-loss-alert"
* item[2].item[4].text = "Mass Loss Alert (>5%)"
* item[2].item[4].type = #boolean

* item[3].linkId = "postflight-measurements"
* item[3].text = "Postflight Measurements"
* item[3].type = #group

* item[3].item[0].linkId = "postflight-measurements.body-mass"
* item[3].item[0].text = "Body Mass (kg)"
* item[3].item[0].type = #decimal

* item[3].item[1].linkId = "postflight-measurements.total-change"
* item[3].item[1].text = "Total Mass Change (%)"
* item[3].item[1].type = #decimal

* item[4].linkId = "data-delivery"
* item[4].text = "Data Delivery"
* item[4].type = #group

* item[4].item[0].linkId = "data-delivery.archive"
* item[4].item[0].text = "Data Archive"
* item[4].item[0].type = #choice
* item[4].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
