// Blood Flow Restriction Training in Microgravity
// WP12: "Blood flow restriction training in microgravity" (npj Microgravity 2026)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: BFRTProtocolCS
Id: bfrt-protocol-cs
Title: "BFRT Protocol Code System"
Description: "Blood flow restriction training protocol types for microgravity exercise countermeasures"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #intermittent-bfrt "Intermittent BFRT" "Alternating periods of occlusion and reperfusion during exercise"
* #continuous-bfrt "Continuous BFRT" "Sustained occlusion throughout the exercise set"
* #auto-regulated-bfrt "Auto-Regulated BFRT" "Pressure automatically adjusted based on limb occlusion pressure"
* #low-load-bfrt "Low-Load BFRT (20-30% 1RM)" "Blood flow restriction with 20-30% of one-repetition maximum"
* #moderate-load-bfrt "Moderate-Load BFRT (40-50% 1RM)" "Blood flow restriction with 40-50% of one-repetition maximum"

CodeSystem: BFRTOutcomeCS
Id: bfrt-outcome-cs
Title: "BFRT Outcome Code System"
Description: "Outcome measures for blood flow restriction training effectiveness"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #muscle-csa "Muscle Cross-Sectional Area" "Cross-sectional area of muscle measured by imaging"
* #p1np "P1NP (Procollagen Type I N-Propeptide)" "Bone formation marker indicating osteoblast activity"
* #ctx "CTX (C-Terminal Telopeptide)" "Bone resorption marker indicating osteoclast activity"
* #limb-occlusion-pressure "Limb Occlusion Pressure" "Arterial occlusion pressure measured at the proximal limb"
* #rep-max-1rm "1-Repetition Maximum (1RM)" "Maximum weight lifted for one complete repetition"
* #muscle-thickness "Muscle Thickness" "Ultrasound-measured muscle thickness"
* #vascular-compliance "Vascular Compliance" "Arterial compliance measured post-BFRT"

CodeSystem: BFRTDeviceTypeCS
Id: bfrt-device-type-cs
Title: "BFRT Device Type Code System"
Description: "Types of blood flow restriction devices"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #pneumatic-cuff "Pneumatic Cuff" "Automated pneumatic occlusion cuff with controlled pressure"
* #intelligent-pressure-cuff "Intelligent Pressure Cuff" "Smart cuff with auto-regulation based on limb occlusion pressure"
* #elastic-wrap "Elastic Wrap" "Elastic band or wrap for manual blood flow restriction"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: BFRTProtocolVS
Id: bfrt-protocol-vs
Title: "BFRT Protocol Value Set"
Description: "Blood flow restriction training protocol types"
* ^experimental = false
* ^status = #active
* include codes from system BFRTProtocolCS

ValueSet: BFRTOutcomeVS
Id: bfrt-outcome-vs
Title: "BFRT Outcome Value Set"
Description: "BFRT outcome measures"
* ^experimental = false
* ^status = #active
* include codes from system BFRTOutcomeCS

ValueSet: BFRTDeviceTypeVS
Id: bfrt-device-type-vs
Title: "BFRT Device Type Value Set"
Description: "BFRT device types"
* ^experimental = false
* ^status = #active
* include codes from system BFRTDeviceTypeCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: OcclusionPressure
Id: occlusion-pressure
Title: "Occlusion Pressure"
Description: "Applied limb occlusion pressure during blood flow restriction training"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #mm[Hg]
* valueQuantity ^short = "Occlusion pressure in mmHg"

Extension: SexSpecificProtocol
Id: sex-specific-protocol
Title: "Sex-Specific Protocol"
Description: "Indicates sex-specific adaptations to the BFRT protocol based on known differences in vascular and musculoskeletal response"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "ActivityDefinition"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Sex-specific protocol adaptation"

// =====================================================
// PROFILES
// =====================================================

Profile: BFRTDevice
Parent: Device
Id: bfrt-device
Title: "BFRT Device"
Description: "Blood flow restriction training occlusion cuff device"
* ^version = "1.0.0"
* ^status = #active

* type 1..1 MS
* type from BFRTDeviceTypeVS (extensible)
* type ^short = "Type of BFRT device"

* patient 0..1 MS
* patient only Reference(Astronaut)

* status MS

* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS

* deviceName 0..* MS

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: BFRTProcedure
Parent: Procedure
Id: bfrt-procedure
Title: "BFRT Procedure"
Description: "Blood flow restriction training session performed in microgravity or partial gravity"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from BFRTProtocolVS (extensible)
* code ^short = "BFRT protocol type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* usedReference 0..* MS
* usedReference ^short = "BFRT device used (Reference to BFRTDevice)"

* bodySite 0..* MS
* bodySite ^short = "Target limb or muscle group"

* note 0..* MS
* note ^short = "Session notes including load, sets, reps"

* extension contains
    OcclusionPressure named occlusionPressure 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: BFRTActivityDefinition
Parent: ActivityDefinition
Id: bfrt-activity-definition
Title: "BFRT Activity Definition"
Description: "Prescribed BFRT protocol defining exercise parameters, occlusion pressure targets, and sex-specific adaptations"
* ^version = "1.0.0"
* ^status = #active

* status MS
* name 0..1 MS
* title 0..1 MS

* code 0..1 MS
* code from BFRTProtocolVS (extensible)
* code ^short = "BFRT protocol type"

* description 0..1 MS
* description ^short = "Protocol description including sets, reps, load percentage"

* dosage 0..* MS
* dosage ^short = "Exercise dosage parameters"

* extension contains
    SexSpecificProtocol named sexSpecificProtocol 0..1 MS

Profile: BFRTOutcomeObservation
Parent: Observation
Id: bfrt-outcome-observation
Title: "BFRT Outcome Observation"
Description: "Outcome measurements from blood flow restriction training including musculoskeletal and bone biomarkers"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from BFRTOutcomeVS (extensible)
* code ^short = "BFRT outcome measure type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 0..1 MS
* effective[x] only dateTime

* value[x] 0..1 MS
* value[x] only Quantity

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    muscleCsa 0..1 MS and
    boneFormation 0..1 MS and
    boneResorption 0..1 MS and
    muscleThickness 0..1 MS

* component[muscleCsa].code = BFRTOutcomeCS#muscle-csa "Muscle Cross-Sectional Area"
* component[muscleCsa].value[x] only Quantity
* component[muscleCsa].valueQuantity.system = $ucum
* component[muscleCsa].valueQuantity.code = #cm2

* component[boneFormation].code = BFRTOutcomeCS#p1np "P1NP (Procollagen Type I N-Propeptide)"
* component[boneFormation].value[x] only Quantity
* component[boneFormation].valueQuantity.system = $ucum
* component[boneFormation].valueQuantity.code = #ng/mL

* component[boneResorption].code = BFRTOutcomeCS#ctx "CTX (C-Terminal Telopeptide)"
* component[boneResorption].value[x] only Quantity
* component[boneResorption].valueQuantity.system = $ucum
* component[boneResorption].valueQuantity.code = #ng/mL

* component[muscleThickness].code = BFRTOutcomeCS#muscle-thickness "Muscle Thickness"
* component[muscleThickness].value[x] only Quantity
* component[muscleThickness].valueQuantity.system = $ucum
* component[muscleThickness].valueQuantity.code = #cm

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: BFRTCarePlan
Parent: CarePlan
Id: bfrt-care-plan
Title: "BFRT Care Plan"
Description: "Care plan for blood flow restriction training addressing bone loss and muscle atrophy countermeasures"
* ^version = "1.0.0"
* ^status = #active

* status MS
* intent MS

* title 0..1 MS
* title ^short = "BFRT care plan title"

* subject 1..1 MS
* subject only Reference(Astronaut)

* addresses 0..* MS
* addresses ^short = "Conditions addressed (bone loss, muscle atrophy)"

* activity 0..* MS
* activity.reference 0..1 MS
* activity.reference ^short = "Reference to BFRTActivityDefinition"
* activity.detail 0..1 MS
* activity.detail.code 0..1 MS
* activity.detail.code from BFRTProtocolVS (extensible)
* activity.detail.status MS
* activity.detail.description 0..1 MS
* activity.detail.description ^short = "Protocol details"

* extension contains
    MissionContext named missionContext 0..1 MS and
    SexSpecificProtocol named sexSpecificProtocol 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: BFRT-Pneumatic-Cuff-001
InstanceOf: BFRTDevice
Title: "BFRT Pneumatic Cuff Device"
Description: "Pneumatic occlusion cuff for blood flow restriction training on ISS"
Usage: #example

* type = BFRTDeviceTypeCS#pneumatic-cuff "Pneumatic Cuff"
* deviceName.name = "Kaatsu Nano BFR Unit #BFR-001"
* deviceName.type = #user-friendly-name
* manufacturer = "Kaatsu Global"
* modelNumber = "Nano"
* serialNumber = "BFR-ISS-2028-001"
* patient = Reference(Patient/ExampleAstronaut)
* status = #active

Instance: BFRT-LowerBody-Session-001
InstanceOf: BFRTProcedure
Title: "Lower Body BFRT Session"
Description: "Lower-body BFRT session at 30% 1RM with 80 mmHg occlusion pressure"
Usage: #example

* status = #completed
* code = BFRTProtocolCS#low-load-bfrt "Low-Load BFRT (20-30% 1RM)"
* subject = Reference(Patient/ExampleAstronaut)
* performedDateTime = "2028-04-15T08:30:00Z"
* usedReference = Reference(Device/BFRT-Pneumatic-Cuff-001)
* bodySite = $sct#68367000 "Thigh structure"
* note.text = "3 sets x 15 reps at 30% 1RM, 80 mmHg occlusion, 1-min rest between sets"
* extension[occlusionPressure].valueQuantity.value = 80
* extension[occlusionPressure].valueQuantity.unit = "mmHg"
* extension[occlusionPressure].valueQuantity.system = $ucum
* extension[occlusionPressure].valueQuantity.code = #mm[Hg]
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"

Instance: BFRT-Quadriceps-CSA-001
InstanceOf: BFRTOutcomeObservation
Title: "Quadriceps CSA Outcome"
Description: "Quadriceps cross-sectional area measurement after 8 weeks of BFRT"
Usage: #example

* status = #final
* code = BFRTOutcomeCS#muscle-csa "Muscle Cross-Sectional Area"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-06-10T09:00:00Z"
* component[muscleCsa].code = BFRTOutcomeCS#muscle-csa "Muscle Cross-Sectional Area"
* component[muscleCsa].valueQuantity.value = 72.5
* component[muscleCsa].valueQuantity.unit = "cm2"
* component[muscleCsa].valueQuantity.system = $ucum
* component[muscleCsa].valueQuantity.code = #cm2
* component[boneFormation].code = BFRTOutcomeCS#p1np "P1NP (Procollagen Type I N-Propeptide)"
* component[boneFormation].valueQuantity.value = 45.2
* component[boneFormation].valueQuantity.unit = "ng/mL"
* component[boneFormation].valueQuantity.system = $ucum
* component[boneFormation].valueQuantity.code = #ng/mL
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#orbital-ops "Orbital Operations"
* extension[flightDay].valueInteger = 56

Instance: BFRT-Protocol-LowLoad-001
InstanceOf: BFRTActivityDefinition
Title: "Low-Load BFRT Protocol"
Description: "Prescribed low-load BFRT protocol for lower extremity countermeasures"
Usage: #example

* status = #active
* name = "LowLoadBFRTProtocol"
* title = "Low-Load BFRT Protocol for Lower Extremity"
* code = BFRTProtocolCS#low-load-bfrt "Low-Load BFRT (20-30% 1RM)"
* description = "3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week"
