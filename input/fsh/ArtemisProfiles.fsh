// Artemis FHIR Profiles
// EVAProcedure, HabitatLocation, ArtemisRadiationExposure, MissionPlan

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// EXTENSIONS
// =====================================================

Extension: LunarCoordinates
Id: lunar-coordinates
Title: "Lunar Coordinates"
Description: "Selenographic latitude and longitude for lunar surface locations"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] 0..0
* extension contains
    latitude 1..1 MS and
    longitude 1..1 MS
* extension[latitude] ^short = "Selenographic latitude (degrees, -90 to +90)"
* extension[latitude].value[x] only decimal
* extension[longitude] ^short = "Selenographic longitude (degrees, 0 to 360)"
* extension[longitude].value[x] only decimal

Extension: RadiationShielding
Id: radiation-shielding
Title: "Radiation Shielding"
Description: "Shielding mass and composition for habitat or vehicle"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Device"
* ^context[1].type = #element
* ^context[1].expression = "Location"
* value[x] 0..0
* extension contains
    shieldingMass 0..1 MS and
    shieldingComposition 0..1 MS
* extension[shieldingMass] ^short = "Shielding mass (g/cm²)"
* extension[shieldingMass].value[x] only Quantity
* extension[shieldingComposition] ^short = "Shielding material composition"
* extension[shieldingComposition].value[x] only string

Extension: EVANumber
Id: eva-number
Title: "EVA Number"
Description: "Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only string
* valueString ^short = "EVA sequential number (e.g., EVA-1, EVA-2)"

// =====================================================
// PROFILES
// =====================================================

Profile: EVAProcedure
Parent: Procedure
Id: eva-procedure
Title: "Extravehicular Activity Procedure"
Description: "Record of an Artemis mission EVA (moonwalk) with duration, location, participants, suit device, and metabolic data"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* status = #completed

* code MS
* code.text = "Extravehicular Activity (EVA)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomedCT 0..1 MS
* code.coding[snomedCT].system = $sct

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 1..1 MS
* performed[x] only Period
* performedPeriod.start 1..1 MS
* performedPeriod.end 1..1 MS

* location MS
* location ^short = "Lunar landing site or surface location where EVA occurred"

* usedReference MS
* usedReference ^short = "EVA suit device (e.g., xEMU) and other equipment used"

* performer MS
* performer.actor only Reference(Astronaut or Practitioner)

// Extensions
* extension contains
    MissionContext named missionContext 0..1 MS and
    EVANumber named evaNumber 0..1 MS

* extension[missionContext] ^short = "Links EVA to specific Artemis mission and phase"
* extension[evaNumber] ^short = "Sequential EVA identifier (e.g., EVA-1, EVA-2)"

Profile: HabitatLocation
Parent: Location
Id: habitat-location
Title: "Habitat Location"
Description: "Location profile for lunar habitats, Gateway modules, and landing sites with selenographic coordinates and region code"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* name 1..1 MS
* name ^short = "Habitat or location name (e.g., Malapert Massif Landing Site, Gateway HALO)"

* type MS
* type ^short = "Location type (orbital station, surface habitat, landing site)"

* position MS
* position ^short = "Selenographic coordinates (latitude/longitude)"

* description MS
* description ^short = "Detailed description of location including terrain, features, environmental conditions"

// Extensions
* extension contains
    LunarCoordinates named lunarCoordinates 0..1 MS and
    RadiationShielding named radiationShielding 0..1 MS

* extension[lunarCoordinates] ^short = "Selenographic latitude/longitude"
* extension[radiationShielding] ^short = "Habitat shielding characteristics"

Profile: ArtemisRadiationExposure
Parent: Observation
Id: artemis-radiation-exposure
Title: "Artemis Radiation Exposure"
Description: "Radiation exposure observation for deep space missions with GCR vs SPE differentiation and shielding context"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS

* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..1 MS
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code MS
* code from ArtemisRadiationMeasureVS (extensible)
* code ^short = "Dose measure (cumulative dose, dose rate)"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from RadiationDoseUnitsVS (extensible)

* partOf MS
* partOf ^short = "EVA or other procedure during which the exposure occurred"

// Components for detailed dosimetry
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    radiationSource 0..1 MS and
    shieldingCondition 0..1 MS and
    tissueType 0..1 MS

* component[radiationSource] ^short = "Dominant radiation source (GCR, SPE, trapped, secondary)"
* component[radiationSource].code = ArtemisRadiationMeasureCS#radiation-source "Radiation Source"
* component[radiationSource].value[x] only CodeableConcept
* component[radiationSource].valueCodeableConcept from SpaceRadiationTypeVS (required)

* component[shieldingCondition] ^short = "Shielding condition during the exposure"
* component[shieldingCondition].code = ArtemisRadiationMeasureCS#shielding-condition "Shielding Condition"
* component[shieldingCondition].value[x] only CodeableConcept
* component[shieldingCondition].valueCodeableConcept from ShieldingConditionVS (required)

* component[tissueType] ^short = "Tissue or organ for which the dose is reported"
* component[tissueType].code = ArtemisRadiationMeasureCS#tissue-type "Tissue Type"
* component[tissueType].value[x] only CodeableConcept

// Extensions
* extension contains
    MissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links radiation exposure to specific Artemis mission and phase"

Profile: MissionPlan
Parent: PlanDefinition
Id: mission-plan
Title: "Mission Plan"
Description: "Artemis mission timeline with phases, events, constraints, and medical protocols"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* title 1..1 MS
* title ^short = "Mission plan title (e.g., Artemis III Mission Plan)"

* status MS

* type MS
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#workflow-definition "Workflow Definition"

* description MS
* description ^short = "Detailed mission description including objectives, timeline, crew, risks"

* action MS
* action ^short = "Mission phases and activities (launch, transit, EVA, etc.)"
* action.title 1..1 MS
* action.description MS
* action.description ^short = "Detailed description including timing, duration, and procedures"

// Extensions
* extension contains
    MissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links plan to specific Artemis mission"
