// Planetary Protection and Microbial Contamination
// WP13: Fujimura et al. (Applied and Environmental Microbiology, April 2026)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: PlanetaryProtectionCategoryCS
Id: planetary-protection-category-cs
Title: "Planetary Protection Category Code System"
Description: "COSPAR planetary protection categories for mission classification"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #category-i "Category I" "Missions to target bodies not of direct interest for understanding chemical evolution or origin of life (e.g., undifferentiated metamorphosed asteroids)"
* #category-ii "Category II" "Missions to target bodies of significant interest but low contamination concern (e.g., comets, Jupiter, Saturn)"
* #category-iii "Category III" "Flyby and orbiter missions to target bodies of chemical evolution and/or origin-of-life interest (e.g., Mars, Europa)"
* #category-iv "Category IV" "Lander and probe missions to target bodies of chemical evolution and/or origin-of-life interest"
* #category-v "Category V" "All Earth-return missions; subcategories for restricted and unrestricted return"

CodeSystem: MicrobialContaminantTypeCS
Id: microbial-contaminant-type-cs
Title: "Microbial Contaminant Type Code System"
Description: "Types of microbial contamination relevant to planetary protection"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #bacterial-spore "Bacterial Spore" "Heat-resistant bacterial endospore"
* #fungal-spore "Fungal Spore" "Fungal spore capable of surviving environmental extremes"
* #vegetative-bacteria "Vegetative Bacteria" "Actively growing bacterial cell"
* #biofilm "Biofilm" "Microbial community embedded in extracellular polymer matrix"
* #viable-microbe "Viable Microbe" "Any culturable or metabolically active microorganism"

CodeSystem: SterilizationMethodCS
Id: sterilization-method-cs
Title: "Sterilization Method Code System"
Description: "Sterilization methods for planetary protection bioburden reduction"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #dhmr "Dry Heat Microbial Reduction (DHMR)" "Dry heat treatment for spore inactivation, typically 110-125°C"
* #uv-sterilization "UV Sterilization" "Ultraviolet radiation for surface decontamination"
* #vhp "Vaporized Hydrogen Peroxide (VHP)" "VHP exposure for surface sterilization"
* #gamma-irradiation "Gamma Irradiation" "Ionizing radiation for bulk sterilization"
* #ethylene-oxide "Ethylene Oxide" "Chemical gas sterilization for heat-sensitive materials"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: PlanetaryProtectionCategoryVS
Id: planetary-protection-category-vs
Title: "Planetary Protection Category Value Set"
Description: "COSPAR planetary protection categories"
* ^experimental = false
* ^status = #active
* include codes from system PlanetaryProtectionCategoryCS

ValueSet: MicrobialContaminantTypeVS
Id: microbial-contaminant-type-vs
Title: "Microbial Contaminant Type Value Set"
Description: "Types of microbial contamination"
* ^experimental = false
* ^status = #active
* include codes from system MicrobialContaminantTypeCS

ValueSet: SterilizationMethodVS
Id: sterilization-method-vs
Title: "Sterilization Method Value Set"
Description: "Sterilization methods for planetary protection"
* ^experimental = false
* ^status = #active
* include codes from system SterilizationMethodCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: PlanetaryProtectionCategory
Id: planetary-protection-category
Title: "Planetary Protection Category"
Description: "COSPAR planetary protection category applicable to the procedure, device, or observation"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* ^context[1].type = #element
* ^context[1].expression = "Device"
* ^context[2].type = #element
* ^context[2].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from PlanetaryProtectionCategoryVS (extensible)

// =====================================================
// PROFILES
// =====================================================

Profile: MicrobialContaminationCondition
Parent: Condition
Id: microbial-contamination-condition
Title: "Microbial Contamination Condition"
Description: "Diagnosis of microbial contamination on spacecraft surfaces or equipment with planetary protection classification"
* ^version = "1.0.0"
* ^status = #active

* clinicalStatus MS
* verificationStatus MS

* code 1..1 MS
* code from MicrobialContaminantTypeVS (extensible)
* code ^short = "Type of microbial contamination"

* subject 1..1 MS
* subject ^short = "Spacecraft, habitat, or equipment (may reference Device or generic)"

* onset[x] 0..1 MS
* onset[x] only dateTime

* note 0..* MS
* note ^short = "Contamination details and location"

* extension contains
    PlanetaryProtectionCategory named planetaryProtectionCategory 0..1 MS and
    MissionContext named missionContext 0..1 MS

Profile: MicrobialContaminationRisk
Parent: RiskAssessment
Id: microbial-contamination-risk
Title: "Microbial Contamination Risk"
Description: "Forward contamination risk prediction for planetary protection compliance"
* ^version = "1.0.0"
* ^status = #active

* status MS

* subject 1..1 MS
* subject ^short = "Mission, spacecraft, or landing site"

* code 0..1 MS
* code ^short = "Risk assessment type"

* prediction 0..* MS
* prediction.outcome 0..1 MS
* prediction.outcome from MicrobialContaminantTypeVS (extensible)
* prediction.outcome ^short = "Predicted contamination type"
* prediction.probability[x] 0..1 MS
* prediction.probability[x] only decimal
* prediction.probabilityDecimal ^short = "Probability of forward contamination (0.0-1.0)"

* mitigation 0..1 MS
* mitigation ^short = "Recommended sterilization or containment measures"

* basis 0..* MS
* basis ^short = "Basis data (bioburden assays, environmental surveys)"

* extension contains
    PlanetaryProtectionCategory named planetaryProtectionCategory 0..1 MS and
    MissionContext named missionContext 0..1 MS

Profile: SterilizationProcedure
Parent: Procedure
Id: sterilization-procedure
Title: "Sterilization Procedure"
Description: "Sterilization procedure for planetary protection bioburden reduction (UV, DHMR, VHP, etc.)"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from SterilizationMethodVS (extensible)
* code ^short = "Sterilization method used"

* subject 1..1 MS
* subject ^short = "Equipment or surface being sterilized"

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* outcome 0..1 MS
* outcome ^short = "Sterilization outcome (bioburden reduction achieved)"

* note 0..* MS
* note ^short = "Process parameters (temperature, duration, pressure)"

* extension contains
    PlanetaryProtectionCategory named planetaryProtectionCategory 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: MicrobialViabilityAssay
Parent: Observation
Id: microbial-viability-assay
Title: "Microbial Viability Assay"
Description: "Microbial viability assay measuring colony-forming units or most probable number on spacecraft surfaces"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code ^short = "Assay type (surface swab, air sample, etc.)"

* subject 1..1 MS
* subject ^short = "Surface, equipment, or environment sampled"

* effective[x] 0..1 MS
* effective[x] only dateTime

* specimen 0..1 MS
* specimen ^short = "Surface swab or air sample specimen"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    mpnCount 0..1 MS and
    cfuCount 0..1 MS and
    contaminantType 0..1 MS

* component[mpnCount].code = $loinc#35659-2 "Bacteria [#/volume] by Most probable number"
* component[mpnCount].value[x] only Quantity
* component[mpnCount].valueQuantity.system = $ucum
* component[mpnCount].valueQuantity.code = #/mL
* component[mpnCount].valueQuantity ^short = "Most probable number count"

* component[cfuCount].code = $loinc#18901-0 "Bacteria [#/area] by Colony count"
* component[cfuCount].value[x] only Quantity
* component[cfuCount].valueQuantity ^short = "Colony-forming units per area"

* component[contaminantType].code = $sct#264395009 "Microorganism"
* component[contaminantType].value[x] only CodeableConcept
* component[contaminantType].valueCodeableConcept from MicrobialContaminantTypeVS (extensible)
* component[contaminantType].valueCodeableConcept ^short = "Type of microbial contaminant identified"

* extension contains
    PlanetaryProtectionCategory named planetaryProtectionCategory 0..1 MS and
    MissionContext named missionContext 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: Sterilization-DHMR-001
InstanceOf: SterilizationProcedure
Title: "DHMR Sterilization at 125C/50hr"
Description: "Dry heat microbial reduction sterilization of Mars lander component at 125°C for 50 hours"
Usage: #example

* status = #completed
* code = SterilizationMethodCS#dhmr "Dry Heat Microbial Reduction (DHMR)"
* subject.display = "Mars Sample Return Lander - Canister Assembly"
* performedPeriod.start = "2028-01-10T08:00:00Z"
* performedPeriod.end = "2028-01-12T10:00:00Z"
* outcome = $sct#385669000 "Successful"
* note.text = "DHMR at 125°C for 50 hours. Pre-treatment bioburden: 3.2×10⁴ spores. Post-treatment: <10 spores. 3.5-log reduction achieved."
* extension[planetaryProtectionCategory].valueCodeableConcept = PlanetaryProtectionCategoryCS#category-iv "Category IV"

Instance: MicrobialAssay-SurfaceSwab-001
InstanceOf: MicrobialViabilityAssay
Title: "Surface Swab CFU Assay"
Description: "Surface swab colony-forming unit assay of Mars lander deck panel"
Usage: #example

* status = #final
* code = $loinc#630-4 "Bacteria identified in specimen by Culture"
* subject.display = "Mars Lander - Deck Panel B-7"
* effectiveDateTime = "2028-01-09T14:00:00Z"
* component[cfuCount].code = $loinc#18901-0 "Bacteria [#/area] by Colony count"
* component[cfuCount].valueQuantity.value = 32
* component[cfuCount].valueQuantity.unit = "CFU/25cm2"
* component[contaminantType].code = $sct#264395009 "Microorganism"
* component[contaminantType].valueCodeableConcept = MicrobialContaminantTypeCS#bacterial-spore "Bacterial Spore"
* extension[planetaryProtectionCategory].valueCodeableConcept = PlanetaryProtectionCategoryCS#category-iv "Category IV"

Instance: ContaminationRisk-MarsLander-001
InstanceOf: MicrobialContaminationRisk
Title: "Mars Lander Contamination Risk"
Description: "Forward contamination risk assessment for Mars lander mission"
Usage: #example

* status = #final
* subject.display = "Mars Sample Return Mission - Landing Site Jezero Crater"
* code.text = "Forward Contamination Risk Assessment"
* prediction[0].outcome = MicrobialContaminantTypeCS#bacterial-spore "Bacterial Spore"
* prediction[0].probabilityDecimal = 0.00012
* mitigation = "DHMR sterilization of all lander surfaces, Category IV-b bioburden requirements met"
* extension[planetaryProtectionCategory].valueCodeableConcept = PlanetaryProtectionCategoryCS#category-iv "Category IV"
