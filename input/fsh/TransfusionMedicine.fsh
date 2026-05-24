// Blood Products & Transfusion Medicine
// WP5: Abstracts 54/57 (RBC rehydration, austere blood banking)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceBloodProductCS
Id: space-blood-product-cs
Title: "Space Blood Product Code System"
Description: "Blood products adapted for spaceflight and austere environment use"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #lyophilized-rbc "Lyophilized Red Blood Cells" "Freeze-dried RBCs for long-duration storage and reconstitution"
* #fresh-whole-blood "Fresh Whole Blood" "Warm fresh whole blood from buddy donor"
* #freeze-dried-plasma "Freeze-Dried Plasma" "Lyophilized plasma for reconstitution"
* #rehydrated-rbc "Rehydrated Red Blood Cells" "Reconstituted lyophilized RBCs ready for transfusion"

CodeSystem: SpaceSpecimenTypeCS
Id: space-specimen-type-cs
Title: "Space Specimen Type Code System"
Description: "Specimen types collected during spaceflight with microgravity-adapted methods"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dried-blood-spot "Dried Blood Spot" "Capillary blood collected on filter paper for storage and analysis"
* #capillary-blood "Capillary Blood" "Blood obtained via fingerstick or heelstick in microgravity"
* #venous-blood-microgravity "Venous Blood (Microgravity)" "Venous blood draw adapted for microgravity conditions"
* #saliva-passive "Saliva (Passive Collection)" "Saliva collected via passive drool in microgravity"
* #urine-void-bag "Urine (Void Bag Collection)" "Urine collected using microgravity-compatible void bag system"

CodeSystem: SpaceTransfusionProcedureCS
Id: space-transfusion-procedure-cs
Title: "Space Transfusion Procedure Code System"
Description: "Transfusion procedures adapted for spaceflight and austere environments"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #buddy-transfusion "Buddy Transfusion" "Direct crew-to-crew whole blood transfusion"
* #lyophilized-rbc-transfusion "Lyophilized RBC Transfusion" "Transfusion of reconstituted lyophilized red blood cells"
* #fdp-transfusion "Freeze-Dried Plasma Transfusion" "Transfusion of reconstituted freeze-dried plasma"
* #autologous-pre-deposit "Autologous Pre-Deposit" "Pre-mission autologous blood collection for mission use"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceBloodProductVS
Id: space-blood-product-vs
Title: "Space Blood Product Value Set"
Description: "Blood products for spaceflight use"
* ^experimental = false
* ^status = #active
* include codes from system SpaceBloodProductCS

ValueSet: SpaceSpecimenTypeVS
Id: space-specimen-type-vs
Title: "Space Specimen Type Value Set"
Description: "Specimen types collected during spaceflight"
* ^experimental = false
* ^status = #active
* include codes from system SpaceSpecimenTypeCS
* $sct#119297000 "Blood specimen"
* $sct#119364003 "Serum specimen"
* $sct#122575003 "Urine specimen"
* $sct#119342007 "Saliva specimen"

ValueSet: SpaceTransfusionProcedureVS
Id: space-transfusion-procedure-vs
Title: "Space Transfusion Procedure Value Set"
Description: "Transfusion procedures for spaceflight"
* ^experimental = false
* ^status = #active
* include codes from system SpaceTransfusionProcedureCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceBloodProduct
Parent: BiologicallyDerivedProduct
Id: space-blood-product
Title: "Space Blood Product"
Description: "Blood products adapted for spaceflight including lyophilized RBCs and freeze-dried plasma"
* ^version = "1.0.0"
* ^status = #active

* productCategory 0..1 MS
* productCategory = #cells

* productCode 0..1 MS
* productCode from SpaceBloodProductVS (extensible)
* productCode ^short = "Type of space-adapted blood product"

* collection 0..1 MS
* collection.collected[x] 0..1 MS
* collection.collected[x] only dateTime
* collection.source 0..1 MS
* collection.source ^short = "Donor reference"

* processing 0..* MS
* processing ^short = "Processing steps (lyophilization, rehydration, irradiation)"
* processing.description 0..1 MS
* processing.procedure 0..1 MS

* storage 0..* MS
* storage ^short = "Storage conditions"
* storage.temperature 0..1 MS
* storage.duration 0..1 MS

Profile: SpaceTransfusionProcedure
Parent: Procedure
Id: space-transfusion-procedure
Title: "Space Transfusion Procedure"
Description: "Blood transfusion procedure adapted for spaceflight and austere environments"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from SpaceTransfusionProcedureVS (extensible)
* code ^short = "Type of transfusion procedure"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* usedReference 0..* MS
* usedReference ^short = "Blood product used in transfusion"

* bodySite 0..* MS
* bodySite ^short = "IV access site"

* outcome 0..1 MS
* outcome ^short = "Procedure outcome"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: SpaceSpecimenCollection
Parent: Specimen
Id: space-specimen-collection
Title: "Space Specimen Collection"
Description: "Specimen collected during spaceflight using microgravity-adapted methods"
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
* collection.bodySite 0..1 MS

* container 0..* MS
* container ^short = "Microgravity-safe specimen container"
* container.type 0..1 MS

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS
