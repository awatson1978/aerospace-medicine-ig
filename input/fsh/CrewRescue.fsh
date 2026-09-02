// Crew Rescue and Emergency Evacuation
// WP15: NASA OIG audit "Ruled Out Crew Rescue" (2026); Artemis lunar landing analysis

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceEmergencyTypeCS
Id: space-emergency-type-cs
Title: "Space Emergency Type Code System"
Description: "Types of emergency situations during spaceflight operations"
* ^count = 8
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #rapid-depress "Rapid Depressurization" "Loss of cabin pressure requiring immediate response"
* #fire-onboard "Fire Onboard" "Fire or combustion event in the spacecraft"
* #toxic-atmosphere "Toxic Atmosphere" "Contamination of cabin atmosphere with toxic substances"
* #medical-emergency "Medical Emergency" "Crew medical emergency requiring evacuation or advanced care"
* #vehicle-malfunction "Vehicle Malfunction" "Critical spacecraft systems failure"
* #collision-debris "Collision/Debris" "Collision with orbital debris or micrometeorite impact"
* #abort-launch "Launch Abort" "Emergency abort during launch or ascent phase"
* #abort-entry "Entry Abort" "Emergency abort during atmospheric entry"

CodeSystem: EmergencyResponseCS
Id: emergency-response-cs
Title: "Emergency Response Code System"
Description: "Emergency response and evacuation options for spaceflight"
* ^count = 7
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #crew-dragon-return "Crew Dragon Return" "Emergency return using SpaceX Crew Dragon vehicle"
* #soyuz-return "Soyuz Return" "Emergency return using Soyuz spacecraft"
* #orion-abort "Orion Abort" "Abort using Orion spacecraft launch abort system"
* #safe-haven "Safe Haven" "Shelter in designated safe haven module"
* #emergency-eva "Emergency EVA" "Emergency extravehicular activity for repair or transfer"
* #emergency-undock "Emergency Undock" "Emergency undocking from station or habitat"
* #crew-rescue-vehicle "Crew Rescue Vehicle" "Dedicated crew rescue vehicle deployment"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceEmergencyTypeVS
Id: space-emergency-type-vs
Title: "Space Emergency Type Value Set"
Description: "Types of spaceflight emergency situations"
* ^experimental = true
* ^status = #active
* include codes from system SpaceEmergencyTypeCS

ValueSet: EmergencyResponseVS
Id: emergency-response-vs
Title: "Emergency Response Value Set"
Description: "Emergency response and evacuation options"
* ^experimental = true
* ^status = #active
* include codes from system EmergencyResponseCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceEmergencyCondition
Parent: Condition
Id: space-emergency-condition
Title: "Space Emergency Condition"
Description: "Diagnosis of an emergency situation during spaceflight requiring immediate response"
* ^version = "1.0.0"
* ^status = #active

* clinicalStatus MS
* verificationStatus MS

* severity 0..1 MS
* severity ^short = "Emergency severity (mild, moderate, severe, life-threatening)"

* code 1..1 MS
* code from SpaceEmergencyTypeVS (extensible)
* code ^short = "Type of space emergency"

* subject 1..1 MS
* subject only Reference(Astronaut)

* onset[x] 0..1 MS
* onset[x] only dateTime
* onset[x] ^short = "Time emergency was detected"

* note 0..* MS
* note ^short = "Details of the emergency situation"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: EmergencyEvacuationProcedure
Parent: Procedure
Id: emergency-evacuation-procedure
Title: "Emergency Evacuation Procedure"
Description: "Emergency evacuation or abort action performed during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from EmergencyResponseVS (extensible)
* code ^short = "Type of emergency response action"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* reasonReference 0..* MS
* reasonReference ^short = "Reference to the SpaceEmergencyCondition"

* outcome 0..1 MS
* outcome ^short = "Outcome of evacuation procedure"

* note 0..* MS
* note ^short = "Procedural details and timeline"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: EmergencyRiskAssessment
Parent: RiskAssessment
Id: emergency-risk-assessment
Title: "Emergency Risk Assessment"
Description: "Probability prediction for spaceflight emergency types to support contingency planning"
* ^version = "1.0.0"
* ^status = #active

* status MS

* subject 1..1 MS
* subject only Reference(Astronaut)

* code 0..1 MS
* code ^short = "Risk assessment type"

* prediction 0..* MS
* prediction.outcome 0..1 MS
* prediction.outcome from SpaceEmergencyTypeVS (extensible)
* prediction.outcome ^short = "Predicted emergency type"
* prediction.probability[x] 0..1 MS
* prediction.probability[x] only decimal
* prediction.probabilityDecimal ^short = "Probability of emergency event (0.0-1.0)"

* mitigation 0..1 MS
* mitigation ^short = "Mitigation strategies for identified risks"

* basis 0..* MS
* basis ^short = "Basis data (vehicle telemetry, mission parameters)"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

Profile: EmergencyCarePlan
Parent: CarePlan
Id: emergency-care-plan
Title: "Emergency Care Plan"
Description: "Evacuation and contingency plan addressing spaceflight emergency conditions"
* ^version = "1.0.0"
* ^status = #active

* status MS
* intent MS

* title 0..1 MS
* title ^short = "Emergency plan title"

* subject 1..1 MS
* subject only Reference(Astronaut)

* addresses 0..* MS
* addresses only Reference(SpaceEmergencyCondition)
* addresses ^short = "Emergency conditions addressed"

* activity 0..* MS
* activity.detail 0..1 MS
* activity.detail.code 0..1 MS
* activity.detail.code from EmergencyResponseVS (extensible)
* activity.detail.code ^short = "Planned emergency response action"
* activity.detail.status MS
* activity.detail.description 0..1 MS
* activity.detail.description ^short = "Detailed emergency procedure steps"

* extension contains
    MissionContext named missionContext 0..1 MS and
    MissionPhase named missionPhase 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: Emergency-RapidDepress-001
InstanceOf: SpaceEmergencyCondition
Title: "Rapid Depressurization Event"
Description: "Rapid depressurization event on ISS requiring emergency response"
Usage: #example
* insert SyntheticExample

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* severity = $sct#24484000 "Severe"
* code = SpaceEmergencyTypeCS#rapid-depress "Rapid Depressurization"
* subject = Reference(Patient/ExampleAstronaut)
* onsetDateTime = "2028-07-15T14:30:00Z"
* note.text = "Pressure drop detected in Node 2, crew immediately donned masks and initiated isolation protocol"
* extension[missionPhase].valueCodeableConcept = MissionPhaseCS#orbital-ops "Orbital Operations"

Instance: Emergency-DragonReturn-001
InstanceOf: EmergencyEvacuationProcedure
Title: "Emergency Dragon Return"
Description: "Emergency return to Earth via Crew Dragon following depressurization event"
Usage: #example
* insert SyntheticExample

* status = #completed
* code = EmergencyResponseCS#crew-dragon-return "Crew Dragon Return"
* subject = Reference(Patient/ExampleAstronaut)
* performedPeriod.start = "2028-07-15T15:00:00Z"
* performedPeriod.end = "2028-07-16T03:45:00Z"
* reasonReference = Reference(Condition/Emergency-RapidDepress-001)
* outcome = $sct#385669000 "Successful"
* note.text = "Crew evacuated via Crew Dragon-8, undocking at T+30 min, splashdown at T+12.75 hr"
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"

Instance: ISS-Emergency-Plan-001
InstanceOf: EmergencyCarePlan
Title: "ISS Emergency Contingency Plan"
Description: "ISS crew contingency plan covering depressurization, fire, and toxic atmosphere scenarios"
Usage: #example
* insert SyntheticExample

* status = #active
* intent = #plan
* title = "ISS Expedition 75 Emergency Contingency Plan"
* subject = Reference(Patient/ExampleAstronaut)
* activity[0].detail.code = EmergencyResponseCS#safe-haven "Safe Haven"
* activity[0].detail.status = #not-started
* activity[0].detail.description = "Retreat to Soyuz or Dragon for safe haven in case of toxic atmosphere or fire"
* activity[1].detail.code = EmergencyResponseCS#crew-dragon-return "Crew Dragon Return"
* activity[1].detail.status = #not-started
* activity[1].detail.description = "Emergency return via Crew Dragon if safe haven insufficient"
