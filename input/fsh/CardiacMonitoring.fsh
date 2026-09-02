// Cardiac Monitoring
// WP9: Abstract 47 (cardiac arrhythmia risk)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: CardiacMonitoringCS
Id: cardiac-monitoring-cs
Title: "Cardiac Monitoring Code System"
Description: "Cardiac monitoring parameters for spaceflight ECG assessment"
* ^count = 5
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #qt-interval "QT Interval" "QT interval duration on ECG"
* #qtc-interval "Corrected QT Interval (QTc)" "Rate-corrected QT interval"
* #pr-interval "PR Interval" "PR interval duration on ECG"
* #qrs-duration "QRS Duration" "QRS complex duration on ECG"
* #arrhythmia-classification "Arrhythmia Classification" "Classification of detected cardiac arrhythmia"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: CardiacMonitoringVS
Id: cardiac-monitoring-vs
Title: "Cardiac Monitoring Value Set"
Description: "Cardiac monitoring parameters"
* ^experimental = true
* ^status = #active
* include codes from system CardiacMonitoringCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceECGObservation
Parent: Observation
Id: space-ecg-observation
Title: "Space ECG Observation"
Description: "Electrocardiogram observation during spaceflight for cardiac arrhythmia monitoring"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#34534-8 "EKG 12 channel panel"
* code ^short = "ECG observation"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* interpretation 0..* MS
* interpretation ^short = "Arrhythmia classification or ECG interpretation"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    heartRate 0..1 and
    qtInterval 0..1 and
    qtcInterval 0..1 and
    prInterval 0..1 and
    qrsDuration 0..1

* component[heartRate] ^short = "Heart rate in beats per minute"
* component[heartRate].code = $loinc#8867-4 "Heart rate"
* component[heartRate].value[x] only Quantity
* component[heartRate].valueQuantity.system = $ucum
* component[heartRate].valueQuantity.code = #/min

* component[qtInterval] ^short = "QT interval in milliseconds"
* component[qtInterval].code = CardiacMonitoringCS#qt-interval "QT Interval"
* component[qtInterval].value[x] only Quantity
* component[qtInterval].valueQuantity.system = $ucum
* component[qtInterval].valueQuantity.code = #ms

* component[qtcInterval] ^short = "Corrected QT interval in milliseconds"
* component[qtcInterval].code = CardiacMonitoringCS#qtc-interval "Corrected QT Interval (QTc)"
* component[qtcInterval].value[x] only Quantity
* component[qtcInterval].valueQuantity.system = $ucum
* component[qtcInterval].valueQuantity.code = #ms

* component[prInterval] ^short = "PR interval in milliseconds"
* component[prInterval].code = CardiacMonitoringCS#pr-interval "PR Interval"
* component[prInterval].value[x] only Quantity
* component[prInterval].valueQuantity.system = $ucum
* component[prInterval].valueQuantity.code = #ms

* component[qrsDuration] ^short = "QRS duration in milliseconds"
* component[qrsDuration].code = CardiacMonitoringCS#qrs-duration "QRS Duration"
* component[qrsDuration].value[x] only Quantity
* component[qrsDuration].valueQuantity.system = $ucum
* component[qrsDuration].valueQuantity.code = #ms

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS and
    GravityContext named gravityContext 0..1 MS
