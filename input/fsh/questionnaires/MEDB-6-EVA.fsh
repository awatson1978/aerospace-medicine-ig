// ============================================================================
// MEDB 6.x EVA Medical Requirements Questionnaires
// ============================================================================
// This file contains questionnaires for EVA (Extravehicular Activity) medical requirements
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
// MEDB 6.1 EVA Medical Requirements Questionnaire
// ============================================================================
// Source: MEDB 6.1 EVA Medical Requirements
// Purpose: Document EVA medical clearance and health monitoring
// ============================================================================

Instance: MEDB61EVAMedicalRequirementsQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 6.1 EVA Medical Requirements"
Description: "NASA Medical Requirements Integration Document for EVA medical requirements. Documents medical clearance, prebreathe protocol, and health monitoring for extravehicular activities."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-6-1-eva-medical"
* version = "1.0.0"
* name = "MEDB61EVAMedical"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "EVA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To document medical requirements for EVA including crew certification, prebreathe protocol compliance, and post-EVA health assessment."
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
* item[0].item[0].initial.valueString = "MEDB 6.1 EVA Medical Requirements"

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
* item[0].item[2].initial.valueCoding = $nasa-discipline#eva-medical "EVA Medical"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#eva-medical "EVA Medical"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To ensure crew medical fitness for EVA, document prebreathe protocol compliance, and monitor crew health during and after EVA operations."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Medical clearance, prebreathe compliance, vitals during EVA, DCS symptoms, post-EVA assessment"

// GROUP 2: PREFLIGHT TRAINING
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.description"
* item[1].item[0].text = "Training Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "EVA medical training including DCS recognition, emergency procedures, and suit operations from medical perspective."

* item[1].item[1].linkId = "preflight-training.nbl-runs"
* item[1].item[1].text = "NBL Training Runs Completed"
* item[1].item[1].type = #integer

* item[1].item[2].linkId = "preflight-training.eva-certification"
* item[1].item[2].text = "EVA Medical Certification"
* item[1].item[2].type = #boolean

* item[1].item[3].linkId = "preflight-training.certification-date"
* item[1].item[3].text = "Certification Date"
* item[1].item[3].type = #date

// GROUP 3: PRE-EVA ACTIVITIES
* item[2].linkId = "pre-eva-activities"
* item[2].text = "Pre-EVA Activities"
* item[2].type = #group

* item[2].item[0].linkId = "pre-eva-activities.eva-number"
* item[2].item[0].text = "EVA Number"
* item[2].item[0].type = #string

* item[2].item[1].linkId = "pre-eva-activities.planned-date"
* item[2].item[1].text = "Planned EVA Date"
* item[2].item[1].type = #date

* item[2].item[2].linkId = "pre-eva-activities.medical-clearance"
* item[2].item[2].text = "Flight Surgeon Medical Clearance"
* item[2].item[2].type = #boolean

* item[2].item[3].linkId = "pre-eva-activities.clearance-date"
* item[2].item[3].text = "Clearance Date/Time"
* item[2].item[3].type = #dateTime

* item[2].item[4].linkId = "pre-eva-activities.prebreathe-protocol"
* item[2].item[4].text = "Prebreathe Protocol"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueString = "Campout (overnight in airlock)"
* item[2].item[4].answerOption[1].valueString = "In-suit Light Exercise (ISLE)"
* item[2].item[4].answerOption[2].valueString = "Exercise Prebreathe Protocol"

* item[2].item[5].linkId = "pre-eva-activities.prebreathe-start"
* item[2].item[5].text = "Prebreathe Start Time (GMT)"
* item[2].item[5].type = #time

* item[2].item[6].linkId = "pre-eva-activities.prebreathe-duration"
* item[2].item[6].text = "Prebreathe Duration (minutes)"
* item[2].item[6].type = #integer

* item[2].item[7].linkId = "pre-eva-activities.prebreathe-complete"
* item[2].item[7].text = "Prebreathe Protocol Completed"
* item[2].item[7].type = #boolean

* item[2].item[8].linkId = "pre-eva-activities.suit-donning-complete"
* item[2].item[8].text = "Suit Donning Complete"
* item[2].item[8].type = #boolean

// GROUP 4: DURING EVA
* item[3].linkId = "during-eva"
* item[3].text = "During EVA Monitoring"
* item[3].type = #group

* item[3].item[0].linkId = "during-eva.eva-start-time"
* item[3].item[0].text = "EVA Start Time (Airlock Depress)"
* item[3].item[0].type = #dateTime

* item[3].item[1].linkId = "during-eva.eva-end-time"
* item[3].item[1].text = "EVA End Time (Airlock Repress)"
* item[3].item[1].type = #dateTime

* item[3].item[2].linkId = "during-eva.eva-duration"
* item[3].item[2].text = "EVA Duration (hours:minutes)"
* item[3].item[2].type = #string

* item[3].item[3].linkId = "during-eva.metabolic-rate-avg"
* item[3].item[3].text = "Average Metabolic Rate (BTU/hr)"
* item[3].item[3].type = #decimal

* item[3].item[4].linkId = "during-eva.water-consumed"
* item[3].item[4].text = "Water Consumed (oz)"
* item[3].item[4].type = #decimal

* item[3].item[5].linkId = "during-eva.dcs-symptoms"
* item[3].item[5].text = "DCS Symptoms Reported During EVA"
* item[3].item[5].type = #boolean

* item[3].item[6].linkId = "during-eva.dcs-symptoms-description"
* item[3].item[6].text = "DCS Symptoms Description"
* item[3].item[6].type = #text
* item[3].item[6].enableWhen.question = "during-eva.dcs-symptoms"
* item[3].item[6].enableWhen.operator = #=
* item[3].item[6].enableWhen.answerBoolean = true

* item[3].item[7].linkId = "during-eva.medical-issues"
* item[3].item[7].text = "Other Medical Issues During EVA"
* item[3].item[7].type = #boolean

* item[3].item[8].linkId = "during-eva.issues-description"
* item[3].item[8].text = "Medical Issues Description"
* item[3].item[8].type = #text
* item[3].item[8].enableWhen.question = "during-eva.medical-issues"
* item[3].item[8].enableWhen.operator = #=
* item[3].item[8].enableWhen.answerBoolean = true

// GROUP 5: POST-EVA ASSESSMENT
* item[4].linkId = "post-eva-assessment"
* item[4].text = "Post-EVA Medical Assessment"
* item[4].type = #group

* item[4].item[0].linkId = "post-eva-assessment.assessment-time"
* item[4].item[0].text = "Post-EVA Assessment Time"
* item[4].item[0].type = #dateTime

* item[4].item[1].linkId = "post-eva-assessment.general-condition"
* item[4].item[1].text = "General Condition"
* item[4].item[1].type = #choice
* item[4].item[1].answerOption[0].valueString = "Good - no issues"
* item[4].item[1].answerOption[1].valueString = "Fatigued but well"
* item[4].item[1].answerOption[2].valueString = "Minor discomfort"
* item[4].item[1].answerOption[3].valueString = "Requires medical attention"

* item[4].item[2].linkId = "post-eva-assessment.dcs-symptoms-post"
* item[4].item[2].text = "DCS Symptoms Post-EVA"
* item[4].item[2].type = #boolean

* item[4].item[3].linkId = "post-eva-assessment.joint-pain"
* item[4].item[3].text = "Joint/Limb Pain"
* item[4].item[3].type = #boolean

* item[4].item[4].linkId = "post-eva-assessment.neurological-symptoms"
* item[4].item[4].text = "Neurological Symptoms"
* item[4].item[4].type = #boolean

* item[4].item[5].linkId = "post-eva-assessment.skin-issues"
* item[4].item[5].text = "Skin Issues (blisters, abrasions)"
* item[4].item[5].type = #boolean

* item[4].item[6].linkId = "post-eva-assessment.hand-issues"
* item[4].item[6].text = "Hand/Finger Issues"
* item[4].item[6].type = #boolean

* item[4].item[7].linkId = "post-eva-assessment.suit-fit-issues"
* item[4].item[7].text = "Suit Fit Issues Noted"
* item[4].item[7].type = #boolean

* item[4].item[8].linkId = "post-eva-assessment.fluid-intake"
* item[4].item[8].text = "Post-EVA Fluid Intake Adequate"
* item[4].item[8].type = #boolean

* item[4].item[9].linkId = "post-eva-assessment.cleared-for-next-eva"
* item[4].item[9].text = "Cleared for Next EVA (if planned)"
* item[4].item[9].type = #boolean

* item[4].item[10].linkId = "post-eva-assessment.notes"
* item[4].item[10].text = "Post-EVA Medical Notes"
* item[4].item[10].type = #text

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
// MR087S EVA Prebreathe Protocol Questionnaire
// ============================================================================
// Source: MR087S EVA Prebreathe Protocol
// Purpose: Document prebreathe protocol execution for DCS prevention
// ============================================================================

Instance: MR087SEVAPrebreathQuestionnaire
InstanceOf: Questionnaire
Title: "MR087S EVA Prebreathe Protocol"
Description: "NASA Medical Requirements Integration Document for EVA prebreathe protocol. Tracks oxygen prebreathe procedures to prevent decompression sickness."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr087s-eva-prebreathe"
* version = "1.0.0"
* name = "MR087SEVAPrebreathe"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To document execution of EVA prebreathe protocol for decompression sickness prevention."
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
* item[0].item[0].initial.valueString = "MR087S EVA Prebreathe Protocol"

* item[0].item[1].linkId = "overview.purpose"
* item[0].item[1].text = "Purpose/Objectives"
* item[0].item[1].type = #text
* item[0].item[1].initial.valueString = "To denitrogenate crewmembers prior to EVA to reduce risk of decompression sickness (DCS) when transitioning from cabin pressure to suit pressure."

// GROUP 2: PREBREATHE EXECUTION
* item[1].linkId = "prebreathe-execution"
* item[1].text = "Prebreathe Protocol Execution"
* item[1].type = #group

* item[1].item[0].linkId = "prebreathe-execution.eva-number"
* item[1].item[0].text = "EVA Number"
* item[1].item[0].type = #string

* item[1].item[1].linkId = "prebreathe-execution.protocol-type"
* item[1].item[1].text = "Prebreathe Protocol Type"
* item[1].item[1].type = #choice
* item[1].item[1].answerOption[0].valueString = "Campout Protocol"
* item[1].item[1].answerOption[1].valueString = "ISLE Protocol"
* item[1].item[1].answerOption[2].valueString = "Exercise Prebreathe Protocol"
* item[1].item[1].answerOption[3].valueString = "Mask Prebreathe"

* item[1].item[2].linkId = "prebreathe-execution.cabin-pressure-start"
* item[1].item[2].text = "Cabin Pressure at Start (psia)"
* item[1].item[2].type = #decimal

* item[1].item[3].linkId = "prebreathe-execution.start-time"
* item[1].item[3].text = "Prebreathe Start Time (GMT)"
* item[1].item[3].type = #dateTime

* item[1].item[4].linkId = "prebreathe-execution.end-time"
* item[1].item[4].text = "Prebreathe End Time (GMT)"
* item[1].item[4].type = #dateTime

* item[1].item[5].linkId = "prebreathe-execution.total-duration"
* item[1].item[5].text = "Total Prebreathe Duration (minutes)"
* item[1].item[5].type = #integer

* item[1].item[6].linkId = "prebreathe-execution.oxygen-source"
* item[1].item[6].text = "Oxygen Source"
* item[1].item[6].type = #choice
* item[1].item[6].answerOption[0].valueString = "EMU (in-suit)"
* item[1].item[6].answerOption[1].valueString = "Mask with station O2"
* item[1].item[6].answerOption[2].valueString = "Airlock/Crewlock"

* item[1].item[7].linkId = "prebreathe-execution.exercise-performed"
* item[1].item[7].text = "Exercise Performed During Prebreathe"
* item[1].item[7].type = #boolean

* item[1].item[8].linkId = "prebreathe-execution.interruptions"
* item[1].item[8].text = "Prebreathe Interruptions"
* item[1].item[8].type = #boolean

* item[1].item[9].linkId = "prebreathe-execution.interruption-duration"
* item[1].item[9].text = "Total Interruption Duration (minutes)"
* item[1].item[9].type = #integer
* item[1].item[9].enableWhen.question = "prebreathe-execution.interruptions"
* item[1].item[9].enableWhen.operator = #=
* item[1].item[9].enableWhen.answerBoolean = true

* item[1].item[10].linkId = "prebreathe-execution.protocol-complete"
* item[1].item[10].text = "Protocol Completed Successfully"
* item[1].item[10].type = #boolean

* item[1].item[11].linkId = "prebreathe-execution.flight-surgeon-approval"
* item[1].item[11].text = "Flight Surgeon Approval for EVA"
* item[1].item[11].type = #boolean

// GROUP 3: NOTES
* item[2].linkId = "notes"
* item[2].text = "Protocol Notes"
* item[2].type = #group

* item[2].item[0].linkId = "notes.deviations"
* item[2].item[0].text = "Protocol Deviations"
* item[2].item[0].type = #text

* item[2].item[1].linkId = "notes.symptoms"
* item[2].item[1].text = "Symptoms During Prebreathe"
* item[2].item[1].type = #text

// GROUP 4: DATA DELIVERY
* item[3].linkId = "data-delivery"
* item[3].text = "Data Delivery"
* item[3].type = #group

* item[3].item[0].linkId = "data-delivery.archive"
* item[3].item[0].text = "Data Archive System"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[3].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"
