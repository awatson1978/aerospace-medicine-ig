// Continuous Glucose Monitoring
// WP3: Abstract 52 (CGM in spaceflight)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: CGMMetricsCS
Id: cgm-metrics-cs
Title: "Continuous Glucose Monitoring Metrics Code System"
Description: "Standardized CGM metrics for spaceflight metabolic monitoring"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #time-in-range "Time in Range (TIR)" "Percentage of time glucose is within target range (70-180 mg/dL)"
* #glucose-variability-cv "Glucose Variability (CV%)" "Coefficient of variation of glucose readings"
* #mean-glucose "Mean Glucose" "Average glucose level over reporting period"
* #gmi "Glucose Management Indicator (GMI)" "Estimated HbA1c based on mean glucose"
* #hypo-events "Hypoglycemic Events" "Number of glucose readings below 54 mg/dL"
* #hyper-events "Hyperglycemic Events" "Number of glucose readings above 250 mg/dL"
* #sensor-wear-pct "Sensor Wear Percentage" "Percentage of time CGM sensor was active and reporting"
* #time-below-range "Time Below Range (TBR)" "Percentage of time glucose below 70 mg/dL"
* #time-above-range "Time Above Range (TAR)" "Percentage of time glucose above 180 mg/dL"

CodeSystem: CGMDeviceTypeCS
Id: cgm-device-type-cs
Title: "CGM Device Type Code System"
Description: "Types of continuous glucose monitoring devices"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dexcom-g7 "Dexcom G7" "Dexcom G7 continuous glucose monitoring system"
* #libre-3 "FreeStyle Libre 3" "Abbott FreeStyle Libre 3 flash glucose monitoring system"
* #guardian-4 "Guardian Sensor 4" "Medtronic Guardian Sensor 4 CGM system"
* #eversense-e3 "Eversense E3" "Senseonics Eversense E3 implantable CGM system"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: CGMMetricsVS
Id: cgm-metrics-vs
Title: "CGM Metrics Value Set"
Description: "Standardized CGM metrics"
* ^experimental = false
* ^status = #active
* include codes from system CGMMetricsCS

ValueSet: CGMDeviceTypeVS
Id: cgm-device-type-vs
Title: "CGM Device Type Value Set"
Description: "Types of CGM devices"
* ^experimental = false
* ^status = #active
* include codes from system CGMDeviceTypeCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceCGMDevice
Parent: Device
Id: space-cgm-device
Title: "Space CGM Device"
Description: "Continuous glucose monitoring device used during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* type 1..1 MS
* type from CGMDeviceTypeVS (extensible)
* type ^short = "CGM device type"

* patient 0..1 MS
* patient only Reference(Astronaut)

* deviceName 0..* MS
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS

* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    sensorDuration 0..1 and
    measurementRange 0..1

* property[sensorDuration] ^short = "Maximum sensor wear duration in days"
* property[sensorDuration].type = $sct#410670002 "Duration of device use"

* property[measurementRange] ^short = "Glucose measurement range"
* property[measurementRange].type = $sct#118560000 "Measurement range"

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: SpaceCGMObservation
Parent: Observation
Id: space-cgm-observation
Title: "Space CGM Observation"
Description: "Continuous glucose monitoring observation during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#99504-3 "Glucose [Mass/volume] in Interstitial fluid"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/dL
* valueQuantity ^short = "Interstitial glucose level in mg/dL"

* device 0..1 MS
* device only Reference(SpaceCGMDevice)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    timeInRange 0..1 and
    glucoseVariability 0..1 and
    meanGlucose 0..1 and
    hypoEvents 0..1 and
    hyperEvents 0..1

* component[timeInRange] ^short = "Percentage of time in target glucose range"
* component[timeInRange].code = CGMMetricsCS#time-in-range "Time in Range (TIR)"
* component[timeInRange].value[x] only Quantity
* component[timeInRange].valueQuantity.system = $ucum
* component[timeInRange].valueQuantity.code = #%

* component[glucoseVariability] ^short = "Coefficient of variation of glucose"
* component[glucoseVariability].code = CGMMetricsCS#glucose-variability-cv "Glucose Variability (CV%)"
* component[glucoseVariability].value[x] only Quantity
* component[glucoseVariability].valueQuantity.system = $ucum
* component[glucoseVariability].valueQuantity.code = #%

* component[meanGlucose] ^short = "Mean glucose over reporting period"
* component[meanGlucose].code = CGMMetricsCS#mean-glucose "Mean Glucose"
* component[meanGlucose].value[x] only Quantity
* component[meanGlucose].valueQuantity.system = $ucum
* component[meanGlucose].valueQuantity.code = #mg/dL

* component[hypoEvents] ^short = "Number of hypoglycemic events"
* component[hypoEvents].code = CGMMetricsCS#hypo-events "Hypoglycemic Events"
* component[hypoEvents].value[x] only integer

* component[hyperEvents] ^short = "Number of hyperglycemic events"
* component[hyperEvents].code = CGMMetricsCS#hyper-events "Hyperglycemic Events"
* component[hyperEvents].value[x] only integer

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: SpaceCGMSummary
Parent: DiagnosticReport
Id: space-cgm-summary
Title: "Space CGM Summary Report"
Description: "Summary report of CGM data over a reporting period during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code = $loinc#97151-5 "Glucose monitoring report"
* code ^short = "CGM summary report"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod ^short = "Reporting window (e.g., 7-day, 14-day)"

* result 0..* MS
* result only Reference(SpaceCGMObservation)
* result ^short = "Individual CGM observations in this report"

* conclusion 0..1 MS
* conclusion ^short = "Clinical interpretation of CGM data and metabolic status"

* extension contains
    DiagnosticReportMissionContext named missionContext 0..1 MS
