// Example instances for the radiation tracking profiles.
// Referenced from radiation-tracking.md. All values are synthetic.

Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org

Instance: radiation-detector-example
InstanceOf: RadiationDetector
Title: "Crew Personal Dosimeter (example)"
Description: "Electronic personal dosimeter worn by the example astronaut during an ISS increment."
Usage: #example
* insert SyntheticExample
* status = #active
* deviceName[0].name = "Crew Personal Active Dosimeter"
* deviceName[0].type = #user-friendly-name
* type = RadiationDetectorTypeCS#epd "Electronic Personal Dosimeter"
* manufacturer = "Example Dosimetry Inc."
* modelNumber = "EPD-2100"
* serialNumber = "EPD-2100-0042"
* patient = Reference(Patient/ExampleAstronaut)
* property[detectorSensitivity].type = SpaceRadiationCS#sensitivity "Detector Sensitivity"
* property[detectorSensitivity].valueQuantity = 1 'uSv' "uSv"
* property[energyRangeMin].type = SpaceRadiationCS#energy-range-min "Minimum Energy Range"
* property[energyRangeMin].valueQuantity = 20 'keV' "keV"
* property[energyRangeMax].type = SpaceRadiationCS#energy-range-max "Maximum Energy Range"
* property[energyRangeMax].valueQuantity = 10 'MeV' "MeV"
* property[measurementAccuracy].type = SpaceRadiationCS#measurement-accuracy "Measurement Accuracy"
* property[measurementAccuracy].valueQuantity = 10 '%' "%"

Instance: space-radiation-exposure-example
InstanceOf: SpaceRadiationExposure
Title: "Daily Radiation Exposure, ISS Flight Day 45 (example)"
Description: "One day of dose-equivalent measured by the crew personal dosimeter, with organ-dose and dose-rate components."
Usage: #example
* insert SyntheticExample
* status = #final
* category[radiationDose] = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = SpaceRadiationCS#gcr-dose "Galactic Cosmic Radiation Dose"
* subject = Reference(Patient/ExampleAstronaut)
* encounter = Reference(Encounter/ISS-Exp75-InFlight)
* effectiveDateTime = "2025-07-15"
* valueQuantity = 0.52 'mSv' "mSv"
* device = Reference(Device/radiation-detector-example)
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)
* extension[radiationType].valueCodeableConcept = SpaceRadiationTypeCS#gcr "Galactic Cosmic Radiation"
* extension[shieldingMass].valueQuantity = 15 'g/cm2' "g/cm2"
* extension[countermeasures].valueCodeableConcept = RadiationCountermeasuresCS#shielding "Physical Shielding"
* component[doseRate].code = $loinc#77638-4 "Irradiation dose rate"
* component[doseRate].valueQuantity = 21.7 'uSv/h' "uSv/h"
* component[organDose][0].code = SpaceRadiationCS#skin-dose "Skin Dose"
* component[organDose][=].valueQuantity = 0.61 'mSv' "mSv"
* component[organDose][+].code = SpaceRadiationCS#bone-marrow-dose "Bone Marrow Dose"
* component[organDose][=].valueQuantity = 0.47 'mSv' "mSv"
* component[linearEnergyTransfer].code = SpaceRadiationCS#let "Linear Energy Transfer"
* component[linearEnergyTransfer].valueQuantity = 7.5 'keV/um' "keV/um"

Instance: cumulative-radiation-dose-example
InstanceOf: CumulativeRadiationDose
Title: "Cumulative Radiation Dose, ISS Expedition 75 (example)"
Description: "Dose-equivalent accumulated over the first 180 days of an ISS increment, with rolling-period and career totals."
Usage: #example
* insert SyntheticExample
* status = #final
* category[radiationDose] = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = $loinc#73536-5 "Radiation dose total"
* subject = Reference(Patient/ExampleAstronaut)
* encounter = Reference(Encounter/ISS-Exp75-InFlight)
* effectivePeriod.start = "2025-06-01"
* effectivePeriod.end = "2025-11-28"
* valueQuantity = 94 'mSv' "mSv"
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)
* component[dailyDose].code = SpaceRadiationCS#daily-dose "Daily Radiation Dose"
* component[dailyDose].valueQuantity = 0.52 'mSv' "mSv"
* component[weeklyDose].code = SpaceRadiationCS#weekly-dose "Weekly Radiation Dose"
* component[weeklyDose].valueQuantity = 3.6 'mSv' "mSv"
* component[monthlyDose].code = SpaceRadiationCS#monthly-dose "30-Day Radiation Dose"
* component[monthlyDose].valueQuantity = 15.4 'mSv' "mSv"
* component[missionDose].code = SpaceRadiationCS#mission-dose "Mission Radiation Dose"
* component[missionDose].valueQuantity = 94 'mSv' "mSv"
* component[careerDose].code = SpaceRadiationCS#career-dose "Career Radiation Dose"
* component[careerDose].valueQuantity = 212 'mSv' "mSv"
* component[complianceStatus].code = SpaceRadiationCS#compliance-status "Compliance Status"
* component[complianceStatus].valueCodeableConcept.text = "Within NASA-STD-3001 600 mSv career effective-dose limit"

Instance: space-radiation-summary-example
InstanceOf: SpaceRadiationSummary
Title: "Radiation Exposure Summary, ISS Expedition 75 (example)"
Description: "Increment radiation summary prepared by the flight surgeon from the daily and cumulative dose observations."
Usage: #example
* insert SyntheticExample
* status = #final
* category = $loinc#73569-6 "Radiation dose and image quality indicators"
* code = SpaceRadiationCS#radiation-summary "Space Radiation Exposure Summary"
* subject = Reference(Patient/ExampleAstronaut)
* encounter = Reference(Encounter/ISS-Exp75-InFlight)
* effectivePeriod.start = "2025-06-01"
* effectivePeriod.end = "2025-11-28"
* issued = "2025-12-02T09:00:00Z"
* performer = Reference(Organization/NASA)
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)
* result[0] = Reference(Observation/space-radiation-exposure-example)
* result[+] = Reference(Observation/cumulative-radiation-dose-example)
* conclusion = "Mission dose-equivalent of 94 mSv over 180 days is consistent with the pre-flight projection of 0.5 mSv per day at solar minimum. Career total remains below the 600 mSv NASA-STD-3001 limit; no change to flight-certification status."
