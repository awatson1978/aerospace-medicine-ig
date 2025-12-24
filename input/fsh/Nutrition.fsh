// Nutrition and Calorie Deficit Tracking Profiles
// Comprehensive nutrition monitoring for space missions

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $aerospace = http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system

// =====================================================
// EXTENSIONS
// =====================================================

Extension: EnergyExpenditure
Id: energy-expenditure
Title: "Energy Expenditure"
Description: "Total daily energy expenditure in kcal/day"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/energy-expenditure"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #kcal/d

Extension: HydrationDeficit
Id: hydration-deficit
Title: "Hydration Deficit"
Description: "Daily hydration deficit in liters per day"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/hydration-deficit"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #L/d

Extension: InventoryRiskFlag
Id: inventory-risk-flag
Title: "Inventory Risk Flag"
Description: "Risk level for nutrition inventory status"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/inventory-risk-flag"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "InventoryItem"
* value[x] only CodeableConcept
* valueCodeableConcept from NutritionInventoryStatusVS (required)

Extension: ShelfLifeDecay
Id: shelf-life-decay
Title: "Shelf Life Decay"
Description: "Degradation of nutritional value over time in space conditions"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/shelf-life-decay"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "NutritionProduct"
* value[x] only Ratio
* valueRatio ^short = "Decay rate as percentage per time unit"

Extension: RehydrationRequirement
Id: rehydration-requirement
Title: "Rehydration Requirement"
Description: "Amount of water required to prepare space food"
* ^url = "http://hl7.org/fhir/uv/aerospace/StructureDefinition/rehydration-requirement"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "NutritionProduct"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from WaterVolumeUnitsVS (required)

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceNutritionTypeCS
Id: space-nutrition-type-cs
Title: "Space Nutrition Product Types"
Description: "Types of nutritional products used in space missions"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #freeze-dried-meal "Freeze-Dried Meal"
* #thermo-stabilized-entree "Thermo-Stabilized Entrée"
* #fresh-produce "Fresh Produce Payload"
* #electrolyte-mix "Supplemental Electrolyte Mix"
* #irradiated-food "Irradiated Food Package"
* #intermediate-moisture "Intermediate Moisture Food"
* #natural-form "Natural Form Food"
* #rehydratable "Rehydratable Food"
* #beverage-powder "Beverage Powder"
* #nutritional-supplement "Nutritional Supplement"

CodeSystem: MacronutrientMetricsCS
Id: macronutrient-metrics-cs
Title: "Macronutrient Metrics"
Description: "Measurement types for macronutrient tracking"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #calorie-intake "Calorie Intake"
* #calorie-expenditure "Calorie Expenditure"
* #calorie-deficit "Calorie Deficit"
* #calorie-surplus "Calorie Surplus"
* #protein-grams "Protein Intake (grams)"
* #carbohydrate-grams "Carbohydrate Intake (grams)"
* #fat-grams "Fat Intake (grams)"
* #fiber-grams "Fiber Intake (grams)"
* #protein-per-kg "Protein per Kilogram Body Weight"

CodeSystem: HydrationTypeCS
Id: hydration-type-cs
Title: "Hydration Product Types"
Description: "Types of hydration products used in space"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #potable-water "Potable Water"
* #recycled-water "Recycled Water"
* #ors "Oral Rehydration Solution"
* #electrolyte-packet "Electrolyte Packet"
* #iv-saline "IV Saline"
* #sports-drink "Sports Drink Mix"
* #tea-coffee "Tea/Coffee Beverage"

CodeSystem: NutritionInventoryStatusCS
Id: nutrition-inventory-status-cs
Title: "Nutrition Inventory Status"
Description: "Status levels for nutrition inventory management"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #adequate "Adequate Supply"
* #low "Low Supply"
* #critical "Critical Supply"
* #expired "Expired Items Present"
* #shortage "Shortage Detected"
* #nominal "Nominal Status"
* #caution "Caution Required"

CodeSystem: CalorieDeficitRiskCS
Id: calorie-deficit-risk-cs
Title: "Calorie Deficit Risk Levels"
Description: "Risk categorization for caloric deficits"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #mild "Mild (<300 kcal/day)"
* #moderate "Moderate (300-600 kcal/day)"
* #severe "Severe (>600 kcal/day)"
* #extreme "Extreme (>1000 kcal/day)"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceNutritionTypeVS
Id: space-nutrition-type-vs
Title: "Space Nutrition Types"
Description: "Types of nutritional products available in space missions"
* ^experimental = false
* ^status = #active
* include codes from system SpaceNutritionTypeCS

ValueSet: MacronutrientMetricsVS
Id: macronutrient-metrics-vs
Title: "Macronutrient Metrics"
Description: "Measurement types for macronutrient tracking"
* ^experimental = false
* ^status = #active
* include codes from system MacronutrientMetricsCS

ValueSet: HydrationTypeVS
Id: hydration-type-vs
Title: "Hydration Types"
Description: "Types of hydration products used in space"
* ^experimental = false
* ^status = #active
* include codes from system HydrationTypeCS

ValueSet: NutritionInventoryStatusVS
Id: nutrition-inventory-status-vs
Title: "Nutrition Inventory Status"
Description: "Status levels for nutrition inventory management"
* ^experimental = false
* ^status = #active
* include codes from system NutritionInventoryStatusCS

ValueSet: CalorieDeficitRiskVS
Id: calorie-deficit-risk-vs
Title: "Calorie Deficit Risk Levels"
Description: "Risk categorization for caloric deficits"
* ^experimental = false
* ^status = #active
* include codes from system CalorieDeficitRiskCS

ValueSet: WaterVolumeUnitsVS
Id: water-volume-units-vs
Title: "Water Volume Units"
Description: "Units for measuring water volume"
* ^experimental = false
* ^status = #active
* include $ucum#mL
* include $ucum#L
* include $ucum#[oz_av]
* include $ucum#[cup_us]

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceNutritionIntake
Parent: Observation
Id: space-nutrition-intake
Title: "Space Nutrition Intake"
Description: "Documentation of actual daily intake and hydration events for space missions"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains nutrition 1..1 MS
* category[nutrition] = $sct#226379006 "Nutrition and dietetics procedure (procedure)"

* code MS
* code from MacronutrientMetricsVS (preferred)
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period

// Value represents the amount consumed
* value[x] MS
* value[x] only Quantity

// Components for nutrient breakdown
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    calories 0..1 MS and
    protein 0..1 MS and
    carbohydrates 0..1 MS and
    fats 0..1 MS

* component[calories].code = $loinc#9052-2 "Calorie intake total"
* component[calories].value[x] only Quantity
* component[calories].valueQuantity.system = $ucum
* component[calories].valueQuantity.code = #kcal

* component[protein].code = $loinc#2692-2 "Protein [Mass/volume] in Serum or Plasma"
* component[protein].value[x] only Quantity
* component[protein].valueQuantity.system = $ucum
* component[protein].valueQuantity.code = #g

* component[carbohydrates].code = MacronutrientMetricsCS#carbohydrate-grams
* component[carbohydrates].value[x] only Quantity
* component[carbohydrates].valueQuantity.system = $ucum
* component[carbohydrates].valueQuantity.code = #g

* component[fats].code = MacronutrientMetricsCS#fat-grams
* component[fats].value[x] only Quantity
* component[fats].valueQuantity.system = $ucum
* component[fats].valueQuantity.code = #g

// Mission context extension
* extension contains
    MissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links intake to specific mission"
* extension[missionContext] ^definition = "Reference to the space mission encounter during which this nutrition intake occurred"

Profile: SpaceNutritionProduct
Parent: Medication
Id: space-nutrition-product
Title: "Space Nutrition Product"
Description: "Space-rated food, supplements, and electrolytes with mission-specific properties"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* code MS
* code from SpaceNutritionTypeVS (preferred)

// Manufacturer and lot tracking
* manufacturer MS
* batch.lotNumber MS
* batch.expirationDate MS

// Form (type of food product)
* form MS
* form from SpaceNutritionTypeVS (preferred)

// Space-specific extensions
* extension contains
    RehydrationRequirement named rehydrationRequirement 0..1 MS and
    ShelfLifeDecay named shelfLifeDecay 0..1 MS

* extension[rehydrationRequirement] ^short = "Water needed for preparation"
* extension[shelfLifeDecay] ^short = "Degradation rate in space conditions"

Profile: CalorieDeficitAssessment
Parent: Observation
Id: calorie-deficit-assessment
Title: "Calorie Deficit Assessment"
Description: "Quantifies acute and cumulative calorie deficits for astronauts"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains nutrition 1..1 MS
* category[nutrition] = $sct#182922004 "Dietary regime (regime/therapy)"

* code MS
* code from MacronutrientMetricsVS (extensible)
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #kcal

// Components for detailed breakdown
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    energyExpenditure 0..1 MS and
    energyIntake 0..1 MS and
    riskLevel 0..1 MS

* component[energyExpenditure].code = MacronutrientMetricsCS#calorie-expenditure
* component[energyExpenditure].value[x] only Quantity
* component[energyExpenditure].valueQuantity.system = $ucum
* component[energyExpenditure].valueQuantity.code = #kcal

* component[energyIntake].code = MacronutrientMetricsCS#calorie-intake
* component[energyIntake].value[x] only Quantity
* component[energyIntake].valueQuantity.system = $ucum
* component[energyIntake].valueQuantity.code = #kcal

* component[riskLevel].code = CalorieDeficitRiskCS#mild "Mild (<300 kcal/day)"
* component[riskLevel].value[x] only CodeableConcept
* component[riskLevel].valueCodeableConcept from CalorieDeficitRiskVS (required)

// Mission context extension
* extension contains
    MissionContext named missionContext 0..1 MS and
    EnergyExpenditure named energyExpenditure 0..1 MS

* extension[missionContext] ^short = "Links assessment to specific mission"
* extension[energyExpenditure] ^short = "Total daily energy expenditure"

Profile: HydrationStatusObservation
Parent: Observation
Id: hydration-status-observation
Title: "Hydration Status Observation"
Description: "Hydration status monitoring for space missions"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains hydration 1..1 MS
* category[hydration] = $sct#169833004 "Fluid intake observable (observable entity)"

* code MS
* code from HydrationTypeVS (preferred)
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code from WaterVolumeUnitsVS (required)

// Hydration deficit extension
* extension contains
    MissionContext named missionContext 0..1 MS and
    HydrationDeficit named hydrationDeficit 0..1 MS

* extension[missionContext] ^short = "Links observation to specific mission"
* extension[hydrationDeficit] ^short = "Daily hydration deficit"

Profile: SpaceNutritionInventoryItem
Parent: Basic
Id: space-nutrition-inventory-item
Title: "Space Nutrition Inventory Item"
Description: "Tracks food stores aboard spacecraft or planetary habitats"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* code MS
* code = $sct#226379006 "Nutrition and dietetics procedure (procedure)"

* subject MS
* subject ^short = "Spacecraft or habitat location"

// Space-specific extensions
* extension contains
    InventoryRiskFlag named inventoryRiskFlag 0..1 MS

* extension[inventoryRiskFlag] ^short = "Inventory risk status"
* extension[inventoryRiskFlag] ^definition = "Risk level for current inventory status (adequate, low, critical, expired)"

Profile: MetabolicRiskSummary
Parent: DiagnosticReport
Id: metabolic-risk-summary
Title: "Metabolic Risk Summary"
Description: "Evaluates risk from prolonged caloric deficits and metabolic stress"
* ^version = "1.0.0"
* ^status = #active

// Required elements
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains nutrition 1..1 MS
* category[nutrition] = $sct#103693007 "Diagnostic procedure (procedure)"

* code MS
* code = $sct#410394004 "Nutrition assessment (procedure)"
* subject 1..1 MS
* subject only Reference(Astronaut)
* effective[x] 1..1 MS
* effective[x] only dateTime or Period

// Results should include various metabolic markers
* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result contains
    calorieDeficit 0..* MS and
    hydrationStatus 0..* MS

* result[calorieDeficit] only Reference(CalorieDeficitAssessment)
* result[hydrationStatus] only Reference(HydrationStatusObservation)

// Conclusion and recommendations
* conclusion MS
* conclusionCode MS

// Mission context extension
* extension contains
    DiagnosticReportMissionContext named missionContext 0..1 MS

* extension[missionContext] ^short = "Links report to specific mission"

// Note: DiagnosticReportMissionContext extension is defined in RadiationTracking.fsh
