// Ocular Monitoring - SANS Assessment
// WP9: Abstract 68 (UWF OCT-A for SANS)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceVisualEffectsCS
Id: space-visual-effects-cs
Title: "Space Visual Effects"
Description: "CodeSystem for space visual effects not found in SNOMED CT"

* ^experimental = true
* ^caseSensitive = true
* ^count = 8
* ^content = #complete
* ^status = #active

* #sans "Spaceflight-Associated Neuro-ocular Syndrome" "A constellation of ocular and brain findings in astronauts exposed to long-duration spaceflight, including optic disc edema, globe flattening, choroidal folds, and hyperopic shifts"
* #optic-disc-edema "Optic Disc Edema" "Swelling of the optic disc observed in astronauts during long-duration spaceflight"
* #posterior-globe-flattening "Posterior Globe Flattening" "Flattening of the posterior portion of the eye globe observed in astronauts during spaceflight"
* #choroidal-folds "Choroidal Folds" "Folds in the choroidal layer of the eye observed in astronauts during spaceflight"
* #hyperopic-shift "Hyperopic Shift" "A shift toward farsightedness observed in astronauts during spaceflight"
* #space-radiation-cataracts "Space Radiation Cataracts" "Cataracts resulting from exposure to space radiation"
* #light-flash-phenomenon "Light Flash Phenomenon" "Visual perception of flashes of light caused by cosmic rays interacting with the retina or visual cortex"
* #retinal-vascular-changes "Retinal Vascular Changes" "Changes in the blood vessels of the retina observed during spaceflight"

CodeSystem: SANSAssessmentCS
Id: sans-assessment-cs
Title: "SANS Assessment Code System"
Description: "Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment"
* ^count = 6
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #optic-disc-edema-grade "Optic Disc Edema Grade" "Frisen scale grade of optic disc edema"
* #globe-flattening "Globe Flattening" "Posterior globe flattening measured on MRI or OCT"
* #choroidal-folds-present "Choroidal Folds" "Presence and severity of choroidal folds"
* #icp-estimate "Intracranial Pressure Estimate" "Estimated intracranial pressure"
* #retinal-vessel-density "Retinal Vessel Density" "Retinal vascular density measured by OCT-A"
* #rnfl-thickness "RNFL Thickness" "Retinal nerve fiber layer thickness"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SANSAssessmentVS
Id: sans-assessment-vs
Title: "SANS Assessment Value Set"
Description: "SANS assessment parameters"
* ^experimental = true
* ^status = #active
* include codes from system SANSAssessmentCS

// =====================================================
// PROFILES
// =====================================================

Profile: SANSAssessment
Parent: Observation
Id: sans-assessment
Title: "SANS Assessment"
Description: "Spaceflight-Associated Neuro-ocular Syndrome assessment including OCT, OCT-A, and clinical findings"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = SpaceVisualEffectsCS#sans "Spaceflight-Associated Neuro-ocular Syndrome"
* code ^short = "SANS assessment"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    opticDiscEdema 0..1 and
    globeFlattening 0..1 and
    choroidalFolds 0..1 and
    icpEstimate 0..1 and
    retinalVesselDensity 0..1 and
    rnflThickness 0..1

* component[opticDiscEdema] ^short = "Frisen grade of optic disc edema (0-5)"
* component[opticDiscEdema].code = SANSAssessmentCS#optic-disc-edema-grade "Optic Disc Edema Grade"
* component[opticDiscEdema].value[x] only integer

* component[globeFlattening] ^short = "Globe flattening present/absent or measurement"
* component[globeFlattening].code = SANSAssessmentCS#globe-flattening "Globe Flattening"
* component[globeFlattening].value[x] only CodeableConcept

* component[choroidalFolds] ^short = "Choroidal folds presence and severity"
* component[choroidalFolds].code = SANSAssessmentCS#choroidal-folds-present "Choroidal Folds"
* component[choroidalFolds].value[x] only CodeableConcept

* component[icpEstimate] ^short = "Estimated intracranial pressure in mmHg"
* component[icpEstimate].code = SANSAssessmentCS#icp-estimate "Intracranial Pressure Estimate"
* component[icpEstimate].value[x] only Quantity
* component[icpEstimate].valueQuantity.system = $ucum
* component[icpEstimate].valueQuantity.code = #mm[Hg]

* component[retinalVesselDensity] ^short = "Retinal vessel density from OCT-A (%)"
* component[retinalVesselDensity].code = SANSAssessmentCS#retinal-vessel-density "Retinal Vessel Density"
* component[retinalVesselDensity].value[x] only Quantity
* component[retinalVesselDensity].valueQuantity.system = $ucum
* component[retinalVesselDensity].valueQuantity.code = #%

* component[rnflThickness] ^short = "RNFL thickness in micrometers"
* component[rnflThickness].code = SANSAssessmentCS#rnfl-thickness "RNFL Thickness"
* component[rnflThickness].value[x] only Quantity
* component[rnflThickness].valueQuantity.system = $ucum
* component[rnflThickness].valueQuantity.code = #um

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS
