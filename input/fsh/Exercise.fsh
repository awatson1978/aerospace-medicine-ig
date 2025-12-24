// Exercise and Fitness Tracking Profiles
// Space-based exercise countermeasures and performance monitoring

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $pa-temp = http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes

// =====================================================
// EXTENSIONS
// =====================================================

Extension: ExerciseDevice
Id: exercise-device
Title: "Exercise Device"
Description: "Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS)"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* value[x] only Reference(Device)
* valueReference ^short = "Exercise equipment device"

Extension: HarnessLoad
Id: harness-load
Title: "Harness Load"
Description: "Percentage of body weight applied by harness during treadmill exercise"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* valueQuantity ^short = "Percentage of 1-g body weight"

Extension: DerivedFromGroup
Id: derived-from-group
Title: "Derived From Activity Group"
Description: "Links aggregated metrics to source activity group observations"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/derived-from-group"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Reference(Observation)
* valueReference ^short = "Source activity group observation"

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceExerciseActivityMeasure
Parent: Observation
Id: space-exercise-activity-measure
Title: "Space Exercise Activity Measure"
Description: "Individual exercise measurement (duration, intensity, heart rate, power output) for space-based physical activity"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains activity 1..1 MS
* category[activity] = $obs-cat#activity "Activity"

* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    basePA 0..1 MS and
    spaceModality 0..1 MS

* code.coding[basePA] ^short = "Physical activity measurement type (LOINC or PA temp codes)"
* code.coding[spaceModality] ^short = "Space-specific exercise modality"
* code.coding[spaceModality].system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs"

* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] MS
* value[x] only Quantity or CodeableConcept

// Components for detailed metrics
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    performanceMetric 0..* MS

* component[performanceMetric].code from SpacePerformanceMetricVS (extensible)
* component[performanceMetric].value[x] only Quantity

// Mission context extension
* extension contains
    MissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links measurement to specific mission"

Profile: SpaceExerciseActivityGroup
Parent: Observation
Id: space-exercise-activity-group
Title: "Space Exercise Activity Group"
Description: "Panel observation grouping related exercise measures for a single session (type, duration, intensity, HR)"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains activity 1..1 MS
* category[activity] = $obs-cat#activity "Activity"

* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    paPanel 1..1 MS

* code.coding[paPanel] = $pa-temp#PAPanel "Physical activity panel"
* code.text MS

* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only Period

// Members: link to individual measures
* hasMember MS
* hasMember only Reference(SpaceExerciseActivityMeasure)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open

// No value for panel
* value[x] 0..0

// Space-specific extensions
* extension contains
    MissionContext named missionContext 0..1 MS and
    ExerciseDevice named exerciseDevice 0..1 MS and
    HarnessLoad named harnessLoad 0..1 MS

* extension[missionContext] ^short = "Links activity group to specific mission"
* extension[exerciseDevice] ^short = "Exercise equipment used for this session"
* extension[harnessLoad] ^short = "Harness load percentage (for treadmill)"

Profile: SpaceEVSMinutesPerWeek
Parent: Observation
Id: space-evs-minutes-per-week
Title: "Space Exercise Vital Sign Minutes Per Week"
Description: "Weekly exercise volume derived from mission exercise sessions (EVS - Exercise Vital Sign)"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains activity 1..1 MS
* category[activity] = $obs-cat#activity "Activity"

* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 MS

* code.coding[loinc] = $loinc#82290-8 "Frequency of moderate to vigorous aerobic physical activity"

* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only Period

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from EVSUnitsVS (required)

// Space-specific extensions
* extension contains
    MissionContext named missionContext 0..1 MS and
    DerivedFromGroup named derivedFromGroup 0..* MS

* extension[missionContext] ^short = "Links EVS summary to specific mission"
* extension[derivedFromGroup] ^short = "Source activity groups contributing to this total"

Profile: SpaceExerciseSession
Parent: Procedure
Id: space-exercise-session
Title: "Space Exercise Session"
Description: "Procedural record of a space-based exercise event, linking prescriptions, goals, devices, and observations"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* code MS
* code.text MS
* subject 1..1 MS
* subject only Reference(Astronaut)
* encounter MS
* performed[x] 1..1 MS
* performed[x] only Period

// Workflow linkages
* basedOn MS
* basedOn ^short = "Exercise prescription (ServiceRequest)"
* reasonReference MS
* reasonReference ^short = "Fitness goals or medical indications"

// Devices used
* usedReference MS
* usedReference only Reference(Device)
* usedReference ^short = "Exercise equipment (ARED, T2, CEVIS, etc.)"

// Link to diagnostic report
* report MS
* report only Reference(DiagnosticReport)
* report ^short = "Comprehensive exercise report"

// Space-specific extensions
* extension contains
    MissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links procedure to specific mission"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: EVSUnitsVS
Id: evs-units-vs
Title: "EVS Units"
Description: "Units for Exercise Vital Sign measurements"
* ^experimental = false
* ^status = #active
* include $ucum#min/wk "minutes per week"
* include $ucum#min "minutes"

ValueSet: SpacePerformanceMetricVS
Id: space-performance-metric-vs
Title: "Space Exercise Performance Metrics"
Description: "Performance metrics for space exercise (defined in SpacePerformanceMetricCS)"
* ^experimental = false
* ^status = #active
* include codes from system SpacePerformanceMetricCS

// Note: SpacePerformanceMetricCS and SpaceExerciseModalityCS are defined in ExerciseCodeSystems.fsh
