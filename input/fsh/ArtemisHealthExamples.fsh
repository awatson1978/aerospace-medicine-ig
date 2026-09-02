// Artemis Health Investigation Examples
// WP11: ARCHeR actigraphy, immune panel, standard measures

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

// =====================================================
// OBSERVATION: ARCHeR Actigraphy
// =====================================================

Instance: ARCHeR-Actigraphy-FD5
InstanceOf: ARCHeRActigraphyObservation
Title: "ARCHeR Actigraphy - Flight Day 5"
Description: "Actigraphy data from ARCHeR investigation on flight day 5 showing circadian adaptation"
Usage: #example
* insert SyntheticExample

* status = #final
* category = $obs-cat#exam "Exam"
* code = $sct#30920001 "Circadian rhythm"
* subject = Reference(Patient/ExampleAstronaut)
* effectivePeriod.start = "2028-03-20T00:00:00Z"
* effectivePeriod.end = "2028-03-21T00:00:00Z"

* component[restActivityRhythm].code = ActigraphyMetricCS#interdaily-stability "Interdaily Stability (IS)"
* component[restActivityRhythm].valueQuantity.value = 0.72
* component[restActivityRhythm].valueQuantity.unit = "1"
* component[restActivityRhythm].valueQuantity.system = $ucum
* component[restActivityRhythm].valueQuantity.code = #1

* component[circadianPeriod].code = CircadianAssessmentCS#circadian-period "Circadian Period (Tau)"
* component[circadianPeriod].valueQuantity.value = 24.3
* component[circadianPeriod].valueQuantity.unit = "h"
* component[circadianPeriod].valueQuantity.system = $ucum
* component[circadianPeriod].valueQuantity.code = #h

* component[sleepWakeTiming].code = SleepArchitectureCS#total-sleep-time "Total Sleep Time (TST)"
* component[sleepWakeTiming].valueQuantity.value = 390
* component[sleepWakeTiming].valueQuantity.unit = "min"
* component[sleepWakeTiming].valueQuantity.system = $ucum
* component[sleepWakeTiming].valueQuantity.code = #min

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#transit-outbound "Outbound Transit"

// =====================================================
// OBSERVATION: Immune Biomarker Panel
// =====================================================

Instance: Immune-Panel-PreFlight
InstanceOf: ImmuneBiomarkerPanel
Title: "Immune Biomarker Panel - Pre-flight Baseline"
Description: "Pre-flight baseline immune biomarker panel for Artemis II crew member"
Usage: #example
* insert SyntheticExample

* status = #final
* category = $obs-cat#laboratory "Laboratory"
* code = ImmuneBiomarkerCS#immune-panel "Immune Function Panel"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-02-15T10:00:00Z"

* component[il6].code = ImmuneBiomarkerCS#il-6 "Interleukin-6 (IL-6)"
* component[il6].valueQuantity.value = 1.5
* component[il6].valueQuantity.unit = "pg/mL"
* component[il6].valueQuantity.system = $ucum
* component[il6].valueQuantity.code = #pg/mL

* component[tnfAlpha].code = ImmuneBiomarkerCS#tnf-alpha "Tumor Necrosis Factor Alpha (TNF-α)"
* component[tnfAlpha].valueQuantity.value = 4.2
* component[tnfAlpha].valueQuantity.unit = "pg/mL"
* component[tnfAlpha].valueQuantity.system = $ucum
* component[tnfAlpha].valueQuantity.code = #pg/mL

* component[cd4Cd8Ratio].code = ImmuneBiomarkerCS#cd4-cd8-ratio "CD4/CD8 Ratio"
* component[cd4Cd8Ratio].valueQuantity.value = 1.8
* component[cd4Cd8Ratio].valueQuantity.unit = "1"
* component[cd4Cd8Ratio].valueQuantity.system = $ucum
* component[cd4Cd8Ratio].valueQuantity.code = #1

* component[nkCellPct].code = ImmuneBiomarkerCS#nk-cell-pct "Natural Killer Cell Percentage"
* component[nkCellPct].valueQuantity.value = 12.5
* component[nkCellPct].valueQuantity.unit = "%"
* component[nkCellPct].valueQuantity.system = $ucum
* component[nkCellPct].valueQuantity.code = #%

* component[cortisolStress].code = $loinc#2143-6 "Cortisol [Mass/volume] in Serum or Plasma"
* component[cortisolStress].valueQuantity.value = 15.2
* component[cortisolStress].valueQuantity.unit = "ug/dL"
* component[cortisolStress].valueQuantity.system = $ucum
* component[cortisolStress].valueQuantity.code = #ug/dL

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#pre-flight "Pre-flight"

// =====================================================
// OBSERVATION: Standard Measures - Grip Strength
// =====================================================

Instance: Standard-Measures-Grip-PreFlight
InstanceOf: StandardMeasuresObservation
Title: "Standard Measures Grip Strength - Pre-flight"
Description: "NASA Standard Measures grip strength assessment at L-30 days"
Usage: #example
* insert SyntheticExample

* status = #final
* category = $obs-cat#exam "Exam"
* code = NASAStandardMeasuresCS#grip-strength "Grip Strength"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-02-15T14:00:00Z"
* valueQuantity.value = 45.2
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg
* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#pre-flight "Pre-flight"
* extension[flightDay].valueInteger = -30
