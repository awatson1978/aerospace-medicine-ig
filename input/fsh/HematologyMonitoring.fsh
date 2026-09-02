// Hematology Monitoring
// WP9: Abstract 111 (space travel-associated anaemia)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceAnemiaCS
Id: space-anemia-cs
Title: "Space Anemia Code System"
Description: "Parameters for spaceflight-associated anemia assessment"
* ^count = 2
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #rbc-mass "Red Blood Cell Mass" "Total red blood cell volume measurement"
* #co-breath-test "CO Breath Test" "Carbon monoxide breath test for RBC destruction rate"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceAnemiaVS
Id: space-anemia-vs
Title: "Space Anemia Value Set"
Description: "Spaceflight anemia assessment parameters"
* ^experimental = true
* ^status = #active
* include codes from system SpaceAnemiaCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceflightAnemiaPanel
Parent: Observation
Id: spaceflight-anemia-panel
Title: "Spaceflight Anemia Panel"
Description: "Panel of hematological markers for spaceflight-associated anemia assessment"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#24360-1 "Hemoglobin and Hematocrit panel"
* code ^short = "Spaceflight anemia panel"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    hemoglobin 0..1 and
    hematocrit 0..1 and
    reticulocyteCount 0..1 and
    haptoglobin 0..1 and
    ldh 0..1 and
    rbcMass 0..1 and
    coBreathTest 0..1

* component[hemoglobin] ^short = "Hemoglobin concentration"
* component[hemoglobin].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* component[hemoglobin].value[x] only Quantity
* component[hemoglobin].valueQuantity.system = $ucum
* component[hemoglobin].valueQuantity.code = #g/dL

* component[hematocrit] ^short = "Hematocrit percentage"
* component[hematocrit].code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* component[hematocrit].value[x] only Quantity
* component[hematocrit].valueQuantity.system = $ucum
* component[hematocrit].valueQuantity.code = #%

* component[reticulocyteCount] ^short = "Reticulocyte count"
* component[reticulocyteCount].code = $loinc#17849-1 "Reticulocytes [#/volume] in Blood"
* component[reticulocyteCount].value[x] only Quantity
* component[reticulocyteCount].valueQuantity.system = $ucum
* component[reticulocyteCount].valueQuantity.code = #10*9/L

* component[haptoglobin] ^short = "Haptoglobin level (hemolysis marker)"
* component[haptoglobin].code = $loinc#4542-7 "Haptoglobin [Mass/volume] in Serum"
* component[haptoglobin].value[x] only Quantity
* component[haptoglobin].valueQuantity.system = $ucum
* component[haptoglobin].valueQuantity.code = #mg/dL

* component[ldh] ^short = "Lactate dehydrogenase (hemolysis marker)"
* component[ldh].code = $loinc#2532-0 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
* component[ldh].value[x] only Quantity
* component[ldh].valueQuantity.system = $ucum
* component[ldh].valueQuantity.code = #U/L

* component[rbcMass] ^short = "Total red blood cell mass"
* component[rbcMass].code = SpaceAnemiaCS#rbc-mass "Red Blood Cell Mass"
* component[rbcMass].value[x] only Quantity
* component[rbcMass].valueQuantity.system = $ucum
* component[rbcMass].valueQuantity.code = #mL

* component[coBreathTest] ^short = "CO breath test for RBC destruction rate"
* component[coBreathTest].code = SpaceAnemiaCS#co-breath-test "CO Breath Test"
* component[coBreathTest].value[x] only Quantity
* component[coBreathTest].valueQuantity.system = $ucum
* component[coBreathTest].valueQuantity.code = #[ppm]

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS
