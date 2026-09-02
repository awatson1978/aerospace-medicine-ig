// EVA Risk Assessment - Decompression Sickness
// WP9: Abstract 112 (individual DCS susceptibility)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: DCSRiskCS
Id: dcs-risk-cs
Title: "Decompression Sickness Risk Code System"
Description: "Decompression sickness risk factors and outcomes for EVA risk assessment"
* ^count = 5
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dcs-type-i "DCS Type I" "Musculoskeletal DCS (joint pain, limb pain)"
* #dcs-type-ii "DCS Type II" "Neurological or cardiopulmonary DCS"
* #vge "Venous Gas Emboli (VGE)" "Detectable venous gas bubbles"
* #pfo-status "Patent Foramen Ovale Status" "PFO present/absent affecting right-to-left shunt risk"
* #prebreathe-protocol "Prebreathe Protocol" "Oxygen prebreathe protocol used before EVA"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: DCSRiskVS
Id: dcs-risk-vs
Title: "DCS Risk Value Set"
Description: "DCS risk factors and outcomes"
* ^experimental = true
* ^status = #active
* include codes from system DCSRiskCS

// =====================================================
// PROFILES
// =====================================================

Profile: DCSRiskAssessment
Parent: RiskAssessment
Id: dcs-risk-assessment
Title: "Decompression Sickness Risk Assessment"
Description: "Individual DCS susceptibility assessment for EVA planning"
* ^version = "1.0.0"
* ^status = #active

* status MS

* subject 1..1 MS
* subject only Reference(Astronaut)

* occurrence[x] 0..1 MS
* occurrence[x] only dateTime

* prediction 0..* MS
* prediction.outcome 0..1 MS
* prediction.outcome ^short = "DCS severity outcome (Type I, Type II, VGE)"
* prediction.probability[x] 0..1 MS
* prediction.probability[x] only decimal
* prediction.probabilityDecimal ^short = "Probability of DCS event (0.0-1.0)"

* basis 0..* MS
* basis ^short = "Basis observations (prebreathe protocol, PFO status, prior DCS history)"

* extension contains
    MissionContext named missionContext 0..1 MS
