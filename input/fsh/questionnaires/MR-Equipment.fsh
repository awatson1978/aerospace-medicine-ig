// ============================================================================
// MR Medical Equipment Questionnaires
// ============================================================================
// This file contains questionnaires for medical equipment and kit management
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
// MR036L Medical Kit Inventory Questionnaire
// ============================================================================
// Source: MR036L Medical Kit Inventory
// Purpose: Track medical kit contents and expiration dates
// ============================================================================

Instance: MR036LMedicalKitInventoryQuestionnaire
InstanceOf: Questionnaire
Title: "MR036L Medical Kit Inventory"
Description: "NASA Medical Requirements Integration Document for medical kit inventory management. Tracks medical supplies, equipment status, and expiration dates aboard ISS."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr036l-medical-kit-inventory"
* version = "1.0.0"
* name = "MR036LMedicalKitInventory"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To maintain accurate inventory of medical supplies and equipment aboard ISS, track expiration dates, and ensure adequate supplies for crew health."
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
* item[0].item[0].initial.valueString = "MR036L Medical Kit Inventory"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "To maintain accurate inventory of medical supplies, track expiration dates, and ensure crew has adequate medical resources."

// GROUP 2: INVENTORY CHECK
* item[1].linkId = "inventory-check"
* item[1].text = "Inventory Check Details"
* item[1].type = #group

* item[1].item[0].linkId = "inventory-check.date"
* item[1].item[0].text = "Inventory Date"
* item[1].item[0].type = #date

* item[1].item[1].linkId = "inventory-check.performed-by"
* item[1].item[1].text = "Performed By (CMO)"
* item[1].item[1].type = #string

* item[1].item[2].linkId = "inventory-check.kit-type"
* item[1].item[2].text = "Kit Type"
* item[1].item[2].type = #choice
* item[1].item[2].answerOption[0].valueString = "Crew Medical Restraint System (CMRS)"
* item[1].item[2].answerOption[1].valueString = "Ambulatory Medical Pack (AMP)"
* item[1].item[2].answerOption[2].valueString = "Crew Health Care System (CHeCS)"
* item[1].item[2].answerOption[3].valueString = "Advanced Life Support Pack (ALSP)"
* item[1].item[2].answerOption[4].valueString = "Dental Kit"
* item[1].item[2].answerOption[5].valueString = "Eye Kit"
* item[1].item[2].answerOption[6].valueString = "IV Kit"
* item[1].item[2].answerOption[7].valueString = "Minor Surgery Kit"

// GROUP 3: MEDICATIONS INVENTORY
* item[2].linkId = "medications"
* item[2].text = "Medications Inventory"
* item[2].type = #group

* item[2].item[0].linkId = "medications.antibiotics-adequate"
* item[2].item[0].text = "Antibiotics Adequate"
* item[2].item[0].type = #boolean

* item[2].item[1].linkId = "medications.pain-management-adequate"
* item[2].item[1].text = "Pain Management Adequate"
* item[2].item[1].type = #boolean

* item[2].item[2].linkId = "medications.cardiovascular-adequate"
* item[2].item[2].text = "Cardiovascular Medications Adequate"
* item[2].item[2].type = #boolean

* item[2].item[3].linkId = "medications.gi-medications-adequate"
* item[2].item[3].text = "GI Medications Adequate"
* item[2].item[3].type = #boolean

* item[2].item[4].linkId = "medications.allergy-medications-adequate"
* item[2].item[4].text = "Allergy/Respiratory Medications Adequate"
* item[2].item[4].type = #boolean

* item[2].item[5].linkId = "medications.eye-ear-medications-adequate"
* item[2].item[5].text = "Eye/Ear Medications Adequate"
* item[2].item[5].type = #boolean

* item[2].item[6].linkId = "medications.topicals-adequate"
* item[2].item[6].text = "Topical Medications Adequate"
* item[2].item[6].type = #boolean

* item[2].item[7].linkId = "medications.emergency-drugs-adequate"
* item[2].item[7].text = "Emergency Drugs Adequate"
* item[2].item[7].type = #boolean

* item[2].item[8].linkId = "medications.expired-items"
* item[2].item[8].text = "Expired Medications Found"
* item[2].item[8].type = #boolean

* item[2].item[9].linkId = "medications.expired-list"
* item[2].item[9].text = "List Expired Medications"
* item[2].item[9].type = #text
* item[2].item[9].enableWhen.question = "medications.expired-items"
* item[2].item[9].enableWhen.operator = #=
* item[2].item[9].enableWhen.answerBoolean = true

* item[2].item[10].linkId = "medications.soon-to-expire"
* item[2].item[10].text = "Medications Expiring Within 90 Days"
* item[2].item[10].type = #text

// GROUP 4: EQUIPMENT INVENTORY
* item[3].linkId = "equipment"
* item[3].text = "Equipment Inventory"
* item[3].type = #group

* item[3].item[0].linkId = "equipment.diagnostic-equipment-functional"
* item[3].item[0].text = "Diagnostic Equipment Functional"
* item[3].item[0].type = #boolean

* item[3].item[1].linkId = "equipment.defibrillator-status"
* item[3].item[1].text = "Defibrillator Status"
* item[3].item[1].type = #choice
* item[3].item[1].answerOption[0].valueString = "Functional - tested"
* item[3].item[1].answerOption[1].valueString = "Needs maintenance"
* item[3].item[1].answerOption[2].valueString = "Non-functional"
* item[3].item[1].answerOption[3].valueString = "N/A"

* item[3].item[2].linkId = "equipment.defibrillator-last-test"
* item[3].item[2].text = "Defibrillator Last Test Date"
* item[3].item[2].type = #date

* item[3].item[3].linkId = "equipment.iv-supplies-adequate"
* item[3].item[3].text = "IV Supplies Adequate"
* item[3].item[3].type = #boolean

* item[3].item[4].linkId = "equipment.bandages-adequate"
* item[3].item[4].text = "Bandages/Wound Care Adequate"
* item[3].item[4].type = #boolean

* item[3].item[5].linkId = "equipment.suture-supplies-adequate"
* item[3].item[5].text = "Suture Supplies Adequate"
* item[3].item[5].type = #boolean

* item[3].item[6].linkId = "equipment.splinting-adequate"
* item[3].item[6].text = "Splinting Materials Adequate"
* item[3].item[6].type = #boolean

* item[3].item[7].linkId = "equipment.airway-equipment-adequate"
* item[3].item[7].text = "Airway Equipment Adequate"
* item[3].item[7].type = #boolean

* item[3].item[8].linkId = "equipment.equipment-issues"
* item[3].item[8].text = "Equipment Issues Noted"
* item[3].item[8].type = #text

// GROUP 5: RESUPPLY NEEDS
* item[4].linkId = "resupply"
* item[4].text = "Resupply Requirements"
* item[4].type = #group

* item[4].item[0].linkId = "resupply.needed"
* item[4].item[0].text = "Resupply Required"
* item[4].item[0].type = #boolean

* item[4].item[1].linkId = "resupply.priority"
* item[4].item[1].text = "Resupply Priority"
* item[4].item[1].type = #choice
* item[4].item[1].answerOption[0].valueString = "Urgent - next available vehicle"
* item[4].item[1].answerOption[1].valueString = "High - within 60 days"
* item[4].item[1].answerOption[2].valueString = "Normal - next planned resupply"
* item[4].item[1].answerOption[3].valueString = "Low - can wait"
* item[4].item[1].enableWhen.question = "resupply.needed"
* item[4].item[1].enableWhen.operator = #=
* item[4].item[1].enableWhen.answerBoolean = true

* item[4].item[2].linkId = "resupply.items-list"
* item[4].item[2].text = "Items Needed for Resupply"
* item[4].item[2].type = #text
* item[4].item[2].enableWhen.question = "resupply.needed"
* item[4].item[2].enableWhen.operator = #=
* item[4].item[2].enableWhen.answerBoolean = true

// GROUP 6: SUMMARY
* item[5].linkId = "summary"
* item[5].text = "Inventory Summary"
* item[5].type = #group

* item[5].item[0].linkId = "summary.overall-status"
* item[5].item[0].text = "Overall Inventory Status"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueString = "Adequate - no action needed"
* item[5].item[0].answerOption[1].valueString = "Minor shortages - monitor"
* item[5].item[0].answerOption[2].valueString = "Significant gaps - resupply needed"
* item[5].item[0].answerOption[3].valueString = "Critical - immediate action required"

* item[5].item[1].linkId = "summary.notes"
* item[5].item[1].text = "Additional Notes"
* item[5].item[1].type = #text

// GROUP 7: DATA DELIVERY
* item[6].linkId = "data-delivery"
* item[6].text = "Data Delivery"
* item[6].type = #group

* item[6].item[0].linkId = "data-delivery.archive"
* item[6].item[0].text = "Data Archive System"
* item[6].item[0].type = #choice
* item[6].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[6].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MR026L Reconditioning Assessment Questionnaire
// ============================================================================
// Source: MR026L Postflight Reconditioning
// Purpose: Track crew reconditioning progress after spaceflight
// ============================================================================

Instance: MR026LReconditioningQuestionnaire
InstanceOf: Questionnaire
Title: "MR026L Reconditioning Assessment"
Description: "NASA Medical Requirements Integration Document for postflight reconditioning. Tracks crew recovery and rehabilitation progress after long-duration spaceflight."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr026l-reconditioning"
* version = "1.0.0"
* name = "MR026LReconditioning"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Exercise Physiology"
* contact.name = "Astronaut Strength, Conditioning, and Rehabilitation"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To document and track crew reconditioning progress after long-duration spaceflight, including physical rehabilitation and return to baseline function."
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
* item[0].item[0].initial.valueString = "MR026L Postflight Reconditioning"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#ascr "Astronaut Strength Conditioning and Rehabilitation"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#ascr "Astronaut Strength Conditioning and Rehabilitation"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#reconditioning "Reconditioning"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#reconditioning "Reconditioning"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].initial.valueString = "To guide and monitor crew physical reconditioning after long-duration spaceflight, with goal of returning to preflight functional capacity."

// GROUP 2: MISSION DETAILS
* item[1].linkId = "mission-details"
* item[1].text = "Mission Details"
* item[1].type = #group

* item[1].item[0].linkId = "mission-details.mission-duration"
* item[1].item[0].text = "Mission Duration (days)"
* item[1].item[0].type = #integer

* item[1].item[1].linkId = "mission-details.landing-date"
* item[1].item[1].text = "Landing Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "mission-details.reconditioning-start"
* item[1].item[2].text = "Reconditioning Start Date"
* item[1].item[2].type = #date

// GROUP 3: INITIAL ASSESSMENT (R+0 to R+3)
* item[2].linkId = "initial-assessment"
* item[2].text = "Initial Assessment (R+0 to R+3)"
* item[2].type = #group

* item[2].item[0].linkId = "initial-assessment.date"
* item[2].item[0].text = "Assessment Date"
* item[2].item[0].type = #date

* item[2].item[1].linkId = "initial-assessment.orthostatic-status"
* item[2].item[1].text = "Orthostatic Status"
* item[2].item[1].type = #choice
* item[2].item[1].answerOption[0].valueString = "No orthostatic intolerance"
* item[2].item[1].answerOption[1].valueString = "Mild orthostatic symptoms"
* item[2].item[1].answerOption[2].valueString = "Moderate orthostatic symptoms"
* item[2].item[1].answerOption[3].valueString = "Significant orthostatic intolerance"

* item[2].item[2].linkId = "initial-assessment.gait-stability"
* item[2].item[2].text = "Gait and Balance"
* item[2].item[2].type = #choice
* item[2].item[2].answerOption[0].valueString = "Normal"
* item[2].item[2].answerOption[1].valueString = "Mildly unsteady"
* item[2].item[2].answerOption[2].valueString = "Moderately unsteady"
* item[2].item[2].answerOption[3].valueString = "Significantly impaired"

* item[2].item[3].linkId = "initial-assessment.muscle-soreness"
* item[2].item[3].text = "Muscle Soreness/Pain"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueString = "None"
* item[2].item[3].answerOption[1].valueString = "Mild"
* item[2].item[3].answerOption[2].valueString = "Moderate"
* item[2].item[3].answerOption[3].valueString = "Severe"

* item[2].item[4].linkId = "initial-assessment.back-pain"
* item[2].item[4].text = "Back Pain Present"
* item[2].item[4].type = #boolean

* item[2].item[5].linkId = "initial-assessment.initial-plan"
* item[2].item[5].text = "Initial Reconditioning Plan"
* item[2].item[5].type = #text

// GROUP 4: WEEKLY PROGRESS
* item[3].linkId = "weekly-progress"
* item[3].text = "Weekly Progress Assessment"
* item[3].type = #group

* item[3].item[0].linkId = "weekly-progress.week-number"
* item[3].item[0].text = "Week Number (R+)"
* item[3].item[0].type = #integer

* item[3].item[1].linkId = "weekly-progress.date"
* item[3].item[1].text = "Assessment Date"
* item[3].item[1].type = #date

* item[3].item[2].linkId = "weekly-progress.sessions-completed"
* item[3].item[2].text = "Reconditioning Sessions Completed"
* item[3].item[2].type = #integer

* item[3].item[3].linkId = "weekly-progress.aerobic-capacity"
* item[3].item[3].text = "Aerobic Capacity Recovery (%)"
* item[3].item[3].type = #decimal

* item[3].item[4].linkId = "weekly-progress.strength-recovery"
* item[3].item[4].text = "Strength Recovery (%)"
* item[3].item[4].type = #decimal

* item[3].item[5].linkId = "weekly-progress.balance-status"
* item[3].item[5].text = "Balance/Vestibular Status"
* item[3].item[5].type = #choice
* item[3].item[5].answerOption[0].valueString = "Returned to normal"
* item[3].item[5].answerOption[1].valueString = "Improving"
* item[3].item[5].answerOption[2].valueString = "Stable"
* item[3].item[5].answerOption[3].valueString = "Requires intervention"

* item[3].item[6].linkId = "weekly-progress.concerns"
* item[3].item[6].text = "Concerns or Issues"
* item[3].item[6].type = #text

// GROUP 5: FINAL ASSESSMENT
* item[4].linkId = "final-assessment"
* item[4].text = "Final Reconditioning Assessment"
* item[4].type = #group

* item[4].item[0].linkId = "final-assessment.date"
* item[4].item[0].text = "Final Assessment Date"
* item[4].item[0].type = #date

* item[4].item[1].linkId = "final-assessment.total-duration"
* item[4].item[1].text = "Total Reconditioning Duration (days)"
* item[4].item[1].type = #integer

* item[4].item[2].linkId = "final-assessment.aerobic-baseline"
* item[4].item[2].text = "Return to Aerobic Baseline"
* item[4].item[2].type = #boolean

* item[4].item[3].linkId = "final-assessment.strength-baseline"
* item[4].item[3].text = "Return to Strength Baseline"
* item[4].item[3].type = #boolean

* item[4].item[4].linkId = "final-assessment.full-duty-cleared"
* item[4].item[4].text = "Cleared for Full Duty"
* item[4].item[4].type = #boolean

* item[4].item[5].linkId = "final-assessment.clearance-date"
* item[4].item[5].text = "Clearance Date"
* item[4].item[5].type = #date

* item[4].item[6].linkId = "final-assessment.ongoing-issues"
* item[4].item[6].text = "Any Ongoing Issues"
* item[4].item[6].type = #text

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
// MR050L Pharmaceutical Management Questionnaire
// ============================================================================
// Source: MR050L Pharmaceutical Management
// Purpose: Track medications, storage conditions, and dispensing
// ============================================================================

Instance: MR050LPharmaceuticalManagementQuestionnaire
InstanceOf: Questionnaire
Title: "MR050L Pharmaceutical Management"
Description: "NASA Medical Requirements Integration Document for pharmaceutical management aboard ISS. Tracks medication inventory, storage conditions, dispensing, and stability monitoring."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr050l-pharmaceutical-management"
* version = "1.0.0"
* name = "MR050LPharmaceuticalManagement"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Manage pharmaceutical inventory, track storage conditions, monitor medication stability, and document dispensing aboard ISS."
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
* item[0].item[0].initial.valueString = "MR050L Pharmaceutical Management"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "Manage pharmaceutical inventory, storage conditions, and medication dispensing."

// GROUP 2: MEDICATION INVENTORY
* item[1].linkId = "medication-inventory"
* item[1].text = "Medication Inventory"
* item[1].type = #group

* item[1].item[0].linkId = "medication-inventory.check-date"
* item[1].item[0].text = "Inventory Check Date"
* item[1].item[0].type = #date
* item[1].item[0].required = true

* item[1].item[1].linkId = "medication-inventory.performed-by"
* item[1].item[1].text = "Performed By (CMO)"
* item[1].item[1].type = #string
* item[1].item[1].required = true

* item[1].item[2].linkId = "medication-inventory.total-medications"
* item[1].item[2].text = "Total Medications On Board"
* item[1].item[2].type = #integer

* item[1].item[3].linkId = "medication-inventory.controlled-count"
* item[1].item[3].text = "Controlled Substances Count"
* item[1].item[3].type = #integer

* item[1].item[4].linkId = "medication-inventory.controlled-verified"
* item[1].item[4].text = "Controlled Substances Verified"
* item[1].item[4].type = #boolean
* item[1].item[4].required = true

// GROUP 3: EXPIRATION TRACKING
* item[2].linkId = "expiration-tracking"
* item[2].text = "Expiration Date Tracking"
* item[2].type = #group

* item[2].item[0].linkId = "expiration-tracking.expiring-30"
* item[2].item[0].text = "Medications Expiring in 30 Days"
* item[2].item[0].type = #integer

* item[2].item[1].linkId = "expiration-tracking.expiring-90"
* item[2].item[1].text = "Medications Expiring in 90 Days"
* item[2].item[1].type = #integer

* item[2].item[2].linkId = "expiration-tracking.expired-removed"
* item[2].item[2].text = "Expired Medications Removed"
* item[2].item[2].type = #integer

* item[2].item[3].linkId = "expiration-tracking.extension-approved"
* item[2].item[3].text = "Medications with Stability Extension Approval"
* item[2].item[3].type = #integer

* item[2].item[4].linkId = "expiration-tracking.resupply-requested"
* item[2].item[4].text = "Resupply Requested"
* item[2].item[4].type = #boolean

// GROUP 4: STORAGE CONDITIONS
* item[3].linkId = "storage-conditions"
* item[3].text = "Storage Conditions Monitoring"
* item[3].type = #group

* item[3].item[0].linkId = "storage-conditions.ambient-temp"
* item[3].item[0].text = "Ambient Storage Temperature (°C)"
* item[3].item[0].type = #decimal
* item[3].item[0].code = $loinc#60834-9 "Room temperature"

* item[3].item[1].linkId = "storage-conditions.ambient-range"
* item[3].item[1].text = "Ambient Temp Within Range (15-25°C)"
* item[3].item[1].type = #boolean

* item[3].item[2].linkId = "storage-conditions.refrigerated-temp"
* item[3].item[2].text = "Refrigerated Storage Temperature (°C)"
* item[3].item[2].type = #decimal

* item[3].item[3].linkId = "storage-conditions.refrigerated-range"
* item[3].item[3].text = "Refrigerated Temp Within Range (2-8°C)"
* item[3].item[3].type = #boolean

* item[3].item[4].linkId = "storage-conditions.humidity"
* item[3].item[4].text = "Storage Area Humidity (%)"
* item[3].item[4].type = #decimal

* item[3].item[5].linkId = "storage-conditions.excursions"
* item[3].item[5].text = "Temperature Excursions Since Last Check"
* item[3].item[5].type = #boolean

* item[3].item[6].linkId = "storage-conditions.excursion-details"
* item[3].item[6].text = "Excursion Details"
* item[3].item[6].type = #text
* item[3].item[6].enableWhen.question = "storage-conditions.excursions"
* item[3].item[6].enableWhen.operator = #=
* item[3].item[6].enableWhen.answerBoolean = true

// GROUP 5: DISPENSING LOG
* item[4].linkId = "dispensing-log"
* item[4].text = "Dispensing Log Entry"
* item[4].type = #group

* item[4].item[0].linkId = "dispensing-log.dispensing-date"
* item[4].item[0].text = "Dispensing Date"
* item[4].item[0].type = #date

* item[4].item[1].linkId = "dispensing-log.medication-name"
* item[4].item[1].text = "Medication Name"
* item[4].item[1].type = #string

* item[4].item[2].linkId = "dispensing-log.dose"
* item[4].item[2].text = "Dose"
* item[4].item[2].type = #string

* item[4].item[3].linkId = "dispensing-log.quantity"
* item[4].item[3].text = "Quantity Dispensed"
* item[4].item[3].type = #integer

* item[4].item[4].linkId = "dispensing-log.indication"
* item[4].item[4].text = "Indication"
* item[4].item[4].type = #string

* item[4].item[5].linkId = "dispensing-log.ground-consult"
* item[4].item[5].text = "Ground Consultation Performed"
* item[4].item[5].type = #boolean

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#meme "Medical Equipment Management Environment"
* item[5].item[0].initial.valueCoding = $nasa-archive#meme "Medical Equipment Management Environment"


// ============================================================================
// MR032L Telemedicine Setup Questionnaire
// ============================================================================
// Source: MR032L Telemedicine Setup and Operations
// Purpose: Configure and verify telemedicine capabilities
// ============================================================================

Instance: MR032LTelemedicineSetupQuestionnaire
InstanceOf: Questionnaire
Title: "MR032L Telemedicine Setup"
Description: "NASA Medical Requirements Integration Document for telemedicine setup and operations. Configures communication links, verifies equipment, and ensures readiness for remote medical support."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr032l-telemedicine-setup"
* version = "1.0.0"
* name = "MR032LTelemedicineSetup"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Configure telemedicine systems, verify communication links, and ensure readiness for remote medical consultations and support."
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
* item[0].item[0].initial.valueString = "MR032L Telemedicine Setup and Operations"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "Configure and verify telemedicine capabilities for remote medical support."

// GROUP 2: PREFLIGHT CONFIGURATION
* item[1].linkId = "preflight-configuration"
* item[1].text = "Preflight Configuration"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-configuration.training-completed"
* item[1].item[0].text = "Telemedicine Training Completed"
* item[1].item[0].type = #boolean
* item[1].item[0].required = true

* item[1].item[1].linkId = "preflight-configuration.training-date"
* item[1].item[1].text = "Training Completion Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "preflight-configuration.primary-surgeon"
* item[1].item[2].text = "Primary Flight Surgeon Assigned"
* item[1].item[2].type = #string
* item[1].item[2].required = true

* item[1].item[3].linkId = "preflight-configuration.backup-surgeon"
* item[1].item[3].text = "Backup Flight Surgeon Assigned"
* item[1].item[3].type = #string
* item[1].item[3].required = true

* item[1].item[4].linkId = "preflight-configuration.communication-test"
* item[1].item[4].text = "Communication System Test Completed"
* item[1].item[4].type = #boolean
* item[1].item[4].required = true

// GROUP 3: IN-FLIGHT EQUIPMENT CHECK
* item[2].linkId = "equipment-check"
* item[2].text = "In-Flight Equipment Verification"
* item[2].type = #group

* item[2].item[0].linkId = "equipment-check.date"
* item[2].item[0].text = "Check Date"
* item[2].item[0].type = #date
* item[2].item[0].required = true

* item[2].item[1].linkId = "equipment-check.video-operational"
* item[2].item[1].text = "Video System Operational"
* item[2].item[1].type = #boolean
* item[2].item[1].required = true

* item[2].item[2].linkId = "equipment-check.audio-operational"
* item[2].item[2].text = "Audio System Operational"
* item[2].item[2].type = #boolean
* item[2].item[2].required = true

* item[2].item[3].linkId = "equipment-check.data-link"
* item[2].item[3].text = "Medical Data Link Verified"
* item[2].item[3].type = #boolean
* item[2].item[3].required = true

* item[2].item[4].linkId = "equipment-check.bandwidth"
* item[2].item[4].text = "Available Bandwidth (Kbps)"
* item[2].item[4].type = #integer

* item[2].item[5].linkId = "equipment-check.latency"
* item[2].item[5].text = "Communication Latency (ms)"
* item[2].item[5].type = #integer

* item[2].item[6].linkId = "equipment-check.diagnostic-devices"
* item[2].item[6].text = "Diagnostic Devices Verified"
* item[2].item[6].type = #choice
* item[2].item[6].repeats = true
* item[2].item[6].answerOption[0].valueString = "Ultrasound"
* item[2].item[6].answerOption[1].valueString = "ECG Monitor"
* item[2].item[6].answerOption[2].valueString = "Blood Pressure Monitor"
* item[2].item[6].answerOption[3].valueString = "Pulse Oximeter"
* item[2].item[6].answerOption[4].valueString = "Ophthalmoscope"
* item[2].item[6].answerOption[5].valueString = "Otoscope"

// GROUP 4: CONSULTATION LOG
* item[3].linkId = "consultation-log"
* item[3].text = "Telemedicine Consultation Log"
* item[3].type = #group

* item[3].item[0].linkId = "consultation-log.date"
* item[3].item[0].text = "Consultation Date"
* item[3].item[0].type = #dateTime

* item[3].item[1].linkId = "consultation-log.type"
* item[3].item[1].text = "Consultation Type"
* item[3].item[1].type = #choice
* item[3].item[1].answerOption[0].valueString = "Scheduled PMC"
* item[3].item[1].answerOption[1].valueString = "Urgent Medical"
* item[3].item[1].answerOption[2].valueString = "Emergency"
* item[3].item[1].answerOption[3].valueString = "Specialist Referral"
* item[3].item[1].answerOption[4].valueString = "Follow-up"

* item[3].item[2].linkId = "consultation-log.duration"
* item[3].item[2].text = "Duration (minutes)"
* item[3].item[2].type = #integer

* item[3].item[3].linkId = "consultation-log.participants"
* item[3].item[3].text = "Ground Participants"
* item[3].item[3].type = #string

* item[3].item[4].linkId = "consultation-log.chief-complaint"
* item[3].item[4].text = "Chief Complaint/Reason"
* item[3].item[4].type = #text

* item[3].item[5].linkId = "consultation-log.quality"
* item[3].item[5].text = "Communication Quality"
* item[3].item[5].type = #choice
* item[3].item[5].answerOption[0].valueString = "Excellent"
* item[3].item[5].answerOption[1].valueString = "Good"
* item[3].item[5].answerOption[2].valueString = "Acceptable"
* item[3].item[5].answerOption[3].valueString = "Poor - Limited video"
* item[3].item[5].answerOption[4].valueString = "Poor - Audio only"

* item[3].item[6].linkId = "consultation-log.outcome"
* item[3].item[6].text = "Consultation Outcome/Plan"
* item[3].item[6].type = #text

// GROUP 5: DATA DELIVERY
* item[4].linkId = "data-delivery"
* item[4].text = "Data Delivery"
* item[4].type = #group

* item[4].item[0].linkId = "data-delivery.archive"
* item[4].item[0].text = "Data Archive System"
* item[4].item[0].type = #choice
* item[4].item[0].answerOption[0].valueCoding = $nasa-archive#emr "Electronic Medical Record"
* item[4].item[0].initial.valueCoding = $nasa-archive#emr "Electronic Medical Record"


// ============================================================================
// MR008L Medical Hardware Maintenance Questionnaire
// ============================================================================
// Source: MR008L Medical Hardware Maintenance
// Purpose: Track calibration and maintenance of medical equipment
// ============================================================================

Instance: MR008LMedicalHardwareMaintenanceQuestionnaire
InstanceOf: Questionnaire
Title: "MR008L Medical Hardware Maintenance"
Description: "NASA Medical Requirements Integration Document for medical hardware maintenance. Tracks calibration schedules, preventive maintenance, and equipment functionality verification."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr008l-medical-hardware-maintenance"
* version = "1.0.0"
* name = "MR008LMedicalHardwareMaintenance"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Track calibration and maintenance of medical equipment to ensure proper function and reliability."
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
* item[0].item[0].initial.valueString = "MR008L Medical Hardware Maintenance"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "Track calibration schedules, preventive maintenance, and equipment functionality."

// GROUP 2: EQUIPMENT ITEM
* item[1].linkId = "equipment-item"
* item[1].text = "Equipment Item Details"
* item[1].type = #group

* item[1].item[0].linkId = "equipment-item.device-name"
* item[1].item[0].text = "Device Name"
* item[1].item[0].type = #string
* item[1].item[0].required = true

* item[1].item[1].linkId = "equipment-item.device-type"
* item[1].item[1].text = "Device Type"
* item[1].item[1].type = #choice
* item[1].item[1].answerOption[0].valueCoding = $nasa-hardware#12-lead-ecg "12-Lead ECG Machine"
* item[1].item[1].answerOption[1].valueCoding = $nasa-hardware#blood-pressure-monitor "Blood Pressure Monitor"
* item[1].item[1].answerOption[2].valueCoding = $nasa-hardware#dexa "DEXA Scanner"
* item[1].item[1].answerOption[3].valueCoding = $nasa-hardware#audiometer "Audiometer"
* item[1].item[1].answerOption[4].valueString = "Ultrasound"
* item[1].item[1].answerOption[5].valueString = "Defibrillator"
* item[1].item[1].answerOption[6].valueString = "Pulse Oximeter"

* item[1].item[2].linkId = "equipment-item.serial-number"
* item[1].item[2].text = "Serial Number"
* item[1].item[2].type = #string

* item[1].item[3].linkId = "equipment-item.location"
* item[1].item[3].text = "Location"
* item[1].item[3].type = #string

// GROUP 3: CALIBRATION
* item[2].linkId = "calibration"
* item[2].text = "Calibration Record"
* item[2].type = #group

* item[2].item[0].linkId = "calibration.last-date"
* item[2].item[0].text = "Last Calibration Date"
* item[2].item[0].type = #date

* item[2].item[1].linkId = "calibration.next-due"
* item[2].item[1].text = "Next Calibration Due"
* item[2].item[1].type = #date

* item[2].item[2].linkId = "calibration.interval-days"
* item[2].item[2].text = "Calibration Interval (days)"
* item[2].item[2].type = #integer

* item[2].item[3].linkId = "calibration.performed-by"
* item[2].item[3].text = "Calibration Performed By"
* item[2].item[3].type = #string

* item[2].item[4].linkId = "calibration.status"
* item[2].item[4].text = "Calibration Status"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueString = "Current"
* item[2].item[4].answerOption[1].valueString = "Due Soon (within 30 days)"
* item[2].item[4].answerOption[2].valueString = "Overdue"
* item[2].item[4].answerOption[3].valueString = "Not Applicable"

// GROUP 4: PREVENTIVE MAINTENANCE
* item[3].linkId = "preventive-maintenance"
* item[3].text = "Preventive Maintenance"
* item[3].type = #group

* item[3].item[0].linkId = "preventive-maintenance.last-date"
* item[3].item[0].text = "Last PM Date"
* item[3].item[0].type = #date

* item[3].item[1].linkId = "preventive-maintenance.next-due"
* item[3].item[1].text = "Next PM Due"
* item[3].item[1].type = #date

* item[3].item[2].linkId = "preventive-maintenance.tasks-completed"
* item[3].item[2].text = "PM Tasks Completed"
* item[3].item[2].type = #choice
* item[3].item[2].repeats = true
* item[3].item[2].answerOption[0].valueString = "Visual inspection"
* item[3].item[2].answerOption[1].valueString = "Cleaning"
* item[3].item[2].answerOption[2].valueString = "Battery check/replacement"
* item[3].item[2].answerOption[3].valueString = "Consumables replacement"
* item[3].item[2].answerOption[4].valueString = "Functional verification"
* item[3].item[2].answerOption[5].valueString = "Software update"

* item[3].item[3].linkId = "preventive-maintenance.issues-found"
* item[3].item[3].text = "Issues Found During PM"
* item[3].item[3].type = #boolean

* item[3].item[4].linkId = "preventive-maintenance.issues-details"
* item[3].item[4].text = "Issue Details"
* item[3].item[4].type = #text
* item[3].item[4].enableWhen.question = "preventive-maintenance.issues-found"
* item[3].item[4].enableWhen.operator = #=
* item[3].item[4].enableWhen.answerBoolean = true

// GROUP 5: FUNCTIONALITY STATUS
* item[4].linkId = "functionality-status"
* item[4].text = "Functionality Status"
* item[4].type = #group

* item[4].item[0].linkId = "functionality-status.operational"
* item[4].item[0].text = "Device Operational"
* item[4].item[0].type = #boolean
* item[4].item[0].required = true

* item[4].item[1].linkId = "functionality-status.condition"
* item[4].item[1].text = "Overall Condition"
* item[4].item[1].type = #choice
* item[4].item[1].answerOption[0].valueString = "Excellent"
* item[4].item[1].answerOption[1].valueString = "Good"
* item[4].item[1].answerOption[2].valueString = "Fair - Minor issues"
* item[4].item[1].answerOption[3].valueString = "Poor - Needs repair"
* item[4].item[1].answerOption[4].valueString = "Non-functional"

* item[4].item[2].linkId = "functionality-status.replacement-needed"
* item[4].item[2].text = "Replacement Needed"
* item[4].item[2].type = #boolean

* item[4].item[3].linkId = "functionality-status.notes"
* item[4].item[3].text = "Additional Notes"
* item[4].item[3].type = #text

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#meme "Medical Equipment Management Environment"
* item[5].item[0].initial.valueCoding = $nasa-archive#meme "Medical Equipment Management Environment"
