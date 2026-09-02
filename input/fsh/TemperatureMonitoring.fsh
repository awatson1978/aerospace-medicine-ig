// Body Temperature & Measurement Methods
// WP2: Abstract 51 (oral body temperature during long-duration spaceflight)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: TemperatureMeasurementMethodCS
Id: temperature-measurement-method-cs
Title: "Temperature Measurement Method Code System"
Description: "Methods of body temperature measurement relevant to spaceflight"
* ^count = 7
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #oral-thermometer "Oral Thermometer" "Standard oral digital thermometer measurement"
* #tympanic-ir "Tympanic Infrared" "Infrared tympanic membrane thermometry"
* #rectal "Rectal Thermometer" "Rectal temperature measurement"
* #skin-patch-continuous "Continuous Skin Patch" "Continuous skin temperature via adhesive sensor patch"
* #ingestible-thermopill "Ingestible Thermopill" "Telemetric core body temperature via ingestible capsule"
* #axillary "Axillary Thermometer" "Axillary (armpit) temperature measurement"
* #temporal-artery "Temporal Artery Scanner" "Non-contact temporal artery infrared thermometry"

CodeSystem: CircadianPhaseCS
Id: circadian-phase-cs
Title: "Circadian Phase Code System"
Description: "Circadian rhythm phases for contextualizing temperature and physiological measurements"
* ^count = 4
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #morning-nadir "Morning Nadir" "Circadian temperature nadir typically occurring in early morning hours"
* #afternoon-peak "Afternoon Peak" "Circadian temperature acrophase typically occurring in late afternoon"
* #nocturnal-trough "Nocturnal Trough" "Overnight low temperature period during sleep"
* #circadian-acrophase "Circadian Acrophase" "Peak of the circadian temperature rhythm"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: TemperatureMeasurementMethodVS
Id: temperature-measurement-method-vs
Title: "Temperature Measurement Method Value Set"
Description: "Methods of body temperature measurement"
* ^experimental = true
* ^status = #active
* include codes from system TemperatureMeasurementMethodCS

ValueSet: CircadianPhaseVS
Id: circadian-phase-vs
Title: "Circadian Phase Value Set"
Description: "Circadian rhythm phases"
* ^experimental = true
* ^status = #active
* include codes from system CircadianPhaseCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: CircadianPhase
Id: circadian-phase
Title: "Circadian Phase"
Description: "Circadian rhythm phase at the time of observation"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from CircadianPhaseVS (extensible)

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceBodyTemperature
Parent: Observation
Id: space-body-temperature
Title: "Space Body Temperature Observation"
Description: "Body temperature measurement during spaceflight with method, circadian context, and environmental factors"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#8310-5 "Body temperature"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #Cel
* valueQuantity ^short = "Temperature in degrees Celsius"

* method 0..1 MS
* method from TemperatureMeasurementMethodVS (extensible)
* method ^short = "Method of temperature measurement"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    ambientTemperature 0..1 and
    timeSinceExercise 0..1

* component[ambientTemperature] ^short = "Ambient cabin temperature at time of measurement"
* component[ambientTemperature].code = $loinc#60832-3 "Room temperature"
* component[ambientTemperature].value[x] only Quantity
* component[ambientTemperature].valueQuantity.system = $ucum
* component[ambientTemperature].valueQuantity.code = #Cel

* component[timeSinceExercise] ^short = "Time since last exercise session"
* component[timeSinceExercise].code = $sct#68130003 "Physical activity"
* component[timeSinceExercise].value[x] only Quantity
* component[timeSinceExercise].valueQuantity.system = $ucum
* component[timeSinceExercise].valueQuantity.code = #min

* extension contains
    MissionContext named missionContext 0..1 MS and
    CircadianPhase named circadianPhase 0..1 MS and
    FlightDay named flightDay 0..1 MS
