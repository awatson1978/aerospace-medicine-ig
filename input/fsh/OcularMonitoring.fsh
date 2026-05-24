// Ocular Monitoring - SANS Assessment
// WP9: Abstract 68 (UWF OCT-A for SANS)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SANSAssessmentCS
Id: sans-assessment-cs
Title: "SANS Assessment Code System"
Description: "Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment"
* ^experimental = false
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
* ^experimental = false
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
* code = SpaceVisualEffectsCodeSystem#sans "Spaceflight-Associated Neuro-ocular Syndrome"
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
