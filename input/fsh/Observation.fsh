// Aliases for systems (optional but handy)
Alias: $behavioral-biomarker-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs

// ---------------------------------------------------------
// Extension: IsolationRisk
// ---------------------------------------------------------
Extension: IsolationRisk
Id: isolation-risk
Title: "Isolation Risk Factor"
Description: "Captures isolation and confinement risk factors affecting behavioral health"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from IsolationSyndromeFactorsVS (preferred)

// ---------------------------------------------------------
// Profile: BehavioralHealthState (Observation)
// ---------------------------------------------------------
Profile: BehavioralHealthState
Parent: Observation
Id: behavioral-health-state
Title: "Behavioral Health State"
Description: "Point-in-time behavioral and psychological state assessment for aerospace missions."
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/behavioral-health-state"
* ^status = #active

// Must be a psychological / behavioral category
* category 1..*
* category.coding 1..
* category.coding.system = "http://loinc.org" (exactly)
* category.coding.code = #55467-8 (exactly) // Psychological assessment

// Use BehavioralHealthMetricsVS for main code
* code 1..1
* code from BehavioralHealthMetricsVS (preferred)

// Subject and effective time required
* subject 1..1
* subject.reference 1..1
* effective[x] 1..1
* effective[x] only dateTime

// Value can be a Quantity or CodeableConcept
* value[x] only Quantity or CodeableConcept

// Components for specific biomarkers
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

// Cortisol
* component contains cortisol 0..1 and hrv 0..1 and sleep-efficiency 0..1
* component[cortisol].code = $behavioral-biomarker-cs#cortisol-ugdl
* component[cortisol].value[x] only Quantity
* component[cortisol].valueQuantity.unit = "µg/dL"

// HRV
* component[hrv].code = $behavioral-biomarker-cs#hrv-ms
* component[hrv].value[x] only Quantity
* component[hrv].valueQuantity.unit = "ms"

// Sleep efficiency
* component[sleep-efficiency].code = $behavioral-biomarker-cs#sleep-efficiency-pct
* component[sleep-efficiency].value[x] only Quantity
* component[sleep-efficiency].valueQuantity.unit = "%"


Alias: $aerospace-behavioral-state-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs

// ---------------------------------------------------------
// Profile: CumulativeStressBurden (Observation)
// ---------------------------------------------------------
Profile: CumulativeStressBurden
Parent: Observation
Id: cumulative-stress-burden
Title: "Cumulative Stress Burden"
Description: "Longitudinal, integrated measure of cumulative stress burden analogous to cumulative radiation dose."
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/cumulative-stress-burden"
* ^status = #active

// Ensure code is fixed to cumulative-stress
* code 1..1
* code.coding 1..1
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs" (exactly)
* code.coding.code = #cumulative-stress (exactly)

// Subject and time as usual
* subject 1..1
* effective[x] 1..1
* effective[x] only dateTime

// Stress "dose" as a Quantity (arbitrary stress units or standardized scale)
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.unit 1..1
* valueQuantity.unit = "stress units"

// Mission context extension (re-using radiation pattern)
* extension contains
    http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context named missionContext 0..1

// Optional breakdown by domain (emotional, cognitive, social) via components
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component contains emotional 0..1 and cognitive 0..1 and social 0..1

* component[emotional].code = $aerospace-behavioral-state-cs#mood-level
* component[emotional].value[x] only Quantity

* component[cognitive].code = $aerospace-behavioral-state-cs#cognitive-readiness
* component[cognitive].value[x] only Quantity

* component[social].code = $aerospace-behavioral-state-cs#social-connectedness
* component[social].value[x] only Quantity


Alias: $psych-countermeasure-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/psychological-countermeasure-cs
Alias: $stress-countermeasures-vs = http://hl7.org/fhir/uv/aerospace/ValueSet/stress-countermeasures-vs

// ---------------------------------------------------------
// Profile: PsychologicalCountermeasureActivity (Procedure)
// ---------------------------------------------------------
Profile: PsychologicalCountermeasureActivity
Parent: Procedure
Id: psychological-countermeasure-activity
Title: "Psychological Countermeasure Activity"
Description: "Documentation of psychological countermeasure interventions for behavioral health in aerospace missions."
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/psychological-countermeasure-activity"
* ^status = #active

// Basic cardinalities
* status 1..1
* status from http://hl7.org/fhir/ValueSet/event-status (required)
* subject 1..1
* subject.reference 1..1

// Use StressCountermeasuresVS for code
* code 1..1
* code from $stress-countermeasures-vs (preferred)

// Performer and reason
* performer 0..*
* reasonCode 0..*
* reasonCode from BehavioralHealthMetricsVS (extensible)

// mission-context & isolation factors (re-use existing extension patterns)
* extension contains
    http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context named missionContext 0..1 and
    http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk named isolationRisk 0..*

// Link to related assessments when available
* reasonReference 0..*
* reasonReference only Reference(Observation or Condition or DiagnosticReport)

// Outcome (subjective or objective)
* outcome 0..1
* outcome from BehavioralHealthMetricsVS (extensible)
