// Artemis II Health Data Stack
// WP8: Abstract 120, ARCHeR, Immune Biomarkers, Standard Measures, AVATAR

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: NASAStandardMeasuresCS
Id: nasa-standard-measures-cs
Title: "NASA Spaceflight Standard Measures Code System"
Description: "Standardized assessments from the NASA Spaceflight Standard Measures program"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #functional-task-test "Functional Task Test" "Standardized battery of functional tasks assessing sensorimotor performance"
* #field-test "Field Test" "Timed obstacle course for post-flight functional assessment"
* #grip-strength "Grip Strength" "Isometric hand grip dynamometry"
* #tandem-walk "Tandem Walk" "Heel-to-toe walking balance assessment"
* #visual-acuity-flight "In-flight Visual Acuity" "Visual acuity testing during spaceflight"
* #orthostatic-test "Orthostatic Tolerance Test" "Tilt test or stand test for orthostatic assessment"
* #body-composition "Body Composition" "DXA or bioimpedance body composition analysis"

CodeSystem: ImmuneBiomarkerCS
Id: immune-biomarker-cs
Title: "Immune Biomarker Code System"
Description: "Immune function biomarkers monitored during spaceflight"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #il-6 "Interleukin-6 (IL-6)" "Pro-inflammatory cytokine marker"
* #tnf-alpha "Tumor Necrosis Factor Alpha (TNF-α)" "Pro-inflammatory cytokine"
* #ifn-gamma "Interferon Gamma (IFN-γ)" "Th1 immune response cytokine"
* #cd4-cd8-ratio "CD4/CD8 Ratio" "T-cell subset ratio indicating immune balance"
* #nk-cell-pct "Natural Killer Cell Percentage" "NK cell fraction of total lymphocytes"
* #ebv-pcr "EBV PCR" "Epstein-Barr virus reactivation detection by PCR"
* #cmv-pcr "CMV PCR" "Cytomegalovirus reactivation detection by PCR"
* #salivary-iga "Salivary IgA" "Mucosal immune function marker"

CodeSystem: OrganChipTypeCS
Id: organ-chip-type-cs
Title: "Organ-on-Chip Type Code System"
Description: "Types of organ-on-chip (microphysiological systems) used in the AVATAR investigation"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #bone-marrow-chip "Bone Marrow Chip" "Microfluidic bone marrow model for hematopoiesis studies"
* #immune-chip "Immune Chip" "Microfluidic immune system model"
* #gut-chip "Gut Chip" "Intestinal epithelium microfluidic model"
* #lung-chip "Lung Chip" "Alveolar-capillary interface microfluidic model"
* #kidney-chip "Kidney Chip" "Renal tubular epithelium microfluidic model"
* #bbb-chip "Blood-Brain Barrier Chip" "Blood-brain barrier microfluidic model"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: NASAStandardMeasuresVS
Id: nasa-standard-measures-vs
Title: "NASA Standard Measures Value Set"
Description: "NASA Spaceflight Standard Measures assessments"
* ^experimental = false
* ^status = #active
* include codes from system NASAStandardMeasuresCS

ValueSet: ImmuneBiomarkerVS
Id: immune-biomarker-vs
Title: "Immune Biomarker Value Set"
Description: "Immune function biomarkers"
* ^experimental = false
* ^status = #active
* include codes from system ImmuneBiomarkerCS

ValueSet: OrganChipTypeVS
Id: organ-chip-type-vs
Title: "Organ-on-Chip Type Value Set"
Description: "Types of organ-on-chip devices"
* ^experimental = false
* ^status = #active
* include codes from system OrganChipTypeCS

// =====================================================
// PROFILES
// =====================================================

Profile: ARCHeRActigraphyObservation
Parent: Observation
Id: archer-actigraphy-observation
Title: "ARCHeR Actigraphy Observation"
Description: "Actigraphy observation from the Actigraphy for Circadian Health during Exploration Research (ARCHeR) investigation"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $sct#129006008 "Activity monitoring"
* code ^short = "ARCHeR actigraphy monitoring"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only Period

* device 0..1 MS
* device ^short = "Wearable actigraph device"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    restActivityRhythm 0..1 and
    circadianPeriod 0..1 and
    sleepWakeTiming 0..1

* component[restActivityRhythm] ^short = "Rest-activity rhythm stability"
* component[restActivityRhythm].code = ActigraphyMetricCS#interdaily-stability "Interdaily Stability (IS)"
* component[restActivityRhythm].value[x] only Quantity
* component[restActivityRhythm].valueQuantity.system = $ucum
* component[restActivityRhythm].valueQuantity.code = #1

* component[circadianPeriod] ^short = "Endogenous circadian period"
* component[circadianPeriod].code = CircadianAssessmentCS#circadian-period "Circadian Period (Tau)"
* component[circadianPeriod].value[x] only Quantity
* component[circadianPeriod].valueQuantity.system = $ucum
* component[circadianPeriod].valueQuantity.code = #h

* component[sleepWakeTiming] ^short = "Sleep-wake cycle timing"
* component[sleepWakeTiming].code = SleepArchitectureCS#total-sleep-time "Total Sleep Time (TST)"
* component[sleepWakeTiming].value[x] only Quantity
* component[sleepWakeTiming].valueQuantity.system = $ucum
* component[sleepWakeTiming].valueQuantity.code = #min

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: ImmuneBiomarkerPanel
Parent: Observation
Id: immune-biomarker-panel
Title: "Immune Biomarker Panel"
Description: "Panel of immune function biomarkers for monitoring spaceflight-associated immune dysregulation"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#24359-3 "Immune function panel"
* code ^short = "Immune function panel"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* specimen 0..1 MS
* specimen ^short = "Blood or saliva specimen"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    il6 0..1 and
    tnfAlpha 0..1 and
    ifnGamma 0..1 and
    cd4Cd8Ratio 0..1 and
    nkCellPct 0..1 and
    ebvReactivation 0..1 and
    cortisolStress 0..1 and
    salivaryIgA 0..1

* component[il6] ^short = "Interleukin-6 level"
* component[il6].code = ImmuneBiomarkerCS#il-6 "Interleukin-6 (IL-6)"
* component[il6].value[x] only Quantity
* component[il6].valueQuantity.system = $ucum
* component[il6].valueQuantity.code = #pg/mL

* component[tnfAlpha] ^short = "TNF-alpha level"
* component[tnfAlpha].code = ImmuneBiomarkerCS#tnf-alpha "Tumor Necrosis Factor Alpha (TNF-α)"
* component[tnfAlpha].value[x] only Quantity
* component[tnfAlpha].valueQuantity.system = $ucum
* component[tnfAlpha].valueQuantity.code = #pg/mL

* component[ifnGamma] ^short = "Interferon gamma level"
* component[ifnGamma].code = ImmuneBiomarkerCS#ifn-gamma "Interferon Gamma (IFN-γ)"
* component[ifnGamma].value[x] only Quantity
* component[ifnGamma].valueQuantity.system = $ucum
* component[ifnGamma].valueQuantity.code = #pg/mL

* component[cd4Cd8Ratio] ^short = "CD4/CD8 T-cell ratio"
* component[cd4Cd8Ratio].code = ImmuneBiomarkerCS#cd4-cd8-ratio "CD4/CD8 Ratio"
* component[cd4Cd8Ratio].value[x] only Quantity
* component[cd4Cd8Ratio].valueQuantity.system = $ucum
* component[cd4Cd8Ratio].valueQuantity.code = #1

* component[nkCellPct] ^short = "NK cell percentage"
* component[nkCellPct].code = ImmuneBiomarkerCS#nk-cell-pct "Natural Killer Cell Percentage"
* component[nkCellPct].value[x] only Quantity
* component[nkCellPct].valueQuantity.system = $ucum
* component[nkCellPct].valueQuantity.code = #%

* component[ebvReactivation] ^short = "EBV reactivation PCR result"
* component[ebvReactivation].code = ImmuneBiomarkerCS#ebv-pcr "EBV PCR"
* component[ebvReactivation].value[x] only CodeableConcept

* component[cortisolStress] ^short = "Stress cortisol level"
* component[cortisolStress].code = $loinc#2143-6 "Cortisol [Mass/volume] in Serum or Plasma"
* component[cortisolStress].value[x] only Quantity
* component[cortisolStress].valueQuantity.system = $ucum
* component[cortisolStress].valueQuantity.code = #ug/dL

* component[salivaryIgA] ^short = "Salivary IgA concentration"
* component[salivaryIgA].code = ImmuneBiomarkerCS#salivary-iga "Salivary IgA"
* component[salivaryIgA].value[x] only Quantity
* component[salivaryIgA].valueQuantity.system = $ucum
* component[salivaryIgA].valueQuantity.code = #mg/dL

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: SpaceflightSpecimen
Parent: Specimen
Id: spaceflight-specimen
Title: "Spaceflight Specimen"
Description: "Biological specimen collected during spaceflight using microgravity-adapted methods"
* ^version = "1.0.0"
* ^status = #active

* type 1..1 MS
* type from SpaceSpecimenTypeVS (extensible)
* type ^short = "Specimen type"

* subject 0..1 MS
* subject only Reference(Astronaut)

* collection 0..1 MS
* collection.collected[x] 0..1 MS
* collection.collected[x] only dateTime
* collection.method 0..1 MS
* collection.method ^short = "Collection method adapted for microgravity"

* processing 0..* MS
* processing.description 0..1 MS
* processing.description ^short = "Processing and storage conditions"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: StandardMeasuresObservation
Parent: Observation
Id: standard-measures-observation
Title: "NASA Standard Measures Observation"
Description: "Standardized assessment from the NASA Spaceflight Standard Measures program for pre/in/post-flight comparison"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code from NASAStandardMeasuresVS (extensible)
* code ^short = "Standard measures assessment type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* value[x] 0..1 MS
* value[x] only Quantity or string or CodeableConcept

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: AVATAROrganChip
Parent: Device
Id: avatar-organ-chip
Title: "AVATAR Organ-on-Chip Device"
Description: "Organ-on-chip (microphysiological system) device from the AVATAR investigation for tissue-chip-based monitoring in spaceflight"
* ^version = "1.0.0"
* ^status = #active

* type 1..1 MS
* type from OrganChipTypeVS (extensible)
* type ^short = "Type of organ-on-chip system"

* deviceName 0..* MS
* manufacturer 0..1 MS
* modelNumber 0..1 MS

* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    cellSource 0..1 and
    cultureDuration 0..1

* property[cellSource] ^short = "Source of cells used in the chip"
* property[cellSource].type = $sct#4421005 "Cell structure"

* property[cultureDuration] ^short = "Duration of cell culture"
* property[cultureDuration].type = $sct#410670002 "Duration of device use"

* extension contains
    MissionContext named missionContext 0..1 MS
