// Mars Direct FHIR Profiles and Extensions
// Profiles for Mars mission health data modeling

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// EXTENSIONS
// =====================================================

Extension: AreographicCoordinates
Id: areographic-coordinates
Title: "Areographic Coordinates"
Description: "Mars latitude and longitude for surface locations"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/areographic-coordinates"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] 0..0
* extension contains
    latitude 1..1 MS and
    longitude 1..1 MS
* extension[latitude] ^short = "Areographic latitude (degrees, -90 to +90)"
* extension[latitude].value[x] only decimal
* extension[longitude] ^short = "Areographic longitude (degrees, 0 to 360)"
* extension[longitude].value[x] only decimal

Extension: ISRUStatus
Id: isru-status
Title: "ISRU System Status"
Description: "In-Situ Resource Utilization system status and propellant production levels"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isru-status"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Device"
* value[x] 0..0
* extension contains
    productionStatus 0..1 MS and
    propellantLevel 0..1 MS
* extension[productionStatus] ^short = "ISRU production status (nominal, degraded, failed)"
* extension[productionStatus].value[x] only code
* extension[propellantLevel] ^short = "Cumulative propellant produced (kg)"
* extension[propellantLevel].value[x] only Quantity

Extension: CommunicationDelay
Id: communication-delay
Title: "Communication Delay"
Description: "Earth-Mars light-time delay for data transmission context"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* ^context[2].type = #element
* ^context[2].expression = "Encounter"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #min

// =====================================================
// PROFILES
// =====================================================

Profile: MarsEVAProcedure
Parent: Procedure
Id: mars-eva-procedure
Title: "Mars Extravehicular Activity Procedure"
Description: "Record of Mars surface EVA with duration, location, participants, suit device, metabolic data, and dust exposure"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* status = #completed

* code MS
* code.text = "Mars Surface Extravehicular Activity"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomedCT 0..1 MS
* code.coding[snomedCT].system = $sct
* code.coding[snomedCT].code = #103741001 // Extravehicular activity (procedure)

* subject 1..1 MS
* subject only Reference(Patient)

* performed[x] 1..1 MS
* performed[x] only Period
* performedPeriod.start 1..1 MS
* performedPeriod.end 1..1 MS

* location MS
* location ^short = "Mars surface location where EVA occurred (areographic coordinates)"

* usedReference MS
* usedReference ^short = "EVA suit device and other equipment used"

* performer MS
* performer.actor only Reference(Patient or Practitioner)

// Extensions
* extension contains
    MissionContext named missionContext 0..1 MS and
    EVANumber named evaNumber 0..1 MS and
    CommunicationDelay named communicationDelay 0..1 MS

* extension[missionContext] ^short = "Links EVA to specific Mars mission"
* extension[evaNumber] ^short = "Sequential EVA identifier (e.g., EVA-1, EVA-247)"
* extension[communicationDelay] ^short = "Earth-Mars light time delay at EVA time"

Profile: HabitatEnvironmentalObservation
Parent: Observation
Id: habitat-environmental-observation
Title: "Habitat Environmental Monitoring"
Description: "Observation of environmental conditions inside Mars habitat (pressure, O2, CO2, temperature, humidity, dust)"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS

* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains environmental 1..1 MS
* category[environmental] = http://terminology.hl7.org/CodeSystem/observation-category#environmental

* code MS
* code ^short = "Type of environmental measurement (pressure, O2%, CO2, temp, humidity, dust)"

* subject 0..1 MS
* subject only Reference(Location or Group)
* subject ^short = "Mars habitat (modeled as Location or Group)"

* effective[x] 1..1 MS
* effective[x] only dateTime

* value[x] 0..1 MS
* value[x] only Quantity

* component MS
* component ^short = "Multiple environmental metrics measured simultaneously"
* component.code MS
* component.value[x] only Quantity

Profile: ISRUProductionLog
Parent: Observation
Id: isru-production-log
Title: "ISRU Production Log"
Description: "Tracking ISRU propellant production (CH4/O2) for Mars return journey"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS

* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains operational 1..1 MS
* category[operational].coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/observation-category-aerospace"
* category[operational].coding.code = #operational

* code MS
* code.text = "ISRU Propellant Production"

* effective[x] 1..1 MS
* effective[x] only Period or dateTime

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from http://hl7.org/fhir/ValueSet/ucum-bodyweight (required)
* valueQuantity ^short = "Mass of propellant produced (kg CH4 or O2)"

* device 0..1 MS
* device only Reference(Device)
* device ^short = "ISRU plant device"

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    reactorStatus 0..1 MS and
    powerConsumption 0..1 MS

* component[reactorStatus].code.text = "Reactor Status"
* component[reactorStatus].value[x] only CodeableConcept or string

* component[powerConsumption].code.text = "Power Consumption"
* component[powerConsumption].value[x] only Quantity
* component[powerConsumption].valueQuantity.system = $ucum
* component[powerConsumption].valueQuantity.code = #kW

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: MarsCrewMemberProfile
Parent: Patient
Id: mars-crew-member
Title: "Mars Crew Member Profile"
Description: "Patient profile for Mars crew with extensions for radiation career dose, flight certification, and baseline health metrics"
* ^version = "1.0.0"
* ^status = #active

* identifier MS
* name 1..* MS
* gender MS
* birthDate MS

// Extensions would include career radiation dose, flight certification status, etc.
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

Profile: MissionTimelinePlan
Parent: PlanDefinition
Id: mission-timeline-plan
Title: "Mission Timeline Plan"
Description: "Mars mission timeline with phases, events, EVA schedules, and medical protocols"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* title 1..1 MS
* title ^short = "Mission plan title (e.g., Mars Direct Mission Plan)"

* status MS

* type MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/plan-definition-type"
* type.coding.code = #workflow-definition

* description MS
* description ^short = "Detailed mission description including objectives, timeline, crew, risks"

* action MS
* action ^short = "Mission phases and activities (launch, transit, surface ops, return)"
* action.title 1..1 MS
* action.description MS
* action.description ^short = "Detailed phase description with timing and procedures"

// Extensions
* extension contains
    MissionContext named missionContext 0..1 MS

Profile: MarsRadiationRiskAssessment
Parent: RiskAssessment
Id: mars-radiation-risk-assessment
Title: "Mars Radiation Risk Assessment"
Description: "Radiation exposure risk assessment for long-duration deep space missions"
* ^version = "1.0.0"
* ^status = #active

* status MS

* subject 1..1 MS
* subject only Reference(Patient)

* code MS
* code.text = "Radiation Exposure Risk Assessment"

* basis MS
* basis ^short = "References cumulative radiation dose Observations"

* prediction MS
* prediction.outcome MS
* prediction.outcome ^short = "Predicted outcomes (cancer risk, CNS effects, etc.)"
* prediction.probability[x] MS

* mitigation MS
* mitigation ^short = "Risk mitigation strategies (shielding, timeline adjustments, countermeasures)"

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: AutonomousMedicalEncounter
Parent: Encounter
Id: autonomous-medical-encounter
Title: "Autonomous Medical Encounter"
Description: "Encounter profile for crew-led medical events with no real-time ground support due to communication delays"
* ^version = "1.0.0"
* ^status = #active

* status MS

* class MS

* subject 1..1 MS
* subject only Reference(Patient)

* period MS
* period ^short = "Time period of medical event"

* reasonCode MS
* reasonCode ^short = "Reason for autonomous medical intervention"

* diagnosis MS
* diagnosis ^short = "Conditions diagnosed during encounter"

// Extensions
* extension contains
    CommunicationDelay named communicationDelay 0..1 MS and
    MissionContext named missionContext 0..1 MS

* extension[communicationDelay] ^short = "Earth-Mars delay at time of event"
* extension[missionContext] ^short = "Links to specific Mars mission"
