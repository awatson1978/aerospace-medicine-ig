// ============================================================================
// MEDB 7.x Behavioral Health Questionnaires
// ============================================================================
// This file contains questionnaires for MEDB 7.x series behavioral assessments
// ============================================================================

Alias: $nasa-sponsor = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs
Alias: $nasa-discipline = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs
Alias: $nasa-phase = https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs
Alias: $nasa-offset = https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs
Alias: $nasa-hardware = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs
Alias: $nasa-facility = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs
Alias: $nasa-archive = https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs
Alias: $nasa-roles = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs
Alias: $behavioral-state = http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct


// ============================================================================
// MEDB 7.1 Preflight Psychiatric/Psychological Status Check Questionnaire
// ============================================================================
// Source: MEDB 7.1 Preflight Psychiatric/Psychological Status Check
// Revised: 05/31/12 | JSC28913
// Purpose: Assess behavioral readiness for flight, review psychological services
// ============================================================================

Instance: MEDB71PsychStatusQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 7.1 Preflight Psychiatric/Psychological Status Check"
Description: "NASA Medical Requirements Integration Document for preflight behavioral health assessment. Captures psychiatric/psychological assessment of behavioral readiness for flight and review of psychological services."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-7-1-psych-status"
* version = "1.0.0"
* name = "MEDB71PsychStatus"
* status = #active
* date = "2012-05-31"
* publisher = "NASA Behavioral Health and Performance"
* contact.name = "Behavioral Health and Performance"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Psychiatric/Psychological assessment of behavioral readiness for flight. Review of individual and crew psychological services."
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
* item[0].item[0].initial.valueString = "MEDB 7.1 Preflight Psychiatric/Psychological Status Check"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#behavioral "Behavior and Performance"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#behavioral "Behavior and Performance"

* item[0].item[3].linkId = "overview.category"
* item[0].item[3].text = "Category"
* item[0].item[3].type = #string
* item[0].item[3].required = true
* item[0].item[3].readOnly = true
* item[0].item[3].initial.valueString = "Medical Requirements (MR)"

* item[0].item[4].linkId = "overview.references"
* item[0].item[4].text = "References"
* item[0].item[4].type = #text
* item[0].item[4].required = false
* item[0].item[4].initial.valueString = "Medical Evaluation Documents (MED) Volume B, Section 7.1; ISS MORD"

* item[0].item[5].linkId = "overview.purpose"
* item[0].item[5].text = "Purpose/Objectives"
* item[0].item[5].type = #text
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "Psychiatric/Psychological assessment of behavioral readiness for flight. Review of individual and crew psychological services."

* item[0].item[6].linkId = "overview.measurement-parameters"
* item[0].item[6].text = "Measurement Parameters"
* item[0].item[6].type = #string
* item[0].item[6].required = false
* item[0].item[6].initial.valueString = "N/A"

* item[0].item[7].linkId = "overview.deliverables"
* item[0].item[7].text = "Deliverables"
* item[0].item[7].type = #string
* item[0].item[7].required = false
* item[0].item[7].initial.valueString = "N/A"

* item[0].item[8].linkId = "overview.flight-duration"
* item[0].item[8].text = "Flight Duration"
* item[0].item[8].type = #string
* item[0].item[8].required = true
* item[0].item[8].initial.valueString = ">= 30 days"

* item[0].item[9].linkId = "overview.number-of-flights"
* item[0].item[9].text = "Number of Flights"
* item[0].item[9].type = #string
* item[0].item[9].required = true
* item[0].item[9].initial.valueString = "Each ISS long duration expedition"

* item[0].item[10].linkId = "overview.crew-members-required"
* item[0].item[10].text = "Number and Type of Crew Members Required"
* item[0].item[10].type = #string
* item[0].item[10].required = true
* item[0].item[10].initial.valueString = "All ISS crewmembers"

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
* item[2].item[0].initial.valueString = "An assessment of crew flight readiness is conducted by BHP personnel. Preflight briefings between the crewmembers & BHP specialist are required to confirm behavioral readiness for flight & review of individual & crew psychological services. This will include a check of life events that would have an impact on the astronaut's fitness for launch. Behavioral Medicine Assessments to include Neurocognitive baseline and Behavioral health baseline needed for in flight monitoring to be completed between L-12 and launch."

// Assessment 1: L-12m / L-240/180d
* item[2].item[1].linkId = "preflight-activities.assessment1"
* item[2].item[1].text = "Behavioral Medicine Assessment 1"
* item[2].item[1].type = #group

* item[2].item[1].item[0].linkId = "preflight-activities.assessment1.duration"
* item[2].item[1].item[0].text = "Duration (minutes)"
* item[2].item[1].item[0].type = #integer
* item[2].item[1].item[0].required = true
* item[2].item[1].item[0].initial.valueInteger = 60

* item[2].item[1].item[1].linkId = "preflight-activities.assessment1.schedule"
* item[2].item[1].item[1].text = "Schedule"
* item[2].item[1].item[1].type = #string
* item[2].item[1].item[1].required = true
* item[2].item[1].item[1].initial.valueString = "L-12 m, L-240/180 d"

* item[2].item[1].item[2].linkId = "preflight-activities.assessment1.date"
* item[2].item[1].item[2].text = "Assessment Date"
* item[2].item[1].item[2].type = #date
* item[2].item[1].item[2].required = false

* item[2].item[1].item[3].linkId = "preflight-activities.assessment1.completed"
* item[2].item[1].item[3].text = "Assessment Completed"
* item[2].item[1].item[3].type = #boolean
* item[2].item[1].item[3].required = true

// Assessment 2: L-90/30d
* item[2].item[2].linkId = "preflight-activities.assessment2"
* item[2].item[2].text = "Behavioral Medicine Assessment 2"
* item[2].item[2].type = #group

* item[2].item[2].item[0].linkId = "preflight-activities.assessment2.duration"
* item[2].item[2].item[0].text = "Duration (minutes)"
* item[2].item[2].item[0].type = #integer
* item[2].item[2].item[0].required = true
* item[2].item[2].item[0].initial.valueInteger = 60

* item[2].item[2].item[1].linkId = "preflight-activities.assessment2.schedule"
* item[2].item[2].item[1].text = "Schedule"
* item[2].item[2].item[1].type = #string
* item[2].item[2].item[1].required = true
* item[2].item[2].item[1].initial.valueString = "L-90/30 days"

* item[2].item[2].item[2].linkId = "preflight-activities.assessment2.date"
* item[2].item[2].item[2].text = "Assessment Date"
* item[2].item[2].item[2].type = #date
* item[2].item[2].item[2].required = false

* item[2].item[2].item[3].linkId = "preflight-activities.assessment2.completed"
* item[2].item[2].item[3].text = "Assessment Completed"
* item[2].item[2].item[3].type = #boolean
* item[2].item[2].item[3].required = true

* item[2].item[3].linkId = "preflight-activities.flexibility"
* item[2].item[3].text = "Flexibility"
* item[2].item[3].type = #string
* item[2].item[3].required = false
* item[2].item[3].initial.valueString = "May be conducted over 2 days between L-90/30"

* item[2].item[4].linkId = "preflight-activities.personnel"
* item[2].item[4].text = "Personnel Required"
* item[2].item[4].type = #choice
* item[2].item[4].required = true
* item[2].item[4].repeats = true
* item[2].item[4].answerOption[0].valueCoding = $nasa-roles#crewmember "Crewmember"
* item[2].item[4].answerOption[1].valueCoding = $nasa-roles#bhp-specialist "BHP Specialist"

* item[2].item[5].linkId = "preflight-activities.location"
* item[2].item[5].text = "Test Location"
* item[2].item[5].type = #choice
* item[2].item[5].required = true
* item[2].item[5].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[5].answerOption[1].valueCoding = $nasa-facility#russia-gctc "Gagarin Cosmonaut Training Center"

* item[2].item[6].linkId = "preflight-activities.room-requirements"
* item[2].item[6].text = "Room Requirements"
* item[2].item[6].type = #string
* item[2].item[6].required = false
* item[2].item[6].initial.valueString = "8' x 10' private room free of distractions"

* item[2].item[7].linkId = "preflight-activities.constraints"
* item[2].item[7].text = "Constraints/Special Requirements"
* item[2].item[7].type = #text
* item[2].item[7].required = false
* item[2].item[7].initial.valueString = "Request that the L-90/30 event be scheduled as close as possible to the crewmember's final departure from the US prior to their Soyuz launch."

// ============================================================================
// GROUP 4: BEHAVIORAL ASSESSMENT RESULTS (for extraction)
// ============================================================================
* item[3].linkId = "assessment-results"
* item[3].text = "Behavioral Assessment Results"
* item[3].type = #group

* item[3].item[0].linkId = "assessment-results.behavioral-readiness"
* item[3].item[0].text = "Behavioral Readiness for Flight"
* item[3].item[0].type = #choice
* item[3].item[0].required = true
* item[3].item[0].code = $loinc#44249-1 "Mental status Narrative"
* item[3].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[3].item[0].answerOption[1].valueCoding = $sct#263654008 "Abnormal"
* item[3].item[0].answerOption[2].valueString = "Cleared with conditions"
* item[3].item[0].answerOption[3].valueString = "Not cleared"

* item[3].item[1].linkId = "assessment-results.neurocognitive-baseline"
* item[3].item[1].text = "Neurocognitive Baseline Completed"
* item[3].item[1].type = #boolean
* item[3].item[1].required = true

* item[3].item[2].linkId = "assessment-results.behavioral-baseline"
* item[3].item[2].text = "Behavioral Health Baseline Completed"
* item[3].item[2].type = #boolean
* item[3].item[2].required = true

* item[3].item[3].linkId = "assessment-results.life-events-review"
* item[3].item[3].text = "Life Events Review Completed"
* item[3].item[3].type = #boolean
* item[3].item[3].required = true

* item[3].item[4].linkId = "assessment-results.life-events-impact"
* item[3].item[4].text = "Life Events with Potential Impact Identified"
* item[3].item[4].type = #boolean
* item[3].item[4].required = false

* item[3].item[5].linkId = "assessment-results.psych-services-review"
* item[3].item[5].text = "Individual Psychological Services Reviewed"
* item[3].item[5].type = #boolean
* item[3].item[5].required = true

* item[3].item[6].linkId = "assessment-results.crew-services-review"
* item[3].item[6].text = "Crew Psychological Services Reviewed"
* item[3].item[6].type = #boolean
* item[3].item[6].required = true

* item[3].item[7].linkId = "assessment-results.aeromedical-concerns"
* item[3].item[7].text = "Aeromedical Concerns Identified"
* item[3].item[7].type = #boolean
* item[3].item[7].required = true

* item[3].item[8].linkId = "assessment-results.aeromedical-concerns-details"
* item[3].item[8].text = "Aeromedical Concerns Details"
* item[3].item[8].type = #text
* item[3].item[8].required = false
* item[3].item[8].enableWhen.question = "assessment-results.aeromedical-concerns"
* item[3].item[8].enableWhen.operator = #=
* item[3].item[8].enableWhen.answerBoolean = true

// ============================================================================
// GROUP 5: BEHAVIORAL STATE METRICS (for existing IG profiles)
// ============================================================================
* item[4].linkId = "behavioral-metrics"
* item[4].text = "Behavioral State Metrics"
* item[4].type = #group

* item[4].item[0].linkId = "behavioral-metrics.mood-level"
* item[4].item[0].text = "Mood Level (-3 to +3)"
* item[4].item[0].type = #integer
* item[4].item[0].required = false
* item[4].item[0].code = $behavioral-state#mood-level "Mood level"

* item[4].item[1].linkId = "behavioral-metrics.anxiety-level"
* item[4].item[1].text = "Anxiety Level (0-10)"
* item[4].item[1].type = #integer
* item[4].item[1].required = false
* item[4].item[1].code = $behavioral-state#anxiety-level "Anxiety level"

* item[4].item[2].linkId = "behavioral-metrics.coping-capacity"
* item[4].item[2].text = "Coping Capacity Assessment"
* item[4].item[2].type = #choice
* item[4].item[2].required = false
* item[4].item[2].code = $behavioral-state#coping-capacity "Coping capacity"
* item[4].item[2].answerOption[0].valueString = "Excellent"
* item[4].item[2].answerOption[1].valueString = "Good"
* item[4].item[2].answerOption[2].valueString = "Adequate"
* item[4].item[2].answerOption[3].valueString = "Marginal"
* item[4].item[2].answerOption[4].valueString = "Inadequate"

* item[4].item[3].linkId = "behavioral-metrics.sleep-quality"
* item[4].item[3].text = "Sleep Quality Assessment"
* item[4].item[3].type = #choice
* item[4].item[3].required = false
* item[4].item[3].code = $behavioral-state#sleep-quality "Sleep quality"
* item[4].item[3].answerOption[0].valueString = "Excellent"
* item[4].item[3].answerOption[1].valueString = "Good"
* item[4].item[3].answerOption[2].valueString = "Fair"
* item[4].item[3].answerOption[3].valueString = "Poor"

* item[4].item[4].linkId = "behavioral-metrics.cognitive-readiness"
* item[4].item[4].text = "Cognitive Readiness for Mission"
* item[4].item[4].type = #choice
* item[4].item[4].required = false
* item[4].item[4].code = $behavioral-state#cognitive-readiness "Cognitive readiness"
* item[4].item[4].answerOption[0].valueString = "Fully ready"
* item[4].item[4].answerOption[1].valueString = "Ready with minor concerns"
* item[4].item[4].answerOption[2].valueString = "Ready with monitoring"
* item[4].item[4].answerOption[3].valueString = "Not ready"

* item[4].item[5].linkId = "behavioral-metrics.social-connectedness"
* item[4].item[5].text = "Social Connectedness (with crew/family)"
* item[4].item[5].type = #choice
* item[4].item[5].required = false
* item[4].item[5].code = $behavioral-state#social-connectedness "Social connectedness"
* item[4].item[5].answerOption[0].valueString = "Strong"
* item[4].item[5].answerOption[1].valueString = "Adequate"
* item[4].item[5].answerOption[2].valueString = "Weak"
* item[4].item[5].answerOption[3].valueString = "Concerning"

// ============================================================================
// GROUP 6: IN-FLIGHT ACTIVITIES (N/A for this MRID)
// ============================================================================
* item[5].linkId = "inflight-activities"
* item[5].text = "In-Flight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "inflight-activities.na"
* item[5].item[0].text = "No In-Flight Activities"
* item[5].item[0].type = #display

// ============================================================================
// GROUP 7: POSTFLIGHT ACTIVITIES (N/A for this MRID)
// ============================================================================
* item[6].linkId = "postflight-activities"
* item[6].text = "Postflight Activities"
* item[6].type = #group

* item[6].item[0].linkId = "postflight-activities.na"
* item[6].item[0].text = "No Postflight Activities"
* item[6].item[0].type = #display

// ============================================================================
// GROUP 8: DATA DELIVERY
// ============================================================================
* item[7].linkId = "data-delivery"
* item[7].text = "Data Delivery"
* item[7].type = #group

* item[7].item[0].linkId = "data-delivery.data-control"
* item[7].item[0].text = "Data Control"
* item[7].item[0].type = #text
* item[7].item[0].required = false
* item[7].item[0].initial.valueString = "Data are crew member controlled. The crewmember is the designated recipient of the data and sharing this information is at his/her discretion."

* item[7].item[1].linkId = "data-delivery.emr-entry"
* item[7].item[1].text = "EMR Entry Made"
* item[7].item[1].type = #boolean
* item[7].item[1].required = true

* item[7].item[2].linkId = "data-delivery.emr-entry-notes"
* item[7].item[2].text = "EMR Entry Notes"
* item[7].item[2].type = #text
* item[7].item[2].required = false
* item[7].item[2].initial.valueString = "Entries will be made in the EMR for each event showing completion of the MEDB requirement and stating if any aeromedical concerns were identified."

* item[7].item[3].linkId = "data-delivery.archive"
* item[7].item[3].text = "Data Archive System"
* item[7].item[3].type = #choice
* item[7].item[3].required = true
* item[7].item[3].answerOption[0].valueCoding = $nasa-archive#emr "Electronic Medical Record"

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
// MEDB 7.4 Crew Dynamics Assessment Questionnaire
// ============================================================================
// Source: MEDB 7.4 Crew Dynamics Assessment
// Purpose: Monitor crew cohesion, interpersonal dynamics, and team performance
// ============================================================================

Instance: MEDB74CrewDynamicsQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 7.4 Crew Dynamics Assessment"
Description: "NASA Medical Requirements Integration Document for crew dynamics assessment. Evaluates crew cohesion, interpersonal relationships, team functioning, and conflict management throughout mission phases."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-7-4-crew-dynamics"
* version = "1.0.0"
* name = "MEDB74CrewDynamics"
* status = #active
* date = "2024-01-15"
* publisher = "NASA Behavioral Health and Performance"
* contact.name = "Behavioral Health and Performance"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Monitor crew cohesion, interpersonal dynamics, and team performance throughout mission phases. Identify potential issues and support interventions."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs)"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this assessment"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 7.4 Crew Dynamics Assessment"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#behavioral "Behavior and Performance"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#behavioral "Behavior and Performance"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "Monitor crew cohesion, interpersonal dynamics, and team performance throughout mission phases."

* item[0].item[4].linkId = "overview.flight-duration"
* item[0].item[4].text = "Flight Duration"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = ">= 30 days"

* item[0].item[5].linkId = "overview.crew-members-required"
* item[0].item[5].text = "Number and Type of Crew Members Required"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "All crew members"

// GROUP 2: PREFLIGHT TRAINING
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.crew-cohesion"
* item[1].item[0].text = "Crew Cohesion Training"
* item[1].item[0].type = #group

* item[1].item[0].item[0].linkId = "preflight-training.crew-cohesion.description"
* item[1].item[0].item[0].text = "Training Description"
* item[1].item[0].item[0].type = #text
* item[1].item[0].item[0].initial.valueString = "Team building activities, conflict resolution training, and cross-cultural communication skills"

* item[1].item[0].item[1].linkId = "preflight-training.crew-cohesion.duration"
* item[1].item[0].item[1].text = "Duration (hours)"
* item[1].item[0].item[1].type = #integer
* item[1].item[0].item[1].initial.valueInteger = 16

* item[1].item[0].item[2].linkId = "preflight-training.crew-cohesion.completed"
* item[1].item[0].item[2].text = "Training Completed"
* item[1].item[0].item[2].type = #boolean
* item[1].item[0].item[2].required = true

* item[1].item[0].item[3].linkId = "preflight-training.crew-cohesion.date"
* item[1].item[0].item[3].text = "Completion Date"
* item[1].item[0].item[3].type = #date

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.baseline-assessment"
* item[2].item[0].text = "Crew Dynamics Baseline Assessment"
* item[2].item[0].type = #group

* item[2].item[0].item[0].linkId = "preflight-activities.baseline-assessment.schedule"
* item[2].item[0].item[0].text = "Schedule"
* item[2].item[0].item[0].type = #string
* item[2].item[0].item[0].initial.valueString = "L-180 to L-90 days"

* item[2].item[0].item[1].linkId = "preflight-activities.baseline-assessment.duration"
* item[2].item[0].item[1].text = "Duration (minutes)"
* item[2].item[0].item[1].type = #integer
* item[2].item[0].item[1].initial.valueInteger = 90

* item[2].item[0].item[2].linkId = "preflight-activities.baseline-assessment.completed"
* item[2].item[0].item[2].text = "Assessment Completed"
* item[2].item[0].item[2].type = #boolean
* item[2].item[0].item[2].required = true

* item[2].item[0].item[3].linkId = "preflight-activities.baseline-assessment.date"
* item[2].item[0].item[3].text = "Completion Date"
* item[2].item[0].item[3].type = #date

// GROUP 4: IN-FLIGHT ACTIVITIES
* item[3].linkId = "inflight-activities"
* item[3].text = "In-Flight Activities"
* item[3].type = #group

* item[3].item[0].linkId = "inflight-activities.periodic-assessment"
* item[3].item[0].text = "Periodic Crew Dynamics Assessment"
* item[3].item[0].type = #group

* item[3].item[0].item[0].linkId = "inflight-activities.periodic-assessment.frequency"
* item[3].item[0].item[0].text = "Assessment Frequency"
* item[3].item[0].item[0].type = #string
* item[3].item[0].item[0].initial.valueString = "Monthly during mission"

* item[3].item[0].item[1].linkId = "inflight-activities.periodic-assessment.duration"
* item[3].item[0].item[1].text = "Duration (minutes)"
* item[3].item[0].item[1].type = #integer
* item[3].item[0].item[1].initial.valueInteger = 30

* item[3].item[0].item[2].linkId = "inflight-activities.periodic-assessment.date"
* item[3].item[0].item[2].text = "Assessment Date"
* item[3].item[0].item[2].type = #date

* item[3].item[0].item[3].linkId = "inflight-activities.periodic-assessment.completed"
* item[3].item[0].item[3].text = "Assessment Completed"
* item[3].item[0].item[3].type = #boolean

// GROUP 5: CREW DYNAMICS METRICS
* item[4].linkId = "crew-dynamics-metrics"
* item[4].text = "Crew Dynamics Metrics"
* item[4].type = #group

* item[4].item[0].linkId = "crew-dynamics-metrics.cohesion-rating"
* item[4].item[0].text = "Overall Crew Cohesion (1-10)"
* item[4].item[0].type = #integer
* item[4].item[0].required = true
* item[4].item[0].code = $loinc#93038-4 "Team performance assessment"

* item[4].item[1].linkId = "crew-dynamics-metrics.communication-quality"
* item[4].item[1].text = "Communication Quality"
* item[4].item[1].type = #choice
* item[4].item[1].required = true
* item[4].item[1].answerOption[0].valueString = "Excellent"
* item[4].item[1].answerOption[1].valueString = "Good"
* item[4].item[1].answerOption[2].valueString = "Adequate"
* item[4].item[1].answerOption[3].valueString = "Needs Improvement"
* item[4].item[1].answerOption[4].valueString = "Poor"

* item[4].item[2].linkId = "crew-dynamics-metrics.conflict-level"
* item[4].item[2].text = "Interpersonal Conflict Level"
* item[4].item[2].type = #choice
* item[4].item[2].required = true
* item[4].item[2].answerOption[0].valueString = "None"
* item[4].item[2].answerOption[1].valueString = "Minor - Managed"
* item[4].item[2].answerOption[2].valueString = "Moderate - Requires Attention"
* item[4].item[2].answerOption[3].valueString = "Significant - Intervention Needed"

* item[4].item[3].linkId = "crew-dynamics-metrics.leadership-effectiveness"
* item[4].item[3].text = "Leadership Effectiveness"
* item[4].item[3].type = #choice
* item[4].item[3].required = true
* item[4].item[3].answerOption[0].valueString = "Highly Effective"
* item[4].item[3].answerOption[1].valueString = "Effective"
* item[4].item[3].answerOption[2].valueString = "Adequate"
* item[4].item[3].answerOption[3].valueString = "Needs Support"

* item[4].item[4].linkId = "crew-dynamics-metrics.workload-distribution"
* item[4].item[4].text = "Workload Distribution Perception"
* item[4].item[4].type = #choice
* item[4].item[4].required = true
* item[4].item[4].answerOption[0].valueString = "Fair and Balanced"
* item[4].item[4].answerOption[1].valueString = "Mostly Fair"
* item[4].item[4].answerOption[2].valueString = "Somewhat Uneven"
* item[4].item[4].answerOption[3].valueString = "Unfair/Problematic"

* item[4].item[5].linkId = "crew-dynamics-metrics.cultural-integration"
* item[4].item[5].text = "Cross-Cultural Integration"
* item[4].item[5].type = #choice
* item[4].item[5].required = false
* item[4].item[5].answerOption[0].valueString = "Excellent"
* item[4].item[5].answerOption[1].valueString = "Good"
* item[4].item[5].answerOption[2].valueString = "Adequate"
* item[4].item[5].answerOption[3].valueString = "Challenging"

* item[4].item[6].linkId = "crew-dynamics-metrics.morale"
* item[4].item[6].text = "Crew Morale"
* item[4].item[6].type = #choice
* item[4].item[6].required = true
* item[4].item[6].answerOption[0].valueString = "High"
* item[4].item[6].answerOption[1].valueString = "Good"
* item[4].item[6].answerOption[2].valueString = "Moderate"
* item[4].item[6].answerOption[3].valueString = "Low"

* item[4].item[7].linkId = "crew-dynamics-metrics.concerns"
* item[4].item[7].text = "Specific Concerns or Issues"
* item[4].item[7].type = #text
* item[4].item[7].required = false

* item[4].item[8].linkId = "crew-dynamics-metrics.intervention-needed"
* item[4].item[8].text = "BHP Intervention Recommended"
* item[4].item[8].type = #boolean
* item[4].item[8].required = true

// GROUP 6: POSTFLIGHT ACTIVITIES
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.debrief"
* item[5].item[0].text = "Crew Dynamics Debrief"
* item[5].item[0].type = #group

* item[5].item[0].item[0].linkId = "postflight-activities.debrief.schedule"
* item[5].item[0].item[0].text = "Schedule"
* item[5].item[0].item[0].type = #string
* item[5].item[0].item[0].initial.valueString = "R+30 to R+60 days"

* item[5].item[0].item[1].linkId = "postflight-activities.debrief.completed"
* item[5].item[0].item[1].text = "Debrief Completed"
* item[5].item[0].item[1].type = #boolean
* item[5].item[0].item[1].required = true

* item[5].item[0].item[2].linkId = "postflight-activities.debrief.date"
* item[5].item[0].item[2].text = "Completion Date"
* item[5].item[0].item[2].type = #date

// GROUP 7: DATA DELIVERY
* item[6].linkId = "data-delivery"
* item[6].text = "Data Delivery"
* item[6].type = #group

* item[6].item[0].linkId = "data-delivery.archive"
* item[6].item[0].text = "Data Archive System"
* item[6].item[0].type = #choice
* item[6].item[0].required = true
* item[6].item[0].answerOption[0].valueCoding = $nasa-archive#emr "Electronic Medical Record"
* item[6].item[0].answerOption[1].valueCoding = $nasa-archive#mmis "Medical Mission Information System"

* item[6].item[1].linkId = "data-delivery.confidentiality"
* item[6].item[1].text = "Confidentiality Level"
* item[6].item[1].type = #string
* item[6].item[1].initial.valueString = "Crew member controlled - sharing at individual discretion"


// ============================================================================
// MEDB 7.5 Family Support Evaluation Questionnaire
// ============================================================================
// Source: MEDB 7.5 Family Support Evaluation
// Purpose: Evaluate family support systems and address astronaut family needs
// ============================================================================

Instance: MEDB75FamilySupportQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 7.5 Family Support Evaluation"
Description: "NASA Medical Requirements Integration Document for family support evaluation. Assesses family support systems, identifies needs, and coordinates support services throughout mission phases."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-7-5-family-support"
* version = "1.0.0"
* name = "MEDB75FamilySupport"
* status = #active
* date = "2024-01-15"
* publisher = "NASA Behavioral Health and Performance"
* contact.name = "Behavioral Health and Performance"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Evaluate astronaut family support systems, identify needs, and coordinate appropriate support services before, during, and after spaceflight."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs)"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this evaluation"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 7.5 Family Support Evaluation"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#bhp "Behavioral Health and Performance"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#behavioral "Behavior and Performance"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#behavioral "Behavior and Performance"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "Evaluate family support systems, identify needs, and coordinate support services throughout mission phases."

* item[0].item[4].linkId = "overview.flight-duration"
* item[0].item[4].text = "Flight Duration"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = ">= 30 days"

* item[0].item[5].linkId = "overview.crew-members-required"
* item[0].item[5].text = "Number and Type of Crew Members Required"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "All long-duration crew members"

// GROUP 2: PREFLIGHT TRAINING
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.family-orientation"
* item[1].item[0].text = "Family Orientation Briefing"
* item[1].item[0].type = #group

* item[1].item[0].item[0].linkId = "preflight-training.family-orientation.description"
* item[1].item[0].item[0].text = "Training Description"
* item[1].item[0].item[0].type = #text
* item[1].item[0].item[0].initial.valueString = "Orientation for family members on mission timeline, communication options, support resources, and emergency procedures"

* item[1].item[0].item[1].linkId = "preflight-training.family-orientation.duration"
* item[1].item[0].item[1].text = "Duration (hours)"
* item[1].item[0].item[1].type = #integer
* item[1].item[0].item[1].initial.valueInteger = 4

* item[1].item[0].item[2].linkId = "preflight-training.family-orientation.completed"
* item[1].item[0].item[2].text = "Orientation Completed"
* item[1].item[0].item[2].type = #boolean
* item[1].item[0].item[2].required = true

* item[1].item[0].item[3].linkId = "preflight-training.family-orientation.date"
* item[1].item[0].item[3].text = "Completion Date"
* item[1].item[0].item[3].type = #date

* item[1].item[0].item[4].linkId = "preflight-training.family-orientation.attendees"
* item[1].item[0].item[4].text = "Family Members Attending"
* item[1].item[0].item[4].type = #integer

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.family-assessment"
* item[2].item[0].text = "Family Support Assessment"
* item[2].item[0].type = #group

* item[2].item[0].item[0].linkId = "preflight-activities.family-assessment.schedule"
* item[2].item[0].item[0].text = "Schedule"
* item[2].item[0].item[0].type = #string
* item[2].item[0].item[0].initial.valueString = "L-180 to L-90 days"

* item[2].item[0].item[1].linkId = "preflight-activities.family-assessment.duration"
* item[2].item[0].item[1].text = "Duration (minutes)"
* item[2].item[0].item[1].type = #integer
* item[2].item[0].item[1].initial.valueInteger = 60

* item[2].item[0].item[2].linkId = "preflight-activities.family-assessment.completed"
* item[2].item[0].item[2].text = "Assessment Completed"
* item[2].item[0].item[2].type = #boolean
* item[2].item[0].item[2].required = true

* item[2].item[0].item[3].linkId = "preflight-activities.family-assessment.date"
* item[2].item[0].item[3].text = "Completion Date"
* item[2].item[0].item[3].type = #date

// GROUP 4: FAMILY SUPPORT METRICS
* item[3].linkId = "family-support-metrics"
* item[3].text = "Family Support Metrics"
* item[3].type = #group

* item[3].item[0].linkId = "family-support-metrics.support-system"
* item[3].item[0].text = "Family Support System Strength"
* item[3].item[0].type = #choice
* item[3].item[0].required = true
* item[3].item[0].answerOption[0].valueString = "Strong - extensive support network"
* item[3].item[0].answerOption[1].valueString = "Adequate - sufficient support available"
* item[3].item[0].answerOption[2].valueString = "Limited - some gaps in support"
* item[3].item[0].answerOption[3].valueString = "Insufficient - significant support needs"

* item[3].item[1].linkId = "family-support-metrics.communication-plan"
* item[3].item[1].text = "Communication Plan Established"
* item[3].item[1].type = #boolean
* item[3].item[1].required = true

* item[3].item[2].linkId = "family-support-metrics.communication-frequency"
* item[3].item[2].text = "Planned Communication Frequency"
* item[3].item[2].type = #choice
* item[3].item[2].required = true
* item[3].item[2].answerOption[0].valueString = "Daily"
* item[3].item[2].answerOption[1].valueString = "Several times per week"
* item[3].item[2].answerOption[2].valueString = "Weekly"
* item[3].item[2].answerOption[3].valueString = "As available"

* item[3].item[3].linkId = "family-support-metrics.dependent-care"
* item[3].item[3].text = "Dependent Care Arrangements"
* item[3].item[3].type = #choice
* item[3].item[3].required = true
* item[3].item[3].answerOption[0].valueString = "No dependents"
* item[3].item[3].answerOption[1].valueString = "Arrangements finalized"
* item[3].item[3].answerOption[2].valueString = "Arrangements in progress"
* item[3].item[3].answerOption[3].valueString = "Assistance needed"

* item[3].item[4].linkId = "family-support-metrics.financial-preparedness"
* item[3].item[4].text = "Financial Preparedness"
* item[3].item[4].type = #choice
* item[3].item[4].required = true
* item[3].item[4].answerOption[0].valueString = "Fully prepared"
* item[3].item[4].answerOption[1].valueString = "Adequately prepared"
* item[3].item[4].answerOption[2].valueString = "Some concerns"
* item[3].item[4].answerOption[3].valueString = "Assistance needed"

* item[3].item[5].linkId = "family-support-metrics.emergency-contacts"
* item[3].item[5].text = "Emergency Contacts Documented"
* item[3].item[5].type = #boolean
* item[3].item[5].required = true

* item[3].item[6].linkId = "family-support-metrics.family-concerns"
* item[3].item[6].text = "Family Concerns Identified"
* item[3].item[6].type = #text
* item[3].item[6].required = false

* item[3].item[7].linkId = "family-support-metrics.bhp-support-needed"
* item[3].item[7].text = "BHP Family Support Services Needed"
* item[3].item[7].type = #boolean
* item[3].item[7].required = true

// GROUP 5: IN-FLIGHT ACTIVITIES
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.family-contact"
* item[4].item[0].text = "Family Contact Support"
* item[4].item[0].type = #group

* item[4].item[0].item[0].linkId = "inflight-activities.family-contact.frequency"
* item[4].item[0].item[0].text = "Check-in Frequency"
* item[4].item[0].item[0].type = #string
* item[4].item[0].item[0].initial.valueString = "Monthly or as needed"

* item[4].item[0].item[1].linkId = "inflight-activities.family-contact.issues-identified"
* item[4].item[0].item[1].text = "Family Issues Identified During Mission"
* item[4].item[0].item[1].type = #boolean
* item[4].item[0].item[1].required = false

* item[4].item[0].item[2].linkId = "inflight-activities.family-contact.issues-details"
* item[4].item[0].item[2].text = "Issue Details"
* item[4].item[0].item[2].type = #text
* item[4].item[0].item[2].enableWhen.question = "inflight-activities.family-contact.issues-identified"
* item[4].item[0].item[2].enableWhen.operator = #=
* item[4].item[0].item[2].enableWhen.answerBoolean = true

* item[4].item[0].item[3].linkId = "inflight-activities.family-contact.intervention-provided"
* item[4].item[0].item[3].text = "Intervention Provided"
* item[4].item[0].item[3].type = #boolean
* item[4].item[0].item[3].required = false

// GROUP 6: POSTFLIGHT ACTIVITIES
* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.reunion-support"
* item[5].item[0].text = "Family Reunion Support"
* item[5].item[0].type = #group

* item[5].item[0].item[0].linkId = "postflight-activities.reunion-support.schedule"
* item[5].item[0].item[0].text = "Schedule"
* item[5].item[0].item[0].type = #string
* item[5].item[0].item[0].initial.valueString = "R+0 to R+30 days"

* item[5].item[0].item[1].linkId = "postflight-activities.reunion-support.completed"
* item[5].item[0].item[1].text = "Support Completed"
* item[5].item[0].item[1].type = #boolean
* item[5].item[0].item[1].required = true

* item[5].item[1].linkId = "postflight-activities.reintegration"
* item[5].item[1].text = "Family Reintegration Assessment"
* item[5].item[1].type = #group

* item[5].item[1].item[0].linkId = "postflight-activities.reintegration.schedule"
* item[5].item[1].item[0].text = "Schedule"
* item[5].item[1].item[0].type = #string
* item[5].item[1].item[0].initial.valueString = "R+30 to R+90 days"

* item[5].item[1].item[1].linkId = "postflight-activities.reintegration.completed"
* item[5].item[1].item[1].text = "Assessment Completed"
* item[5].item[1].item[1].type = #boolean
* item[5].item[1].item[1].required = true

* item[5].item[1].item[2].linkId = "postflight-activities.reintegration.status"
* item[5].item[1].item[2].text = "Reintegration Status"
* item[5].item[1].item[2].type = #choice
* item[5].item[1].item[2].answerOption[0].valueString = "Successful - no concerns"
* item[5].item[1].item[2].answerOption[1].valueString = "Progressing well"
* item[5].item[1].item[2].answerOption[2].valueString = "Some challenges - support provided"
* item[5].item[1].item[2].answerOption[3].valueString = "Significant challenges - ongoing support"

// GROUP 7: DATA DELIVERY
* item[6].linkId = "data-delivery"
* item[6].text = "Data Delivery"
* item[6].type = #group

* item[6].item[0].linkId = "data-delivery.archive"
* item[6].item[0].text = "Data Archive System"
* item[6].item[0].type = #choice
* item[6].item[0].required = true
* item[6].item[0].answerOption[0].valueCoding = $nasa-archive#emr "Electronic Medical Record"

* item[6].item[1].linkId = "data-delivery.confidentiality"
* item[6].item[1].text = "Confidentiality Level"
* item[6].item[1].type = #string
* item[6].item[1].initial.valueString = "Crew member and family controlled"
