// Radiation Exposure Tracking Profiles for Aerospace Medicine
// Based on FHIR Radiation Dose Summary IG adapted for space medicine

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $rds = http://hl7.org/fhir/uv/radiation-dose-summary
Alias: $aerospace = http://hl7.org/fhir/uv/aerospace

// Extensions for space-specific radiation tracking
Extension: MissionContext
Id: mission-context
Title: "Mission Context"
Description: "Links radiation exposure to specific space missions"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element  
* ^context[1].expression = "DiagnosticReport"
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

// Value Sets
ValueSet: SpaceRadiationTypeVS
Id: space-radiation-type-vs
Title: "Space Radiation Types"
Description: "Types of ionizing radiation encountered in space"
* ^experimental = false
* include codes from system SpaceRadiationTypeCS

ValueSet: RadiationCountermeasuresVS
Id: radiation-countermeasures-vs
Title: "Radiation Countermeasures"
Description: "Protective measures against space radiation"
* ^experimental = false
* include codes from system RadiationCountermeasuresCS

// Code Systems
CodeSystem: SpaceRadiationTypeCS
Id: space-radiation-type-cs
Title: "Space Radiation Types"
Description: "Code system for types of space radiation"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #gcr "Galactic Cosmic Radiation" "High-energy particles from outside the solar system"
* #spe "Solar Particle Event" "Radiation from solar flares and coronal mass ejections"
* #trapped "Trapped Radiation" "Charged particles trapped in planetary magnetic fields"
* #secondary "Secondary Radiation" "Radiation produced by interaction with spacecraft materials"
* #neutron "Neutron Radiation" "Secondary neutrons from cosmic ray interactions"

CodeSystem: RadiationCountermeasuresCS
Id: radiation-countermeasures-cs
Title: "Radiation Countermeasures"
Description: "Code system for radiation protection measures in space"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #shelter "Storm Shelter" "Retreat to heavily shielded area of spacecraft"
* #eva-postponed "EVA Postponed" "Extravehicular activity delayed due to radiation"
* #operational-restriction "Operational Restriction" "Limited activities during radiation event"
* #pharmaceutical "Pharmaceutical Countermeasure" "Radioprotective medication administered"
* #active-shielding "Active Shielding" "Electromagnetic deflection of charged particles"

// Primary Radiation Exposure Profile
Profile: SpaceRadiationExposure
Parent: Observation
Id: space-radiation-exposure
Title: "Space Radiation Exposure"
Description: "Radiation dose measurement for space missions"
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
* code from SpaceRadiationDoseCodesVS (extensible)
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from RadiationDoseUnitsVS (required)

// Space-specific extensions
* extension contains 
    MissionContext named missionContext 0..1 MS and
    RadiationType named radiationType 0..1 MS and
    ShieldingMass named shieldingMass 0..1 and
    RadiationCountermeasures named countermeasures 0..*

// Device information
* device 0..1 MS
* device only Reference(RadiationDetector)

// Location context
* extension[missionContext] ^short = "Space mission during which exposure occurred"
* extension[radiationType] ^short = "Type of space radiation (GCR, SPE, trapped)"

// Component structure for detailed dosimetry
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    organDose 0..* and
    doseRate 0..1 and
    linearEnergyTransfer 0..1 and
    radiationQualityFactor 0..1

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
* component[linearEnergyTransfer].code = $aerospace#let "Linear Energy Transfer"
* component[linearEnergyTransfer].value[x] only Quantity
* component[linearEnergyTransfer].valueQuantity.system = $ucum
* component[linearEnergyTransfer].valueQuantity.code = #keV/um

* component[radiationQualityFactor] ^short = "Radiation quality factor"
* component[radiationQualityFactor].code = $aerospace#quality-factor "Radiation Quality Factor"
* component[radiationQualityFactor].value[x] only Quantity
* component[radiationQualityFactor].valueQuantity.system = $ucum
* component[radiationQualityFactor].valueQuantity.code = #1

// Cumulative Radiation Dose Profile
Profile: CumulativeRadiationDose
Parent: SpaceRadiationExposure
Id: cumulative-radiation-dose
Title: "Cumulative Radiation Dose"
Description: "Cumulative radiation dose over specified time period"
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
    monthlyDose 0..1

* component[careerDose] ^short = "Total career radiation dose"
* component[careerDose].code = $aerospace#career-dose "Career Radiation Dose"

* component[missionDose] ^short = "Total mission radiation dose"
* component[missionDose].code = $aerospace#mission-dose "Mission Radiation Dose"

* component[annualDose] ^short = "Annual radiation dose"
* component[annualDose].code = $aerospace#annual-dose "Annual Radiation Dose"

* component[monthlyDose] ^short = "30-day rolling radiation dose"
* component[monthlyDose].code = $aerospace#monthly-dose "30-Day Radiation Dose"

// Radiation Detector Device Profile
Profile: RadiationDetector
Parent: Device
Id: radiation-detector
Title: "Radiation Detection Device"
Description: "Device used for radiation monitoring in space"
* ^version = "1.0.0"
* ^status = #active

* deviceName 1..* MS
* type 1..1 MS
* type from RadiationDetectorTypeVS (extensible)
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS

// Simplified approach - just constrain that properties can exist
* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    detectorSensitivity 0..1 and
    energyRangeMin 0..1 and
    energyRangeMax 0..1 and
    dosimeterType 0..1

* property[detectorSensitivity] ^short = "Radiation sensitivity"
* property[detectorSensitivity].type = $aerospace#sensitivity "Detector Sensitivity"

* property[energyRangeMin] ^short = "Minimum detection energy"
* property[energyRangeMin].type = $aerospace#energy-range-min "Minimum Energy Range"

* property[energyRangeMax] ^short = "Maximum detection energy" 
* property[energyRangeMax].type = $aerospace#energy-range-max "Maximum Energy Range"

* property[dosimeterType] ^short = "Type of dosimeter technology"
* property[dosimeterType].type = $aerospace#dosimeter-type "Dosimeter Type"

// Radiation Summary Report Profile
Profile: SpaceRadiationSummary
Parent: DiagnosticReport
Id: space-radiation-summary
Title: "Space Radiation Exposure Summary"
Description: "Comprehensive radiation dose summary for space missions"
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

// Mission context
* extension contains MissionContext named missionContext 0..1 MS

// Results - references to individual dose measurements
* result MS
* result only Reference(SpaceRadiationExposure or CumulativeRadiationDose)

// Conclusion with risk assessment
* conclusion MS
* conclusion ^short = "Radiation exposure assessment and recommendations"

// Media for dose history charts
* media 0..* MS
* media ^short = "Dose history charts or graphs"

// Performer - radiation safety officer or flight surgeon
* performer 1..* MS
* performer only Reference(Practitioner or Organization)

// Additional Value Sets (condensed for space)
ValueSet: SpaceRadiationDoseCodesVS
Id: space-radiation-dose-codes-vs
Title: "Space Radiation Dose Measurement Codes"
* include $loinc#73536-5 "Radiation dose total"
* include $loinc#73537-3 "Radiation dose rate"
* include $aerospace#gcr-dose "Galactic Cosmic Radiation Dose"
* include $aerospace#spe-dose "Solar Particle Event Dose"

ValueSet: RadiationDoseUnitsVS
Id: radiation-dose-units-vs
Title: "Radiation Dose Units"
* include $ucum#mSv "millisievert"
* include $ucum#uSv "microsievert"
* include $ucum#mGy "milligray"
* include $ucum#cGy "centigray"

ValueSet: RadiationDetectorTypeVS
Id: radiation-detector-type-vs
Title: "Radiation Detector Types"
* include $aerospace#tld "Thermoluminescent Dosimeter"
* include $aerospace#osld "Optically Stimulated Luminescence Detector"
* include $aerospace#epd "Electronic Personal Dosimeter"
* include $aerospace#tepc "Tissue Equivalent Proportional Counter"
* include $aerospace#area-monitor "Area Radiation Monitor"

ValueSet: DosimeterTypeVS
Id: dosimeter-type-vs
Title: "Dosimeter Technology Types"
* include $aerospace#passive "Passive Dosimeter"
* include $aerospace#active "Active Real-time Dosimeter"
* include $aerospace#area "Area Monitor"

ValueSet: OrganDoseCodesVS
Id: organ-dose-codes-vs
Title: "Organ-Specific Dose Codes"
* include $aerospace#bone-marrow-dose "Bone Marrow Dose"
* include $aerospace#eye-lens-dose "Eye Lens Dose"
* include $aerospace#skin-dose "Skin Dose"
* include $aerospace#cns-dose "Central Nervous System Dose"

// Missing Code System for Aerospace-specific codes
CodeSystem: AerospaceCodeSystem
Id: aerospace-code-system
Title: "Aerospace Medicine Code System"
Description: "Code system for aerospace medicine concepts"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #sensitivity "Detector Sensitivity"
* #energy-range-min "Minimum Energy Range"
* #energy-range-max "Maximum Energy Range"
* #dosimeter-type "Dosimeter Type"
* #let "Linear Energy Transfer"
* #quality-factor "Radiation Quality Factor"
* #career-dose "Career Radiation Dose"
* #mission-dose "Mission Radiation Dose"
* #annual-dose "Annual Radiation Dose"
* #monthly-dose "30-Day Radiation Dose"
* #gcr-dose "Galactic Cosmic Radiation Dose"
* #spe-dose "Solar Particle Event Dose"
* #radiation-summary "Space Radiation Exposure Summary"
* #bone-marrow-dose "Bone Marrow Dose"
* #eye-lens-dose "Eye Lens Dose"
* #skin-dose "Skin Dose"
* #cns-dose "Central Nervous System Dose"
* #tld "Thermoluminescent Dosimeter"
* #osld "Optically Stimulated Luminescence Detector"
* #epd "Electronic Personal Dosimeter"
* #tepc "Tissue Equivalent Proportional Counter"
* #area-monitor "Area Radiation Monitor"
* #passive "Passive Dosimeter"
* #active "Active Real-time Dosimeter"
* #area "Area Monitor"
* #iss-expedition "ISS Expedition"

// Example Instances

Instance: GCRExposureISS
InstanceOf: SpaceRadiationExposure
Title: "GCR Exposure During ISS Mission"
Description: "Daily galactic cosmic radiation exposure during ISS Expedition"
* status = #final
* category[radiationDose] = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = $aerospace#gcr-dose "Galactic Cosmic Radiation Dose"
* subject = Reference(CaptainJaneway)
* effectiveDateTime = "2024-03-15T12:00:00Z"
* valueQuantity = 450 'uSv' "microsievert"
* extension[radiationType].valueCodeableConcept = SpaceRadiationTypeCS#gcr "Galactic Cosmic Radiation"
* extension[missionContext].valueReference = Reference(ISSExpedition71)
* device = Reference(EPDUnit001)

* component[doseRate].code = $loinc#77638-4 "Irradiation dose rate"
* component[doseRate].valueQuantity = 19 'uSv/h' "microsievert per hour"

* component[linearEnergyTransfer].code = $aerospace#let "Linear Energy Transfer"
* component[linearEnergyTransfer].valueQuantity = 150 'keV/um' "keV per micrometer"

Instance: CareerDoseSummary
InstanceOf: CumulativeRadiationDose
Title: "Career Radiation Dose Summary"
Description: "Total career radiation exposure for astronaut"
* status = #final
* category[radiationDose] = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = $loinc#73536-5 "Radiation dose total"
* subject = Reference(CaptainJaneway)
* effectivePeriod.start = "2020-01-01"
* effectivePeriod.end = "2024-12-31"
* valueQuantity = 180 'mSv' "millisievert"

* component[careerDose].code = $aerospace#career-dose "Career Radiation Dose"
* component[careerDose].valueQuantity = 180 'mSv' "millisievert"

* component[annualDose].code = $aerospace#annual-dose "Annual Radiation Dose"
* component[annualDose].valueQuantity = 45 'mSv' "millisievert"

* component[organDose].code = $aerospace#eye-lens-dose "Eye Lens Dose"
* component[organDose].valueQuantity = 120 'mSv' "millisievert"

Instance: EPDUnit001
InstanceOf: RadiationDetector
Title: "Electronic Personal Dosimeter Unit 001"
Description: "Wearable electronic dosimeter for real-time monitoring"
* deviceName.name = "EPD-Mk2"
* deviceName.type = #user-friendly-name
* type = $aerospace#epd "Electronic Personal Dosimeter"
* manufacturer = "Aerospace Dosimetry Systems"
* modelNumber = "EPD-2024"
* serialNumber = "EPD001"
* status = #active

* property[+].type = $aerospace#sensitivity "Detector Sensitivity"
* property[=].valueQuantity = 0.1 'uSv' "microsievert"

* property[+].type = $aerospace#energy-range-min "Minimum Energy Range"
* property[=].valueQuantity = 0.02 'MeV' "megaelectron volt"

* property[+].type = $aerospace#energy-range-max "Maximum Energy Range"
* property[=].valueQuantity = 10 'MeV' "megaelectron volt"

* property[+].type = $aerospace#dosimeter-type "Dosimeter Type"
* property[=].valueCode = #active

Instance: ISSExpedition71
InstanceOf: Encounter
Title: "ISS Expedition 71"
Description: "Six-month International Space Station mission"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type = $aerospace#iss-expedition "ISS Expedition"
* subject = Reference(CaptainJaneway)
* period.start = "2024-03-01"
* period.end = "2024-09-15"
* location.location = Reference(LocationInternationalSpaceStation)

Instance: MissionRadiationSummary
InstanceOf: SpaceRadiationSummary
Title: "ISS Mission Radiation Summary"
Description: "Complete radiation exposure summary for ISS mission"
* status = #final
* category = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = $aerospace#radiation-summary "Space Radiation Exposure Summary"
* subject = Reference(CaptainJaneway)
* effectivePeriod.start = "2024-03-01"
* effectivePeriod.end = "2024-09-15"
* performer = Reference(Practitioner/flight-surgeon-1)
* extension[missionContext].valueReference = Reference(ISSExpedition71)

* result[0] = Reference(GCRExposureISS)
* result[1] = Reference(CareerDoseSummary)

* conclusion = "Astronaut received total mission dose of 85 mSv during 198-day ISS mission. Career dose now 180 mSv, within NASA guidelines. No acute radiation exposure events. Recommend continued monitoring and standard post-flight assessment."