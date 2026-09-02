// Radiation Exposure Tracking Profiles
// Profiles, extensions and terminology for space radiation dosimetry.

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// EXTENSIONS
// =====================================================

Extension: MissionContext
Id: mission-context
Title: "Mission Context"
Description: "Links clinical observations and events to specific space missions"
Context: Observation, Procedure, Condition, MedicationAdministration, CarePlan, AdverseEvent, DiagnosticReport, Specimen, RiskAssessment, Device, ServiceRequest, CommunicationRequest, SupplyDelivery, Encounter, PlanDefinition, Communication
* ^status = #active
* value[x] only Reference(Encounter)
* valueReference ^short = "Reference to the space mission encounter"

Extension: RadiationType
Id: radiation-type
Title: "Space Radiation Type"
Description: "Type of space radiation exposure"
Context: Observation
* value[x] only CodeableConcept
* valueCodeableConcept from SpaceRadiationTypeVS (required)

Extension: ShieldingMass
Id: shielding-mass
Title: "Shielding Mass"
Description: "Effective shielding mass in g/cm²"
Context: Observation
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #g/cm2

Extension: RadiationCountermeasures
Id: radiation-countermeasures
Title: "Radiation Countermeasures"
Description: "Protective measures taken during radiation exposure"
Context: Observation
* value[x] only CodeableConcept
* valueCodeableConcept from RadiationCountermeasuresVS (extensible)

Extension: DiagnosticReportMissionContext
Id: diagnostic-report-mission-context
Title: "Mission Context for Diagnostic Reports"
Description: "Links diagnostic reports to specific space missions"
Context: DiagnosticReport
* value[x] only Reference(Encounter)
* valueReference ^short = "Reference to the space mission encounter"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceRadiationDoseCodesVS
Id: space-radiation-dose-codes-vs
Title: "Space Radiation Dose Measurement Codes"
Description: "Codes for radiation dose measurements in space environments: LOINC total-dose and dose-rate codes plus source-specific dose codes from the Space Radiation Code System."
* ^experimental = true
* ^status = #active
* include $loinc#73536-5 "Radiation dose total"
* include $loinc#77638-4 "Irradiation dose rate"
* include SpaceRadiationCS#gcr-dose
* include SpaceRadiationCS#spe-dose
* include SpaceRadiationCS#trapped-dose
* include SpaceRadiationCS#secondary-dose
* include SpaceRadiationCS#neutron-dose

ValueSet: OrganDoseCodesVS
Id: organ-dose-codes-vs
Title: "Organ-Specific Dose Codes"
Description: "Codes for organ-specific radiation dose measurements (bone marrow, lens of eye, skin, CNS, thyroid, gonads, lung, GI tract, whole body)."
* ^experimental = true
* ^status = #active
* include SpaceRadiationCS#bone-marrow-dose
* include SpaceRadiationCS#eye-lens-dose
* include SpaceRadiationCS#skin-dose
* include SpaceRadiationCS#cns-dose
* include SpaceRadiationCS#thyroid-dose
* include SpaceRadiationCS#gonad-dose
* include SpaceRadiationCS#lung-dose
* include SpaceRadiationCS#gi-tract-dose
* include SpaceRadiationCS#whole-body-dose

// =====================================================
// SPACE RADIATION CODE SYSTEM
// =====================================================

CodeSystem: SpaceRadiationCS
Id: space-radiation-cs
Title: "Space Radiation Code System"
Description: "Measurement, dose-accumulation, organ-dose, detector-property and reporting concepts used by the space radiation profiles. Radiation types are in SpaceRadiationTypeCS; detector hardware types are in RadiationDetectorTypeCS."
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^count = 36

// Measurement components
* #let "Linear Energy Transfer" "Average linear energy transfer of the radiation field (keV/um)"
* #quality-factor "Radiation Quality Factor" "Dimensionless quality factor used to convert absorbed dose to dose equivalent"
* #shielding-effectiveness "Shielding Effectiveness" "Fractional reduction in dose attributable to shielding (%)"
* #exposure-duration "Exposure Duration" "Duration of the exposure interval (h)"
* #compliance-status "Compliance Status" "Compliance of accumulated dose with the applicable exposure limits"
* #risk-assessment "Radiation Risk Assessment" "Qualitative radiation health risk assessment"

// Source-specific dose codes
* #gcr-dose "Galactic Cosmic Radiation Dose"
* #spe-dose "Solar Particle Event Dose"
* #trapped-dose "Trapped Radiation Dose"
* #secondary-dose "Secondary Radiation Dose"
* #neutron-dose "Neutron Radiation Dose"

// Accumulation-period dose codes
* #career-dose "Career Radiation Dose"
* #mission-dose "Mission Radiation Dose"
* #annual-dose "Annual Radiation Dose"
* #monthly-dose "30-Day Radiation Dose"
* #weekly-dose "Weekly Radiation Dose"
* #daily-dose "Daily Radiation Dose"

// Organ-specific dose codes
* #bone-marrow-dose "Bone Marrow Dose"
* #eye-lens-dose "Eye Lens Dose"
* #skin-dose "Skin Dose"
* #cns-dose "Central Nervous System Dose"
* #thyroid-dose "Thyroid Dose"
* #gonad-dose "Gonad Dose"
* #lung-dose "Lung Dose"
* #gi-tract-dose "GI Tract Dose"
* #whole-body-dose "Whole Body Dose"

// Detector property types (Device.property.type)
* #sensitivity "Detector Sensitivity" "Minimum detectable dose"
* #energy-range-min "Minimum Energy Range"
* #energy-range-max "Maximum Energy Range"
* #dosimeter-type "Dosimeter Type"
* #calibration-date "Calibration Date"
* #operating-temp-min "Minimum Operating Temperature"
* #operating-temp-max "Maximum Operating Temperature"
* #measurement-accuracy "Measurement Accuracy"

// Reports
* #radiation-summary "Space Radiation Exposure Summary"
* #dose-history "Radiation Dose History"

// =====================================================
// RADIATION EXPOSURE PROFILE
// =====================================================

Profile: SpaceRadiationExposure
Parent: Observation
Id: space-radiation-exposure
Title: "Space Radiation Exposure"
Description: "Radiation dose measurement for a crew member during a space mission, with mission context, radiation type, shielding and countermeasure extensions and detailed dosimetry components."
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains radiationDose 1..1 MS
* category[radiationDose] = $loinc#73569-6 "Radiation dose and image quality indicators"

* code MS
* code from SpaceRadiationDoseCodesVS (extensible)
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from RadiationDoseUnitsVS (required)

// space-specific extensions with proper contexts
* extension contains 
    MissionContext named missionContext 0..1 MS and
    RadiationType named radiationType 0..1 MS and
    ShieldingMass named shieldingMass 0..1 and
    RadiationCountermeasures named countermeasures 0..*

// Device information
* device 0..1 MS
* device only Reference(RadiationDetector)

// Enhanced component structure for detailed dosimetry
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    organDose 0..* and
    doseRate 0..1 and
    linearEnergyTransfer 0..1 and
    radiationQualityFactor 0..1 and
    shieldingEffectiveness 0..1 and
    exposureDuration 0..1

* component[organDose] ^short = "Organ-specific dose"
* component[organDose].code from OrganDoseCodesVS (extensible)
* component[organDose].value[x] only Quantity
* component[organDose].valueQuantity.system = $ucum
* component[organDose].valueQuantity.code from RadiationDoseUnitsVS

* component[doseRate] ^short = "Dose rate at time of measurement"
* component[doseRate].code = $loinc#77638-4 "Irradiation dose rate"
* component[doseRate].value[x] only Quantity
* component[doseRate].valueQuantity.system = $ucum
* component[doseRate].valueQuantity.code = #uSv/h

* component[linearEnergyTransfer] ^short = "Average LET of radiation field"
* component[linearEnergyTransfer].code = SpaceRadiationCS#let "Linear Energy Transfer"
* component[linearEnergyTransfer].value[x] only Quantity
* component[linearEnergyTransfer].valueQuantity.system = $ucum
* component[linearEnergyTransfer].valueQuantity.code = #keV/um

* component[radiationQualityFactor] ^short = "Radiation quality factor"
* component[radiationQualityFactor].code = SpaceRadiationCS#quality-factor "Radiation Quality Factor"
* component[radiationQualityFactor].value[x] only Quantity
* component[radiationQualityFactor].valueQuantity.system = $ucum
* component[radiationQualityFactor].valueQuantity.code = #1

* component[shieldingEffectiveness] ^short = "Shielding effectiveness percentage"
* component[shieldingEffectiveness].code = SpaceRadiationCS#shielding-effectiveness "Shielding Effectiveness"
* component[shieldingEffectiveness].value[x] only Quantity
* component[shieldingEffectiveness].valueQuantity.system = $ucum
* component[shieldingEffectiveness].valueQuantity.code = #%

* component[exposureDuration] ^short = "Duration of radiation exposure"
* component[exposureDuration].code = SpaceRadiationCS#exposure-duration "Exposure Duration"
* component[exposureDuration].value[x] only Quantity
* component[exposureDuration].valueQuantity.system = $ucum
* component[exposureDuration].valueQuantity.code = #h

// =====================================================
// RADIATION DETECTOR PROFILE
// =====================================================

Profile: RadiationDetector
Parent: Device
Id: radiation-detector
Title: "Radiation Detection Device"
Description: "Device profile for personal and area radiation monitors used in spaceflight, with detector-property slices."
* ^status = #active

* deviceName 1..* MS
* type 1..1 MS
* type from DosimeterTypeVS (extensible)
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* status MS

// Device.property.value[x] supports valueQuantity and valueCode in R4
* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    detectorSensitivity 0..1 and
    energyRangeMin 0..1 and
    energyRangeMax 0..1 and
    dosimeterType 0..1 and
    calibrationDate 0..1 and
    operatingTempMin 0..1 and
    operatingTempMax 0..1 and
    measurementAccuracy 0..1

* property[detectorSensitivity] ^short = "Minimum detectable radiation level"
* property[detectorSensitivity].type = SpaceRadiationCS#sensitivity "Detector Sensitivity"
* property[detectorSensitivity].valueQuantity.system = $ucum
* property[detectorSensitivity].valueQuantity.code = #uSv

* property[energyRangeMin] ^short = "Minimum detection energy"
* property[energyRangeMin].type = SpaceRadiationCS#energy-range-min "Minimum Energy Range"
* property[energyRangeMin].valueQuantity.system = $ucum
* property[energyRangeMin].valueQuantity.code = #keV

* property[energyRangeMax] ^short = "Maximum detection energy" 
* property[energyRangeMax].type = SpaceRadiationCS#energy-range-max "Maximum Energy Range"
* property[energyRangeMax].valueQuantity.system = $ucum
* property[energyRangeMax].valueQuantity.code = #MeV

* property[dosimeterType] ^short = "Type of dosimeter technology"
* property[dosimeterType].type = SpaceRadiationCS#dosimeter-type "Dosimeter Type"
* property[dosimeterType].valueCode from DosimeterTypeVS (extensible)

* property[calibrationDate] ^short = "Days since last calibration"
* property[calibrationDate].type = SpaceRadiationCS#calibration-date "Calibration Date"
* property[calibrationDate].valueQuantity.system = $ucum
* property[calibrationDate].valueQuantity.code = #d

* property[operatingTempMin] ^short = "Minimum operating temperature"
* property[operatingTempMin].type = SpaceRadiationCS#operating-temp-min "Minimum Operating Temperature"
* property[operatingTempMin].valueQuantity.system = $ucum
* property[operatingTempMin].valueQuantity.code = #Cel

* property[operatingTempMax] ^short = "Maximum operating temperature"
* property[operatingTempMax].type = SpaceRadiationCS#operating-temp-max "Maximum Operating Temperature"
* property[operatingTempMax].valueQuantity.system = $ucum
* property[operatingTempMax].valueQuantity.code = #Cel

* property[measurementAccuracy] ^short = "Measurement accuracy percentage"
* property[measurementAccuracy].type = SpaceRadiationCS#measurement-accuracy "Measurement Accuracy"
* property[measurementAccuracy].valueQuantity.system = $ucum
* property[measurementAccuracy].valueQuantity.code = #%

// =====================================================
// RADIATION SUMMARY REPORT
// =====================================================

Profile: SpaceRadiationSummary
Parent: DiagnosticReport
Id: space-radiation-summary
Title: "Space Radiation Exposure Summary"
Description: "Diagnostic report summarizing a crew member's radiation exposure over a mission or reporting period."
* ^status = #active

* status MS
* category 1..* MS
* category = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = SpaceRadiationCS#radiation-summary "Space Radiation Exposure Summary"
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod ^short = "Time period covered by this summary"

// Mission context using the correct extension
* extension contains DiagnosticReportMissionContext named missionContext 0..1 MS

// Results - references to individual dose measurements
* result MS
* result only Reference(SpaceRadiationExposure or CumulativeRadiationDose)

// Enhanced conclusion with structured recommendations
* conclusion MS
* conclusion ^short = "Radiation exposure assessment, risk analysis, and recommendations"

// Media for dose history charts and visualizations
* media 0..* MS
* media ^short = "Dose history charts, trend analysis, and risk projections"

// Performer - radiation safety officer or flight surgeon
* performer 1..* MS
* performer only Reference(Practitioner or Organization)

// Enhanced presentedForm for detailed reports
* presentedForm 0..* MS
* presentedForm ^short = "Complete radiation exposure report in PDF or other format"

// =====================================================
// CUMULATIVE RADIATION DOSE PROFILE
// =====================================================

Profile: CumulativeRadiationDose
Parent: SpaceRadiationExposure
Id: cumulative-radiation-dose
Title: "Cumulative Radiation Dose"
Description: "Cumulative radiation dose over daily, weekly, 30-day, annual, mission and career periods."
* ^status = #active

* code = $loinc#73536-5 "Radiation dose total"
* effective[x] only Period
* effectivePeriod 1..1 MS
* effectivePeriod ^short = "Time period over which dose was accumulated"

* component contains
    careerDose 0..1 and
    missionDose 0..1 and
    annualDose 0..1 and
    monthlyDose 0..1 and
    weeklyDose 0..1 and
    dailyDose 0..1 and
    riskAssessment 0..1 and
    complianceStatus 0..1

* component[careerDose] ^short = "Total career radiation dose"
* component[careerDose].code = SpaceRadiationCS#career-dose "Career Radiation Dose"

* component[missionDose] ^short = "Total mission radiation dose"
* component[missionDose].code = SpaceRadiationCS#mission-dose "Mission Radiation Dose"

* component[annualDose] ^short = "Annual radiation dose"
* component[annualDose].code = SpaceRadiationCS#annual-dose "Annual Radiation Dose"

* component[monthlyDose] ^short = "30-day rolling radiation dose"
* component[monthlyDose].code = SpaceRadiationCS#monthly-dose "30-Day Radiation Dose"

* component[weeklyDose] ^short = "7-day rolling radiation dose"
* component[weeklyDose].code = SpaceRadiationCS#weekly-dose "Weekly Radiation Dose"

* component[dailyDose] ^short = "Daily radiation dose"
* component[dailyDose].code = SpaceRadiationCS#daily-dose "Daily Radiation Dose"

* component[riskAssessment] ^short = "Radiation health risk assessment"
* component[riskAssessment].code = SpaceRadiationCS#risk-assessment "Radiation Risk Assessment"
* component[riskAssessment].value[x] only CodeableConcept

* component[complianceStatus] ^short = "Compliance with radiation exposure limits"
* component[complianceStatus].code = SpaceRadiationCS#compliance-status "Compliance Status"
* component[complianceStatus].value[x] only CodeableConcept