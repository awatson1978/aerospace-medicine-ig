// Exercise and Fitness Example Instances
// Concrete examples for ISS T2 treadmill sessions and EVS tracking

Alias: $pa-temp = http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes
Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category
Alias: SpaceExerciseModCS = http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs

// =====================================================
// ENCOUNTER: ISS Expedition 75
// =====================================================

Instance: ISS-Exp75-InFlight
InstanceOf: Encounter
Title: "ISS Expedition 75 In-Flight Period"
Description: "Encounter representing the in-flight period of ISS Expedition 75"
Usage: #example

* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/AstronautExample)
* period.start = "2025-03-01T00:00:00Z"

// =====================================================
// DEVICE: ISS T2 Treadmill
// =====================================================

Instance: ISS-T2-Treadmill
InstanceOf: Device
Title: "ISS T2 Treadmill"
Description: "Treadmill 2 (T2) on the International Space Station with vibration isolation"
Usage: #example

* deviceName.name = "Treadmill 2 with Vibration Isolation and Stabilization (TVIS)"
* deviceName.type = #user-friendly-name
* type.text = "Treadmill with vibration isolation"
* manufacturer = "NASA"
* modelNumber = "T2-TVIS"
* status = #active

// =====================================================
// ACTIVITY MEASURES
// =====================================================

Instance: ISS-T2-Run-Type-001
InstanceOf: SpaceExerciseActivityMeasure
Title: "ISS T2 Treadmill Run - Activity Type"
Description: "Activity-based measure indicating the type of ISS T2 treadmill running."
Usage: #example

* status = #final
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T13:00:00Z"

// Base PA coding: running
* code.coding[basePA].system = $loinc
* code.coding[basePA].code = #74010-0
* code.coding[basePA].display = "Type of exercise"

// Space-specific modality
* code.coding[spaceModality].system = SpaceExerciseModCS
* code.coding[spaceModality].code = #treadmill
* code.coding[spaceModality].display = "Treadmill running in microgravity"

// This measure might simply be a flag, so we can store 1 = 'performed'
* valueQuantity.value = 1
* valueQuantity.unit = "{activity}"
* valueQuantity.system = $ucum
* valueQuantity.code = #{activity}

Instance: ISS-T2-Run-Duration-001
InstanceOf: SpaceExerciseActivityMeasure
Title: "ISS T2 Treadmill Run - Duration"
Description: "Activity-based measure capturing duration (minutes) of an ISS T2 treadmill session."
Usage: #example

* status = #final
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T13:30:00Z"

// PA-style measure: duration
* code.coding[basePA].system = $pa-temp
* code.coding[basePA].code = #duration
* code.coding[basePA].display = "Duration of physical activity"

// Space modality slice
* code.coding[spaceModality].system = SpaceExerciseModCS
* code.coding[spaceModality].code = #treadmill

* valueQuantity.value = 30
* valueQuantity.unit = "min"
* valueQuantity.system = $ucum
* valueQuantity.code = #min

Instance: ISS-T2-Run-MeanHR-001
InstanceOf: SpaceExerciseActivityMeasure
Title: "ISS T2 Treadmill Run - Mean Heart Rate"
Description: "Mean heart rate during an ISS treadmill session."
Usage: #example

* status = #final
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T13:30:00Z"

// PA/LOINC-style HR measure
* code.coding[basePA].system = $loinc
* code.coding[basePA].code = #8867-4
* code.coding[basePA].display = "Heart rate"

* code.coding[spaceModality].system = SpaceExerciseModCS
* code.coding[spaceModality].code = #treadmill

* valueQuantity.value = 148
* valueQuantity.unit = "beats/min"
* valueQuantity.system = $ucum
* valueQuantity.code = #/min

// =====================================================
// ACTIVITY GROUP PANEL
// =====================================================

Instance: ISS-T2-Run-Group-001
InstanceOf: SpaceExerciseActivityGroup
Title: "ISS T2 Treadmill Session - Activity Group"
Description: "Panel Observation representing a single 30-minute ISS T2 treadmill session."
Usage: #example

* status = #final
* subject = Reference(Patient/AstronautExample)
* effectivePeriod.start = "2025-06-01T13:00:00Z"
* effectivePeriod.end = "2025-06-01T13:30:00Z"

// PA panel coding (PAPanel)
* code.coding[paPanel].system = $pa-temp
* code.coding[paPanel].code = #PAPanel
* code.coding[paPanel].display = "Physical activity panel"
* code.text = "ISS T2 treadmill session"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

// Device + harness load
* extension[exerciseDevice].valueReference = Reference(Device/ISS-T2-Treadmill)
* extension[harnessLoad].valueQuantity.value = 75
* extension[harnessLoad].valueQuantity.unit = "%"
* extension[harnessLoad].valueQuantity.system = $ucum
* extension[harnessLoad].valueQuantity.code = #%

// Members (the measures defined above)
* hasMember[0] = Reference(Observation/ISS-T2-Run-Type-001)
* hasMember[1] = Reference(Observation/ISS-T2-Run-Duration-001)
* hasMember[2] = Reference(Observation/ISS-T2-Run-MeanHR-001)

// =====================================================
// EVS MINUTES PER WEEK
// =====================================================

Instance: ISS-EVS-MinPerWeek-2025W23
InstanceOf: SpaceEVSMinutesPerWeek
Title: "ISS EVS Minutes per Week - Week 23 2025"
Description: "EVS minutes per week derived from ISS treadmill and ARED exercise sessions during Expedition 75, mission week 23."
Usage: #example

* status = #final
* subject = Reference(Patient/AstronautExample)
* effectivePeriod.start = "2025-06-02T00:00:00Z"
* effectivePeriod.end = "2025-06-09T00:00:00Z"

// EVS LOINC / PA semantics remain as in PA IG
* code.coding[loinc].system = $loinc
* code.coding[loinc].code = #82290-8
* code.coding[loinc].display = "Frequency of moderate to vigorous aerobic physical activity"

// Total MVPA minutes this week
* valueQuantity.value = 420
* valueQuantity.unit = "min/wk"
* valueQuantity.system = $ucum
* valueQuantity.code = #min/wk

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

// Derived from one or more activity groups
* extension[derivedFromGroup][0].valueReference = Reference(Observation/ISS-T2-Run-Group-001)

// =====================================================
// EXERCISE SESSION PROCEDURE
// =====================================================

Instance: ISS-Exercise-Session-Proc-001
InstanceOf: SpaceExerciseSession
Title: "ISS T2 Treadmill Session - Procedure"
Description: "Procedure resource representing a single ISS T2 treadmill session linked to PA artifacts and the SpaceExerciseActivityGroup panel."
Usage: #example

* status = #completed
* code.text = "ISS T2 treadmill running session"
* subject = Reference(Patient/AstronautExample)
* performedPeriod.start = "2025-06-01T13:00:00Z"
* performedPeriod.end = "2025-06-01T13:30:00Z"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

// Encounter reference
* encounter = Reference(Encounter/ISS-Exp75-InFlight)

// Devices (T2 Treadmill)
* usedReference[0] = Reference(Device/ISS-T2-Treadmill)

// Note: Activity group observations are linked via the Encounter or separate references
// report element can only reference DiagnosticReport in FHIR R4
