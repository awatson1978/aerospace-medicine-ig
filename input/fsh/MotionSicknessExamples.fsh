// Motion Sickness Examples
// WP11: Examples for motion sickness, antiemetic administration, adverse events

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CONDITION: Space Motion Sickness Episode
// =====================================================

Instance: SMS-Episode-FD2
InstanceOf: SpaceMotionSicknessCondition
Title: "Space Motion Sickness Episode - Flight Day 2"
Description: "Moderate SMS episode on flight day 2 during ISS expedition"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = SpaceMotionSicknessCS#sms "Space Motion Sickness (SMS)"
* severity = GraybielSeverityCS#grade-2 "Grade II-S - Moderate Malaise"
* subject = Reference(Patient/ExampleAstronaut)
* onsetDateTime = "2028-03-16T06:00:00Z"
* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"
* extension[flightDay].valueInteger = 2

// =====================================================
// MEDICATION ADMINISTRATION: Promethazine IM
// =====================================================

Instance: Promethazine-IM-Rescue
InstanceOf: AntiemeticAdministration
Title: "Promethazine IM Rescue Dose"
Description: "Intramuscular promethazine 25mg for acute SMS rescue on flight day 2"
Usage: #example

* status = #completed
* medicationCodeableConcept = AntiemeticMedicationCS#promethazine-im "Promethazine (Intramuscular)"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2028-03-16T07:30:00Z"
* dosage.route = $sct#78421000 "Intramuscular route"
* dosage.dose.value = 25
* dosage.dose.unit = "mg"
* dosage.dose.system = $ucum
* dosage.dose.code = #mg
* reasonReference[0] = Reference(Condition/SMS-Episode-FD2)
* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"

// =====================================================
// ADVERSE EVENT: Urinary Retention
// =====================================================

Instance: Urinary-Retention-Post-Promethazine
InstanceOf: SpaceAdverseEvent
Title: "Urinary Retention After Promethazine"
Description: "Urinary retention adverse event 4 hours after promethazine IM administration"
Usage: #example

* actuality = #actual
* event = SpaceAdverseEventCS#urinary-retention "Urinary Retention"
* subject = Reference(Patient/ExampleAstronaut)
* date = "2028-03-16T11:30:00Z"
* seriousness = http://terminology.hl7.org/CodeSystem/adverse-event-seriousness#non-serious "Non-serious"
* outcome = http://terminology.hl7.org/CodeSystem/adverse-event-outcome#resolved "Resolved"
* suspectEntity[0].instance = Reference(MedicationAdministration/Promethazine-IM-Rescue)
* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
* extension[flightDay].valueInteger = 2

// =====================================================
// CARE PLAN: SMS Prophylaxis Protocol
// =====================================================

Instance: SMS-Prophylaxis-Protocol
InstanceOf: AntiemeticCarePlan
Title: "SMS Prophylaxis Protocol"
Description: "Antiemetic care plan for SMS prophylaxis covering pre-flight through post-flight phases"
Usage: #example

* status = #active
* intent = #plan
* title = "Space Motion Sickness Prophylaxis and Treatment Protocol"
* subject = Reference(Patient/ExampleAstronaut)
* addresses[0] = Reference(Condition/SMS-Episode-FD2)

* activity[0].detail.code = AntiemeticProtocolCS#prophylactic-pre-flight "Pre-flight Prophylaxis"
* activity[0].detail.status = #completed
* activity[0].detail.description = "Scopolamine 0.4mg + Dexedrine 5mg oral, 1 hour before launch"

* activity[1].detail.code = AntiemeticProtocolCS#rescue-treatment "Rescue Treatment"
* activity[1].detail.status = #completed
* activity[1].detail.description = "Promethazine 25mg IM PRN for Grade II+ symptoms"

* extension[missionContext].valueReference = Reference(Encounter/Artemis-III-Mission)
