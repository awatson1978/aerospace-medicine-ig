// ============================================================================
// MRID Questionnaire Profile
// ============================================================================
// Base profile for NASA Medical Requirements Integration Document (MRID)
// questionnaires used in the Aerospace Medicine Implementation Guide.
// Extends SDC Questionnaire to ensure extraction support and standardized
// structure for spaceflight medical requirements.
// ============================================================================

Alias: $nasa-sponsor = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs
Alias: $nasa-discipline = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs

// ============================================================================
// MRID Questionnaire Profile
// ============================================================================

Profile: MRIDQuestionnaire
Parent: Questionnaire
Id: mrid-questionnaire
Title: "MRID Questionnaire Profile"
Description: """
Profile for NASA Medical Requirements Integration Document (MRID) questionnaires.
This profile standardizes the structure and metadata for MEDB (Medical Evaluation
Document Baseline) and MR (Medical Requirements) documents translated to FHIR
Questionnaire resources for structured data capture.

All MRID questionnaires follow a standard structure with groups for:
- Medical Requirements Overview (MRID metadata)
- Preflight Training
- Preflight Activities
- In-Flight Activities
- Postflight Activities
- Data Delivery
- Domain-Specific Results (e.g., radiation doses, ECG findings)
- Postflight Debrief

The profile supports SDC-compatible extensions for:
- Launch context (astronaut/patient reference)
- Observation extraction from QuestionnaireResponse
"""

* ^version = "1.0.0"
* ^status = #active
* ^publisher = "MITRE"

// Required metadata elements
* url 1..1 MS
* version 1..1 MS
* name 1..1 MS
* title 1..1 MS
* status 1..1 MS
* date 1..1 MS
* publisher 1..1 MS
* description 1..1 MS
* purpose 0..1 MS
* copyright 0..1 MS

// MRID-specific extensions
* extension contains
    MRIDSponsor named sponsor 1..1 MS and
    MRIDDiscipline named discipline 1..1 MS and
    MRIDDocumentNumber named documentNumber 1..1 MS and
    MRIDLaunchContext named launchContext 0..1 MS

* extension[sponsor] ^short = "NASA organizational sponsor for this medical requirement"
* extension[discipline] ^short = "Medical discipline category"
* extension[documentNumber] ^short = "MRID document identifier (e.g., MEDB 3.1, MR004L)"
* extension[launchContext] ^short = "Context for pre-populating questionnaire (typically Patient reference)"

// Items must have linkId and type
* item.linkId 1..1 MS
* item.text 1..1 MS
* item.type 1..1 MS

// Support for nested items and conditional logic
* item.item MS
* item.enableWhen MS
* item.required MS
* item.repeats MS
* item.readOnly MS
* item.initial MS
* item.answerOption MS
* item.code MS

// ============================================================================
// MRID Extensions
// ============================================================================

Extension: MRIDSponsor
Id: mrid-sponsor
Title: "MRID Sponsor"
Description: "The NASA organizational sponsor responsible for the medical requirement"
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-sponsor"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* value[x] only Coding
* valueCoding from NASAMRIDSponsorVS (required)

Extension: MRIDDiscipline
Id: mrid-discipline
Title: "MRID Discipline"
Description: "The medical discipline category for the medical requirement"
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-discipline"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* value[x] only Coding
* valueCoding from NASAMRIDDisciplineVS (required)

Extension: MRIDDocumentNumber
Id: mrid-document-number
Title: "MRID Document Number"
Description: "The official MRID document identifier (e.g., MEDB 3.1, MR004L, MR005S)"
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-document-number"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* value[x] only string
* valueString 1..1

Extension: MRIDFlightDuration
Id: mrid-flight-duration
Title: "MRID Flight Duration Requirement"
Description: "Indicates the flight duration requirements for this medical requirement (e.g., 'All flights', '>= 30 days', '>= 180 days')"
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-flight-duration"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* value[x] only string

Extension: MRIDFrequency
Id: mrid-frequency
Title: "MRID Frequency"
Description: "How often this medical requirement applies (e.g., 'Every ISS Increment', 'Annual', 'Per mission')"
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-frequency"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* value[x] only string

Extension: MRIDLaunchContext
Id: mrid-launch-context
Title: "MRID Launch Context"
Description: "Context for pre-populating the questionnaire with astronaut/patient reference. Compatible with SDC launchContext pattern."
* ^url = "https://mitre.org/fhir/space-health/StructureDefinition/mrid-launch-context"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Questionnaire"
* extension contains
    name 1..1 MS and
    type 1..1 MS and
    description 0..1 MS
* extension[name].value[x] only code
* extension[name].valueCode from MRIDLaunchContextNameVS (required)
* extension[type].value[x] only code
* extension[type].valueCode from MRIDLaunchContextTypeVS (required)
* extension[description].value[x] only string


// ============================================================================
// Launch Context Value Sets
// ============================================================================

ValueSet: MRIDLaunchContextNameVS
Id: mrid-launch-context-name-vs
Title: "MRID Launch Context Name"
Description: "Names for launch context variables in MRID questionnaires"
* ^status = #active
* include codes from system MRIDLaunchContextNameCS

ValueSet: MRIDLaunchContextTypeVS
Id: mrid-launch-context-type-vs
Title: "MRID Launch Context Type"
Description: "FHIR resource types for launch context in MRID questionnaires"
* ^status = #active
* include codes from system MRIDLaunchContextTypeCS

CodeSystem: MRIDLaunchContextNameCS
Id: mrid-launch-context-name-cs
Title: "MRID Launch Context Name CodeSystem"
Description: "Names for launch context variables"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #patient "Patient" "The astronaut/crewmember subject"
* #encounter "Encounter" "The mission or medical encounter"
* #user "User" "The user completing the questionnaire"

CodeSystem: MRIDLaunchContextTypeCS
Id: mrid-launch-context-type-cs
Title: "MRID Launch Context Type CodeSystem"
Description: "FHIR resource types for launch context"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #Patient "Patient" "Patient resource type"
* #Encounter "Encounter" "Encounter resource type"
* #Practitioner "Practitioner" "Practitioner resource type"

// ============================================================================
// MRID Questionnaire Group Item Invariants
// ============================================================================
// Note: These represent the standard structure for MRID questionnaires.
// Each questionnaire should include these standard groups (where applicable):
//
// 1. overview - Medical Requirements Overview
//    - mrid-number, sponsor, discipline, category, references, purpose,
//      measurement-parameters, deliverables, flight-duration, number-of-flights,
//      crew-members-required
//
// 2. preflight-training - Preflight Training
//    - description, activity-name, duration, schedule, flexibility, personnel,
//      hardware, software, location, facilities, training-date, training-complete
//
// 3. preflight-activities - Preflight Activities
//    - description, duration, schedule, flexibility, personnel, hardware,
//      location, constraints, test-date, activity-complete
//
// 4. inflight-activities - In-Flight Activities
//    - description, activity-name, duration, schedule, personnel, hardware,
//      constraints, notes
//
// 5. postflight-activities - Postflight Activities
//    - description, schedule, personnel, constraints, activity-complete
//
// 6. data-delivery - Data Delivery
//    - reports (nested groups), archive system, delivery tracking
//
// 7. [domain]-results - Domain-Specific Results
//    - Varies by discipline (radiation doses, ECG findings, behavioral metrics, etc.)
//    - Items should include LOINC codes for extraction to Observations
//
// 8. postflight-debrief - Postflight Debrief
//    - schedule, duration, personnel, completed, date
// ============================================================================

// ============================================================================
// Standard Link ID Patterns
// ============================================================================
// Link IDs follow a hierarchical pattern:
//   group-name.item-name
//   group-name.subgroup-name.item-name
//
// Examples:
//   overview.mrid-number
//   preflight-training.duration
//   preflight-activities.schedule
//   inflight-activities.cpd-serial
//   postflight-activities.constraints
//   data-delivery.cpd-report.due
//   dose-results.mission-dose
//   postflight-debrief.completed
// ============================================================================


// ============================================================================
// MRID Standard Overview Item Structure (for reference)
// ============================================================================
// This RuleSet provides the standard overview group pattern. It can be used
// as a template when creating new MRID questionnaires.

RuleSet: MRIDOverviewGroup(mridNumber, sponsor, discipline, category, references, purpose, parameters, deliverables, flightDuration, numFlights, crewRequired)
* item[+].linkId = "overview"
* item[=].text = "Medical Requirements Overview"
* item[=].type = #group

* item[=].item[+].linkId = "overview.mrid-number"
* item[=].item[=].text = "MRID Number and Title"
* item[=].item[=].type = #display
* item[=].item[=].initial.valueString = {mridNumber}

* item[=].item[+].linkId = "overview.sponsor"
* item[=].item[=].text = "Sponsor"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = {sponsor}
* item[=].item[=].answerOption[+].valueCoding = {sponsor}

* item[=].item[+].linkId = "overview.discipline"
* item[=].item[=].text = "Discipline"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueCoding = {discipline}
* item[=].item[=].answerOption[+].valueCoding = {discipline}

* item[=].item[+].linkId = "overview.category"
* item[=].item[=].text = "Category"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].initial.valueString = {category}

* item[=].item[+].linkId = "overview.references"
* item[=].item[=].text = "References"
* item[=].item[=].type = #text
* item[=].item[=].initial.valueString = {references}

* item[=].item[+].linkId = "overview.purpose"
* item[=].item[=].text = "Purpose/Objectives"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {purpose}

* item[=].item[+].linkId = "overview.measurement-parameters"
* item[=].item[=].text = "Measurement Parameters"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {parameters}

* item[=].item[+].linkId = "overview.deliverables"
* item[=].item[=].text = "Deliverables"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {deliverables}

* item[=].item[+].linkId = "overview.flight-duration"
* item[=].item[=].text = "Flight Duration"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {flightDuration}

* item[=].item[+].linkId = "overview.number-of-flights"
* item[=].item[=].text = "Number of Flights"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {numFlights}

* item[=].item[+].linkId = "overview.crew-members-required"
* item[=].item[=].text = "Number and Type of Crew Members Required"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].initial.valueString = {crewRequired}


// ============================================================================
// MRID Preflight Training Group Template
// ============================================================================

RuleSet: MRIDPreflightTrainingGroupNA
* item[+].linkId = "preflight-training"
* item[=].text = "Preflight Training"
* item[=].type = #group
* item[=].item[+].linkId = "preflight-training.description"
* item[=].item[=].text = "Training Activity Description"
* item[=].item[=].type = #display
* item[=].item[=].initial.valueString = "N/A - No specific training required for this MRID"


// ============================================================================
// MRID Postflight Debrief Group Template
// ============================================================================

RuleSet: MRIDPostflightDebriefGroupNA
* item[+].linkId = "postflight-debrief"
* item[=].text = "Postflight Debrief"
* item[=].type = #group
* item[=].item[+].linkId = "postflight-debrief.description"
* item[=].item[=].text = "Debrief Description"
* item[=].item[=].type = #display
* item[=].item[=].initial.valueString = "N/A - Included as part of Medical Operations overall debrief"
