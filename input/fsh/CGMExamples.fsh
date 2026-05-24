// CGM Examples
// WP11: CGM device instance, 14-day glucose summary

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

// =====================================================
// DEVICE: Dexcom G7 CGM
// =====================================================

Instance: CGM-Dexcom-G7-001
InstanceOf: SpaceCGMDevice
Title: "Dexcom G7 CGM Device"
Description: "Dexcom G7 continuous glucose monitor used during ISS expedition"
Usage: #example

* type = CGMDeviceTypeCS#dexcom-g7 "Dexcom G7"
* deviceName.name = "Dexcom G7 Serial #DG7-2028-001"
* deviceName.type = #user-friendly-name
* manufacturer = "Dexcom, Inc."
* modelNumber = "G7"
* serialNumber = "DG7-2028-001"
* patient = Reference(Patient/ExampleAstronaut)
* status = #active
* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)

// =====================================================
// OBSERVATION: CGM Reading
// =====================================================

Instance: CGM-Reading-FD15
InstanceOf: SpaceCGMObservation
Title: "CGM Glucose Reading - Flight Day 15"
Description: "Single CGM glucose reading on flight day 15 with summary metrics"
Usage: #example

* status = #final
* category = $obs-cat#laboratory "Laboratory"
* code = $loinc#99504-3 "Glucose [Mass/volume] in Interstitial fluid"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-03-30T14:00:00Z"
* valueQuantity.value = 105
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/dL
* device = Reference(Device/CGM-Dexcom-G7-001)

* component[timeInRange].code = CGMMetricsCS#time-in-range "Time in Range (TIR)"
* component[timeInRange].valueQuantity.value = 85
* component[timeInRange].valueQuantity.unit = "%"
* component[timeInRange].valueQuantity.system = $ucum
* component[timeInRange].valueQuantity.code = #%

* component[glucoseVariability].code = CGMMetricsCS#glucose-variability-cv "Glucose Variability (CV%)"
* component[glucoseVariability].valueQuantity.value = 22.5
* component[glucoseVariability].valueQuantity.unit = "%"
* component[glucoseVariability].valueQuantity.system = $ucum
* component[glucoseVariability].valueQuantity.code = #%

* component[meanGlucose].code = CGMMetricsCS#mean-glucose "Mean Glucose"
* component[meanGlucose].valueQuantity.value = 108
* component[meanGlucose].valueQuantity.unit = "mg/dL"
* component[meanGlucose].valueQuantity.system = $ucum
* component[meanGlucose].valueQuantity.code = #mg/dL

* component[hypoEvents].code = CGMMetricsCS#hypo-events "Hypoglycemic Events"
* component[hypoEvents].valueInteger = 0

* component[hyperEvents].code = CGMMetricsCS#hyper-events "Hyperglycemic Events"
* component[hyperEvents].valueInteger = 2

* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
* extension[flightDay].valueInteger = 15

// =====================================================
// DIAGNOSTIC REPORT: 14-Day CGM Summary
// =====================================================

Instance: CGM-Summary-14Day
InstanceOf: SpaceCGMSummary
Title: "14-Day CGM Summary Report"
Description: "14-day CGM summary report for spaceflight metabolic monitoring"
Usage: #example

* status = #final
* code = $loinc#97151-5 "Glucose monitoring report"
* subject = Reference(Patient/ExampleAstronaut)
* effectivePeriod.start = "2028-03-16T00:00:00Z"
* effectivePeriod.end = "2028-03-30T00:00:00Z"
* result[0] = Reference(Observation/CGM-Reading-FD15)
* conclusion = "14-day CGM summary: TIR 85%, mean glucose 108 mg/dL, CV 22.5%. No significant hypoglycemia. Mild hyperglycemic excursions noted post-exercise. Metabolic status within normal limits for spaceflight."
* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
