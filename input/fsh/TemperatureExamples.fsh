// Temperature Monitoring Examples
// WP11: Oral temperature measurement at FD+30 with circadian context

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

// =====================================================
// OBSERVATION: Body Temperature FD+30
// =====================================================

Instance: Body-Temp-FD30-Morning
InstanceOf: SpaceBodyTemperature
Title: "Body Temperature - Flight Day 30 Morning"
Description: "Oral body temperature measurement on flight day 30 during morning circadian nadir"
Usage: #example
* insert SyntheticExample

* status = #final
* category = $obs-cat#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-04-14T06:30:00Z"
* valueQuantity.value = 36.8
* valueQuantity.unit = "°C"
* valueQuantity.system = $ucum
* valueQuantity.code = #Cel
* method = TemperatureMeasurementMethodCS#oral-thermometer "Oral Thermometer"

* component[ambientTemperature].code = $loinc#60832-3 "Room temperature"
* component[ambientTemperature].valueQuantity.value = 22.5
* component[ambientTemperature].valueQuantity.unit = "°C"
* component[ambientTemperature].valueQuantity.system = $ucum
* component[ambientTemperature].valueQuantity.code = #Cel

* component[timeSinceExercise].code = $sct#68130003 "Physical activity"
* component[timeSinceExercise].valueQuantity.value = 120
* component[timeSinceExercise].valueQuantity.unit = "min"
* component[timeSinceExercise].valueQuantity.system = $ucum
* component[timeSinceExercise].valueQuantity.code = #min

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[circadianPhase].valueCodeableConcept = CircadianPhaseCS#morning-nadir "Morning Nadir"
* extension[flightDay].valueInteger = 30
