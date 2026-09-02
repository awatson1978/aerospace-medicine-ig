// Musculoskeletal Monitoring
// WP9: Abstract 110 (BMD measurement), Abstract 49 (ultrasound joint health)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: BoneDensityMethodCS
Id: bone-density-method-cs
Title: "Bone Density Method Code System"
Description: "Methods for bone mineral density measurement in spaceflight"
* ^count = 4
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dxa "Dual-Energy X-ray Absorptiometry (DXA)" "Standard ground-based BMD measurement"
* #qct "Quantitative Computed Tomography (QCT)" "Volumetric BMD measurement via CT"
* #pqct "Peripheral QCT (pQCT)" "Peripheral quantitative CT for extremity BMD"
* #quantitative-ultrasound "Quantitative Ultrasound (QUS)" "Ultrasound-based bone quality assessment, suitable for in-flight use"

CodeSystem: JointAssessmentCS
Id: joint-assessment-cs
Title: "Joint Assessment Code System"
Description: "Parameters for ultrasound-based joint health assessment"
* ^count = 3
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #joint-effusion "Joint Effusion" "Presence and volume of joint effusion"
* #cartilage-thickness "Cartilage Thickness" "Articular cartilage thickness measurement"
* #synovial-assessment "Synovial Assessment" "Synovial membrane thickness and vascularity"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: BoneDensityMethodVS
Id: bone-density-method-vs
Title: "Bone Density Method Value Set"
Description: "Methods for BMD measurement"
* ^experimental = true
* ^status = #active
* include codes from system BoneDensityMethodCS

ValueSet: BoneDensitySiteVS
Id: bone-density-site-vs
Title: "Bone Density Measurement Site Value Set"
Description: "Anatomical sites for BMD measurement"
* ^experimental = true
* ^status = #active
* $sct#122496007 "Lumbar spine structure"
* $sct#71341001 "Bone structure of femur"
* $sct#29836001 "Hip region structure"
* $sct#62413002 "Bone structure of radius"
* $sct#12611008 "Bone structure of tibia"
* $sct#80144004 "Calcaneus bone"

// =====================================================
// PROFILES
// =====================================================

Profile: BoneDensityObservation
Parent: Observation
Id: bone-density-observation
Title: "Bone Density Observation"
Description: "Bone mineral density measurement during spaceflight with method, site, and T/Z-score components"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#38263-0 "DXA Bone density"
* code ^short = "Bone mineral density measurement"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* method 0..1 MS
* method from BoneDensityMethodVS (extensible)
* method ^short = "BMD measurement method"

* bodySite 0..1 MS
* bodySite from BoneDensitySiteVS (extensible)
* bodySite ^short = "Anatomical measurement site"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    bmdValue 0..1 and
    tScore 0..1 and
    zScore 0..1

* component[bmdValue] ^short = "BMD value in g/cm²"
* component[bmdValue].code = $loinc#38263-0 "DXA Bone density"
* component[bmdValue].value[x] only Quantity
* component[bmdValue].valueQuantity.system = $ucum
* component[bmdValue].valueQuantity.code = #g/cm2

* component[tScore] ^short = "T-score (standard deviations from young adult mean)"
* component[tScore].code = $loinc#80936-2 "DXA Bone density T-score"
* component[tScore].value[x] only Quantity
* component[tScore].valueQuantity.system = $ucum
* component[tScore].valueQuantity.code = #1

* component[zScore] ^short = "Z-score (standard deviations from age-matched mean)"
* component[zScore].code = $loinc#80937-0 "DXA Bone density Z-score"
* component[zScore].value[x] only Quantity
* component[zScore].valueQuantity.system = $ucum
* component[zScore].valueQuantity.code = #1

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: SpaceJointHealthAssessment
Parent: Observation
Id: space-joint-health-assessment
Title: "Space Joint Health Assessment"
Description: "Ultrasound-based joint health assessment during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $sct#241615005 "Ultrasound of joint"
* code ^short = "Joint health ultrasound assessment"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* bodySite 0..1 MS
* bodySite ^short = "Joint assessed"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    jointEffusion 0..1 and
    cartilageThickness 0..1 and
    synovialAssessment 0..1

* component[jointEffusion] ^short = "Joint effusion presence and volume"
* component[jointEffusion].code = JointAssessmentCS#joint-effusion "Joint Effusion"
* component[jointEffusion].value[x] only Quantity or CodeableConcept

* component[cartilageThickness] ^short = "Cartilage thickness in mm"
* component[cartilageThickness].code = JointAssessmentCS#cartilage-thickness "Cartilage Thickness"
* component[cartilageThickness].value[x] only Quantity
* component[cartilageThickness].valueQuantity.system = $ucum
* component[cartilageThickness].valueQuantity.code = #mm

* component[synovialAssessment] ^short = "Synovial membrane assessment"
* component[synovialAssessment].code = JointAssessmentCS#synovial-assessment "Synovial Assessment"
* component[synovialAssessment].value[x] only CodeableConcept

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS
