//  Radiation Exposure Tracking Profiles
// FIXED VERSION - Addresses harmonization issues and extension context problems

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $aerospace = http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system

// =====================================================
// CORRECTED EXTENSIONS WITH PROPER CONTEXTS
// =====================================================

Extension: MissionContext
Id: mission-context
Title: "Mission Context"
Description: "Links radiation exposure to specific space missions"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* value[x] only Reference(Encounter)
* valueReference ^short = "Reference to the space mission encounter"

Extension: RadiationType
Id: radiation-type
Title: "Space Radiation Type"
Description: "Type of space radiation exposure"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from SpaceRadiationTypeVS (required)

Extension: ShieldingMass
Id: shielding-mass
Title: "Shielding Mass"
Description: "Effective shielding mass in g/cm²"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #g/cm2

Extension: RadiationCountermeasures
Id: radiation-countermeasures
Title: "Radiation Countermeasures"
Description: "Protective measures taken during radiation exposure"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from RadiationCountermeasuresVS (extensible)

Extension: DiagnosticReportMissionContext
Id: diagnostic-report-mission-context
Title: "Mission Context for Diagnostic Reports"
Description: "Links diagnostic reports to specific space missions"
* ^context[0].type = #element
* ^context[0].expression = "DiagnosticReport"
* value[x] only Reference(Encounter)
* valueReference ^short = "Reference to the space mission encounter"

// =====================================================
// COMPLETED VALUE SETS WITH ALL REFERENCED CODES
// =====================================================

ValueSet: SpaceRadiationTypeVSComplete
Id: space-radiation-type-vs-complete
Title: "Complete Space Radiation Types"
Description: "Comprehensive list of ionizing radiation types encountered in space"
* ^experimental = false
* ^status = #active
* include codes from system SpaceRadiationTypeCS
* include $sct#46316000 "Cosmic radiation"
* include $sct#242796004 "Exposure to cosmic radiation" 
* include $sct#138899005 "H/O: radiation exposure"
* include $sct#218190002 "Exposure to radiation (event)"

ValueSet: RadiationCountermeasuresVSComplete
Id: radiation-countermeasures-vs-complete
Title: "Complete Radiation Countermeasures"
Description: "Comprehensive list of protective measures against space radiation"
* ^experimental = false
* ^status = #active
* include codes from system RadiationCountermeasuresCS
* include $sct#182836005 "Review of medication"
* include $sct#225334002 "Shelter procedure"
* include $sct#182813001 "Training activity"

ValueSet: SpaceRadiationDoseCodesVSComplete
Id: space-radiation-dose-codes-vs-complete
Title: "Complete Space Radiation Dose Measurement Codes"
Description: "Comprehensive codes for radiation dose measurements in space environments"
* ^experimental = false
* ^status = #active
* include $loinc#73536-5 "Radiation dose total"
* include $loinc#77638-4 "Irradiation dose rate"
* include $aerospace#gcr-dose "Galactic Cosmic Radiation Dose"
* include $aerospace#spe-dose "Solar Particle Event Dose"
* include $aerospace#trapped-dose "Trapped Radiation Dose"
* include $aerospace#secondary-dose "Secondary Radiation Dose"
* include $aerospace#neutron-dose "Neutron Radiation Dose"

ValueSet: RadiationDetectorTypeVSComplete
Id: radiation-detector-type-vs-complete
Title: "Complete Radiation Detector Types"
Description: "Comprehensive list of radiation detection devices used in space"
* ^experimental = false
* ^status = #active
* include codes from system RadiationDetectorTypeCS
* include $aerospace#tld "Thermoluminescent Dosimeter"
* include $aerospace#osld "Optically Stimulated Luminescence Detector"
* include $aerospace#epd "Electronic Personal Dosimeter"
* include $aerospace#tepc "Tissue Equivalent Proportional Counter"
* include $aerospace#area-monitor "Area Radiation Monitor"
* include $aerospace#neutron-detector "Neutron Detection System"
* include $aerospace#spectrometer "Radiation Spectrometer"

ValueSet: OrganDoseCodesVSComplete
Id: organ-dose-codes-vs-complete
Title: "Complete Organ-Specific Dose Codes"
Description: "Comprehensive codes for organ-specific radiation dose measurements"
* ^experimental = false
* ^status = #active
* include $aerospace#bone-marrow-dose "Bone Marrow Dose"
* include $aerospace#eye-lens-dose "Eye Lens Dose"
* include $aerospace#skin-dose "Skin Dose"
* include $aerospace#cns-dose "Central Nervous System Dose"
* include $aerospace#thyroid-dose "Thyroid Dose"
* include $aerospace#gonad-dose "Gonad Dose"
* include $aerospace#lung-dose "Lung Dose"
* include $aerospace#gi-tract-dose "GI Tract Dose"

// =====================================================
// ENHANCED AEROSPACE CODE SYSTEM
// =====================================================

CodeSystem: AerospaceCodeSystemEnhanced
Id: aerospace-code-system-enhanced
Title: "Enhanced Aerospace Medicine Code System"
Description: "Comprehensive code system for aerospace medicine concepts including all referenced codes"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #shielding-effectiveness "Shielding Effectiveness"
* #exposure-duration "Exposure Duration" 
* #compliance-status "Compliance Status"
* #operating-temp-min "Minimum Operating Temperature"
* #operating-temp-max "Maximum Operating Temperature"


// Radiation Detection and Monitoring
* #sensitivity "Detector Sensitivity"
* #energy-range-min "Minimum Energy Range"
* #energy-range-max "Maximum Energy Range"
* #dosimeter-type "Dosimeter Type"
* #let "Linear Energy Transfer"
* #quality-factor "Radiation Quality Factor"
* #calibration-date "Calibration Date"
* #operating-temperature "Operating Temperature"
* #measurement-accuracy "Measurement Accuracy"

// Radiation Dose Types
* #career-dose "Career Radiation Dose"
* #mission-dose "Mission Radiation Dose"
* #annual-dose "Annual Radiation Dose"
* #monthly-dose "30-Day Radiation Dose"
* #weekly-dose "Weekly Radiation Dose"
* #daily-dose "Daily Radiation Dose"
* #gcr-dose "Galactic Cosmic Radiation Dose"
* #spe-dose "Solar Particle Event Dose"
* #trapped-dose "Trapped Radiation Dose"
* #secondary-dose "Secondary Radiation Dose"
* #neutron-dose "Neutron Radiation Dose"

// Organ-Specific Doses
* #bone-marrow-dose "Bone Marrow Dose"
* #eye-lens-dose "Eye Lens Dose"
* #skin-dose "Skin Dose"
* #cns-dose "Central Nervous System Dose"
* #thyroid-dose "Thyroid Dose"
* #gonad-dose "Gonad Dose"
* #lung-dose "Lung Dose"
* #gi-tract-dose "GI Tract Dose"
* #whole-body-dose "Whole Body Dose"

// Radiation Detection Equipment
* #tld "Thermoluminescent Dosimeter"
* #osld "Optically Stimulated Luminescence Detector"
* #epd "Electronic Personal Dosimeter"
* #tepc "Tissue Equivalent Proportional Counter"
* #area-monitor "Area Radiation Monitor"
* #neutron-detector "Neutron Detection System"
* #spectrometer "Radiation Spectrometer"
* #passive "Passive Dosimeter"
* #active "Active Real-time Dosimeter"
* #area "Area Monitor"

// Mission and Location Context
* #iss-expedition "ISS Expedition"
* #lunar-mission "Lunar Mission"
* #mars-mission "Mars Mission"
* #eva-mission "Extravehicular Activity"
* #deep-space-mission "Deep Space Mission"
* #leo-mission "Low Earth Orbit Mission"
* #geo-mission "Geostationary Earth Orbit Mission"

// Reports and Summaries
* #radiation-summary "Space Radiation Exposure Summary"
* #dose-history "Radiation Dose History"
* #risk-assessment "Radiation Risk Assessment"
* #compliance-report "Radiation Compliance Report"

// =====================================================
// CORRECTED RADIATION EXPOSURE PROFILE
// =====================================================

Profile: SpaceRadiationExposure
Parent: Observation
Id: space-radiation-exposure
Title: "Space Radiation Exposure (Fixed)"
Description: "Corrected radiation dose measurement for space missions with proper extension contexts"
* ^version = "1.0.0"
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
* code from SpaceRadiationDoseCodesVSComplete (extensible)
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
* component[organDose].code from OrganDoseCodesVSComplete (extensible)
* component[organDose].value[x] only Quantity
* component[organDose].valueQuantity.system = $ucum
* component[organDose].valueQuantity.code from RadiationDoseUnitsVS

* component[doseRate] ^short = "Dose rate at time of measurement"
* component[doseRate].code = $loinc#77638-4 "Irradiation dose rate"
* component[doseRate].value[x] only Quantity
* component[doseRate].valueQuantity.system = $ucum
* component[doseRate].valueQuantity.code = #uSv/h

* component[linearEnergyTransfer] ^short = "Average LET of radiation field"
* component[linearEnergyTransfer].code = $aerospace#let "Linear Energy Transfer"
* component[linearEnergyTransfer].value[x] only Quantity
* component[linearEnergyTransfer].valueQuantity.system = $ucum
* component[linearEnergyTransfer].valueQuantity.code = #keV/um

* component[radiationQualityFactor] ^short = "Radiation quality factor"
* component[radiationQualityFactor].code = $aerospace#quality-factor "Radiation Quality Factor"
* component[radiationQualityFactor].value[x] only Quantity
* component[radiationQualityFactor].valueQuantity.system = $ucum
* component[radiationQualityFactor].valueQuantity.code = #1

* component[shieldingEffectiveness] ^short = "Shielding effectiveness percentage"
* component[shieldingEffectiveness].code = $aerospace#shielding-effectiveness "Shielding Effectiveness"
* component[shieldingEffectiveness].value[x] only Quantity
* component[shieldingEffectiveness].valueQuantity.system = $ucum
* component[shieldingEffectiveness].valueQuantity.code = #%

* component[exposureDuration] ^short = "Duration of radiation exposure"
* component[exposureDuration].code = $aerospace#exposure-duration "Exposure Duration"
* component[exposureDuration].value[x] only Quantity
* component[exposureDuration].valueQuantity.system = $ucum
* component[exposureDuration].valueQuantity.code = #h

// =====================================================
// FIXED RADIATION DETECTOR PROFILE
// =====================================================

Profile: RadiationDetector
Parent: Device
Id: radiation-detector
Title: "Radiation Detection Device (Fixed)"
Description: "Fixed device profile for radiation monitoring in space with properly constrained properties"
* ^version = "1.0.0"
* ^status = #active

* deviceName 1..* MS
* type 1..1 MS
* type from RadiationDetectorTypeVSComplete (extensible)
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* status MS

// FIXED: Simplified property definitions that work with Device.property structure
// Note: Device.property.value[x] supports: valueQuantity, valueCode, valueString, valueBoolean
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
* property[detectorSensitivity].type = $aerospace#sensitivity "Detector Sensitivity"
// Only constrain valueQuantity which is supported
* property[detectorSensitivity].valueQuantity.system = $ucum
* property[detectorSensitivity].valueQuantity.code = #uSv

* property[energyRangeMin] ^short = "Minimum detection energy"
* property[energyRangeMin].type = $aerospace#energy-range-min "Minimum Energy Range"
* property[energyRangeMin].valueQuantity.system = $ucum
* property[energyRangeMin].valueQuantity.code = #keV

* property[energyRangeMax] ^short = "Maximum detection energy" 
* property[energyRangeMax].type = $aerospace#energy-range-max "Maximum Energy Range"
* property[energyRangeMax].valueQuantity.system = $ucum
* property[energyRangeMax].valueQuantity.code = #MeV

* property[dosimeterType] ^short = "Type of dosimeter technology"
* property[dosimeterType].type = $aerospace#dosimeter-type "Dosimeter Type"
// Use valueCode instead of valueCode from value set
// * property[dosimeterType].valueCode from DosimeterTypeVS

* property[calibrationDate] ^short = "Last calibration date as string"
* property[calibrationDate].type = $aerospace#calibration-date "Calibration Date"
// Use valueString instead of valueDateTime which isn't supported
// * property[calibrationDate].valueString ^short = "Date of last calibration (ISO format)"

* property[operatingTempMin] ^short = "Minimum operating temperature"
* property[operatingTempMin].type = $aerospace#operating-temp-min "Minimum Operating Temperature"
* property[operatingTempMin].valueQuantity.system = $ucum
* property[operatingTempMin].valueQuantity.code = #Cel

* property[operatingTempMax] ^short = "Maximum operating temperature"
* property[operatingTempMax].type = $aerospace#operating-temp-max "Maximum Operating Temperature"
* property[operatingTempMax].valueQuantity.system = $ucum
* property[operatingTempMax].valueQuantity.code = #Cel

* property[measurementAccuracy] ^short = "Measurement accuracy percentage"
* property[measurementAccuracy].type = $aerospace#measurement-accuracy "Measurement Accuracy"
* property[measurementAccuracy].valueQuantity.system = $ucum
* property[measurementAccuracy].valueQuantity.code = #%

// =====================================================
// ENHANCED RADIATION SUMMARY REPORT
// =====================================================

Profile: SpaceRadiationSummary
Parent: DiagnosticReport
Id: space-radiation-summary
Title: "Space Radiation Exposure Summary (Fixed)"
Description: "Comprehensive radiation dose summary with proper mission context"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS
* category = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = $aerospace#radiation-summary "Space Radiation Exposure Summary"
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
// CUMULATIVE RADIATION DOSE PROFILE (FIXED)
// =====================================================

Profile: CumulativeRadiationDose
Parent: SpaceRadiationExposure
Id: cumulative-radiation-dose
Title: "Cumulative Radiation Dose (Fixed)"
Description: "Enhanced cumulative radiation dose tracking with comprehensive time periods"
* ^version = "1.0.0"
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
* component[careerDose].code = $aerospace#career-dose "Career Radiation Dose"

* component[missionDose] ^short = "Total mission radiation dose"
* component[missionDose].code = $aerospace#mission-dose "Mission Radiation Dose"

* component[annualDose] ^short = "Annual radiation dose"
* component[annualDose].code = $aerospace#annual-dose "Annual Radiation Dose"

* component[monthlyDose] ^short = "30-day rolling radiation dose"
* component[monthlyDose].code = $aerospace#monthly-dose "30-Day Radiation Dose"

* component[weeklyDose] ^short = "7-day rolling radiation dose"
* component[weeklyDose].code = $aerospace#weekly-dose "Weekly Radiation Dose"

* component[dailyDose] ^short = "Daily radiation dose"
* component[dailyDose].code = $aerospace#daily-dose "Daily Radiation Dose"

* component[riskAssessment] ^short = "Radiation health risk assessment"
* component[riskAssessment].code = $aerospace#risk-assessment "Radiation Risk Assessment"
* component[riskAssessment].value[x] only CodeableConcept

* component[complianceStatus] ^short = "Compliance with radiation exposure limits"
* component[complianceStatus].code = $aerospace#compliance-status "Compliance Status"
* component[complianceStatus].value[x] only CodeableConcept