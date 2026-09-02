// Space Omics Expansion
// WP17: SOMA / international astronaut biobank (Nature, 2024-2026)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceOmicsTypeCS
Id: space-omics-type-cs
Title: "Space Omics Type Code System"
Description: "Multi-omics analysis types for astronaut molecular profiling"
* ^count = 7
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #genomics "Genomics" "Whole genome sequencing or genotyping analysis"
* #transcriptomics "Transcriptomics" "RNA sequencing or gene expression profiling"
* #proteomics "Proteomics" "Protein expression and modification analysis"
* #metabolomics "Metabolomics" "Small molecule metabolite profiling"
* #epigenomics "Epigenomics" "DNA methylation and histone modification analysis"
* #microbiomics "Microbiomics" "Microbiome composition and diversity analysis"
* #lipidomics "Lipidomics" "Lipid species profiling and quantification"

CodeSystem: ExpandedSpecimenTypeCS
Id: expanded-specimen-type-cs
Title: "Expanded Specimen Type Code System"
Description: "Specimen types for astronaut biobank and multi-omics analysis"
* ^count = 8
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dried-blood-spot "Dried Blood Spot" "Capillary blood collected on filter paper for storage and analysis"
* #extracellular-vesicle "Extracellular Vesicle" "Isolated extracellular vesicles from blood or other biofluids"
* #microbiome-swab-nasal "Nasal Microbiome Swab" "Nasal swab for microbiome analysis"
* #microbiome-swab-skin "Skin Microbiome Swab" "Skin swab for microbiome analysis"
* #microbiome-swab-oral "Oral Microbiome Swab" "Oral swab for microbiome analysis"
* #microbiome-swab-gut "Gut Microbiome Sample" "Fecal sample for gut microbiome analysis"
* #hair-follicle "Hair Follicle" "Hair follicle sample for DNA or biomarker analysis"
* #exhaled-breath-condensate "Exhaled Breath Condensate" "Condensed exhaled breath for volatile organic compound analysis"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceOmicsTypeVS
Id: space-omics-type-vs
Title: "Space Omics Type Value Set"
Description: "Multi-omics analysis types"
* ^experimental = true
* ^status = #active
* include codes from system SpaceOmicsTypeCS

ValueSet: ExpandedSpecimenTypeVS
Id: expanded-specimen-type-vs
Title: "Expanded Specimen Type Value Set"
Description: "Specimen types for astronaut biobank"
* ^experimental = true
* ^status = #active
* include codes from system ExpandedSpecimenTypeCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: BiobankLocation
Id: biobank-location
Title: "Biobank Location"
Description: "Storage location details for astronaut biobank specimens"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Specimen"
* extension contains
    facilityId 1..1 MS and
    storageTemperature 0..1 MS and
    containerBarcode 0..1 MS
* extension[facilityId].value[x] only string
* extension[facilityId].valueString ^short = "Biobank facility identifier"
* extension[storageTemperature].value[x] only Quantity
* extension[storageTemperature].valueQuantity.system = $ucum
* extension[storageTemperature].valueQuantity.code = #Cel
* extension[storageTemperature].valueQuantity ^short = "Storage temperature in degrees Celsius"
* extension[containerBarcode].value[x] only string
* extension[containerBarcode].valueString ^short = "Specimen container barcode identifier"

// =====================================================
// PROFILES
// =====================================================

Profile: MultiOmicsObservation
Parent: Observation
Id: multi-omics-observation
Title: "Multi-Omics Observation"
Description: "Multi-omics analysis observation from astronaut molecular profiling"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from SpaceOmicsTypeVS (extensible)
* code ^short = "Type of omics analysis"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 0..1 MS
* effective[x] only dateTime

* specimen 0..1 MS
* specimen ^short = "Specimen analyzed"

* value[x] 0..1 MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    platform 0..1 MS and
    readCount 0..1 MS and
    qualityScore 0..1 MS

* component[platform].code = $loinc#85069-3 "Sequencing platform"
* component[platform].value[x] only string
* component[platform].valueString ^short = "Sequencing or analysis platform name"

* component[readCount].code = $loinc#98847-7 "Sequence read count"
* component[readCount].value[x] only Quantity
* component[readCount].valueQuantity ^short = "Total number of reads or features detected"

* component[qualityScore].code = $loinc#92822-6 "Quality metric"
* component[qualityScore].value[x] only Quantity
* component[qualityScore].valueQuantity ^short = "Quality score (e.g., Q30, RIN)"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: SpaceMolecularSequence
Parent: MolecularSequence
Id: space-molecular-sequence
Title: "Space Molecular Sequence"
Description: "Molecular sequence data from astronaut genomic, transcriptomic, or proteomic analysis"
* ^version = "1.0.0"
* ^status = #active

* type 0..1 MS
* type ^short = "Sequence type (dna, rna, aa)"

* patient 0..1 MS
* patient only Reference(Astronaut)

* referenceSeq 0..1 MS
* referenceSeq ^short = "Reference sequence for alignment"

Profile: OmicsRiskAssessment
Parent: RiskAssessment
Id: omics-risk-assessment
Title: "Omics Risk Assessment"
Description: "Personalized risk assessment derived from multi-omics molecular profiles"
* ^version = "1.0.0"
* ^status = #active

* status MS

* subject 1..1 MS
* subject only Reference(Astronaut)

* code 0..1 MS
* code ^short = "Risk assessment type"

* basis 0..* MS
* basis only Reference(MultiOmicsObservation or Observation)
* basis ^short = "Multi-omics observations informing this risk assessment"

* prediction 0..* MS
* prediction.outcome 0..1 MS
* prediction.outcome ^short = "Predicted health outcome"
* prediction.probability[x] 0..1 MS
* prediction.probability[x] only decimal
* prediction.probabilityDecimal ^short = "Risk probability (0.0-1.0)"

* mitigation 0..1 MS
* mitigation ^short = "Recommended personalized countermeasures"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: PersonalizedCountermeasurePlan
Parent: CarePlan
Id: personalized-countermeasure-plan
Title: "Personalized Countermeasure Plan"
Description: "Individualized countermeasure plan informed by multi-omics data for spaceflight health optimization"
* ^version = "1.0.0"
* ^status = #active

* status MS
* intent MS

* title 0..1 MS
* title ^short = "Countermeasure plan title"

* subject 1..1 MS
* subject only Reference(Astronaut)

* supportingInfo 0..* MS
* supportingInfo ^short = "References to omics observations and risk assessments"

* addresses 0..* MS
* addresses ^short = "Conditions or risks being addressed"

* activity 0..* MS
* activity.detail 0..1 MS
* activity.detail.code 0..1 MS
* activity.detail.status MS
* activity.detail.description 0..1 MS
* activity.detail.description ^short = "Personalized countermeasure details"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: DBS-Specimen-001
InstanceOf: Specimen
Title: "Dried Blood Spot Specimen with Biobank Metadata"
Description: "Dried blood spot specimen collected in-flight and stored in astronaut biobank"
Usage: #example
* insert SyntheticExample

* type = ExpandedSpecimenTypeCS#dried-blood-spot "Dried Blood Spot"
* subject = Reference(Patient/ExampleAstronaut)
* collection.collectedDateTime = "2028-04-20T07:00:00Z"
* collection.method = $sct#278450005 "Finger-prick sampling"
* status = #available
* extension[biobank-location].extension[facilityId].valueString = "LSDA-JSC-BioBank-01"
* extension[biobank-location].extension[storageTemperature].valueQuantity.value = -80
* extension[biobank-location].extension[storageTemperature].valueQuantity.unit = "Cel"
* extension[biobank-location].extension[storageTemperature].valueQuantity.system = $ucum
* extension[biobank-location].extension[storageTemperature].valueQuantity.code = #Cel
* extension[biobank-location].extension[containerBarcode].valueString = "BNK-2028-DBS-00142"

Instance: Metabolomics-Observation-001
InstanceOf: MultiOmicsObservation
Title: "Metabolomics Observation"
Description: "Untargeted metabolomics analysis of dried blood spot from ISS crew member"
Usage: #example
* insert SyntheticExample

* status = #final
* code = SpaceOmicsTypeCS#metabolomics "Metabolomics"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-04-22T10:00:00Z"
* specimen = Reference(Specimen/DBS-Specimen-001)
* component[platform].code = $loinc#85069-3 "Sequencing platform"
* component[platform].valueString = "Thermo Q Exactive HF-X"
* component[readCount].code = $loinc#98847-7 "Sequence read count"
* component[readCount].valueQuantity.value = 8542
* component[readCount].valueQuantity.unit = "features"
* component[qualityScore].code = $loinc#92822-6 "Quality metric"
* component[qualityScore].valueQuantity.value = 92.3
* component[qualityScore].valueQuantity.unit = "%"
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#orbital-ops "Orbital Operations"
* extension[flightDay].valueInteger = 35

Instance: PersonalizedPlan-001
InstanceOf: PersonalizedCountermeasurePlan
Title: "Personalized Countermeasure Plan"
Description: "Individualized countermeasure plan based on metabolomics and genomics data"
Usage: #example
* insert SyntheticExample

* status = #active
* intent = #plan
* title = "Personalized Bone-Muscle Countermeasure Protocol"
* subject = Reference(Patient/ExampleAstronaut)
* supportingInfo = Reference(Observation/Metabolomics-Observation-001)
* activity[0].detail.description = "Enhanced ARED resistance exercise 6x/week with increased load progression based on elevated CTX/P1NP ratio"
* activity[0].detail.status = #in-progress
* activity[1].detail.description = "Vitamin D supplementation 4000 IU/day based on CYP2R1 variant reducing hydroxylation efficiency"
* activity[1].detail.status = #in-progress
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#orbital-ops "Orbital Operations"
