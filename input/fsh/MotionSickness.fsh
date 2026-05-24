// Motion Sickness & Antiemetic Countermeasures
// WP1: SHARED database, Rebecca Blue Eugen Reinartz Lecture, Abstracts 50/51

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceMotionSicknessCS
Id: space-motion-sickness-cs
Title: "Space Motion Sickness Code System"
Description: "Types of motion sickness encountered in space travel and related vestibular disorders"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #sms "Space Motion Sickness (SMS)" "Motion sickness occurring during initial adaptation to microgravity, typically within the first 72 hours of spaceflight"
* #trms "Terrestrial Re-entry Motion Sickness (TRMS)" "Motion sickness occurring upon return to Earth gravity after spaceflight"
* #mal-de-debarquement "Mal de Debarquement Syndrome" "Persistent sensation of rocking or swaying after spaceflight or prolonged motion exposure"
* #vestibular-conflict "Vestibular Conflict Syndrome" "Sensory conflict between vestibular, visual, and proprioceptive inputs in altered gravity"

CodeSystem: GraybielSeverityCS
Id: graybiel-severity-cs
Title: "Graybiel Motion Sickness Severity Scale"
Description: "Modified Graybiel scale for grading motion sickness severity in spaceflight"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #grade-0 "Grade 0 - No Symptoms" "No motion sickness symptoms present"
* #grade-1 "Grade I-A - Mild Malaise" "Mild discomfort, epigastric awareness, no nausea"
* #grade-2 "Grade II-S - Moderate Malaise" "Moderate symptoms including nausea, pallor, cold sweating"
* #grade-3 "Grade III-S - Severe Malaise" "Severe nausea and retching without emesis"
* #frank-sickness "Frank Sickness" "Emesis with significant operational impact"

CodeSystem: AntiemeticMedicationCS
Id: antiemetic-medication-cs
Title: "Antiemetic Medication Code System"
Description: "Antiemetic medications used for space motion sickness prophylaxis and treatment"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #promethazine-im "Promethazine (Intramuscular)" "Promethazine hydrochloride administered intramuscularly, standard NASA rescue antiemetic"
* #promethazine-oral "Promethazine (Oral)" "Promethazine hydrochloride administered orally for prophylaxis"
* #meclizine "Meclizine" "Meclizine hydrochloride, H1-receptor antagonist antiemetic"
* #scopolamine-patch "Scopolamine (Transdermal Patch)" "Transdermal scopolamine for motion sickness prophylaxis"
* #ondansetron "Ondansetron" "5-HT3 receptor antagonist antiemetic, alternative to promethazine"
* #scopolamine-dexedrine "Scopolamine-Dexedrine Combination" "NASA standard combination of scopolamine and dextroamphetamine for SMS prophylaxis"

CodeSystem: SpaceAdverseEventCS
Id: space-adverse-event-cs
Title: "Space Adverse Event Code System"
Description: "Adverse events associated with antiemetic and countermeasure medications in spaceflight"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #urinary-retention "Urinary Retention" "Inability to void bladder, common side effect of promethazine and scopolamine"
* #excessive-sedation "Excessive Sedation" "Sedation impairing crew performance, common with promethazine IM"
* #extrapyramidal "Extrapyramidal Symptoms" "Dystonia, akathisia, or other movement disorders from antiemetic use"
* #qt-prolongation "QT Prolongation" "Cardiac QT interval prolongation associated with ondansetron or promethazine"
* #dry-mouth "Dry Mouth (Xerostomia)" "Anticholinergic dry mouth from scopolamine or promethazine"
* #blurred-vision "Blurred Vision" "Visual disturbance from anticholinergic effects"

CodeSystem: AntiemeticProtocolCS
Id: antiemetic-protocol-cs
Title: "Antiemetic Protocol Code System"
Description: "Protocols for antiemetic administration in spaceflight contexts"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #prophylactic-pre-flight "Pre-flight Prophylaxis" "Antiemetic administered before launch as prophylaxis"
* #prophylactic-in-flight "In-flight Prophylaxis" "Scheduled antiemetic during early mission phase"
* #rescue-treatment "Rescue Treatment" "Antiemetic administered in response to acute symptoms"
* #post-flight-prophylaxis "Post-flight Prophylaxis" "Antiemetic for re-entry and post-landing re-adaptation"
* #eva-prophylaxis "EVA Prophylaxis" "Antiemetic administered before EVA to prevent motion sickness"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceMotionSicknessVS
Id: space-motion-sickness-vs
Title: "Space Motion Sickness Value Set"
Description: "Types of motion sickness in spaceflight"
* ^experimental = false
* ^status = #active
* include codes from system SpaceMotionSicknessCS
* $sct#37031009 "Motion sickness"

ValueSet: GraybielSeverityVS
Id: graybiel-severity-vs
Title: "Graybiel Motion Sickness Severity Value Set"
Description: "Graybiel severity grades for motion sickness"
* ^experimental = false
* ^status = #active
* include codes from system GraybielSeverityCS

ValueSet: AntiemeticMedicationVS
Id: antiemetic-medication-vs
Title: "Antiemetic Medication Value Set"
Description: "Antiemetic medications for spaceflight use"
* ^experimental = false
* ^status = #active
* include codes from system AntiemeticMedicationCS

ValueSet: SpaceAdverseEventVS
Id: space-adverse-event-vs
Title: "Space Adverse Event Value Set"
Description: "Adverse events from spaceflight medications"
* ^experimental = false
* ^status = #active
* include codes from system SpaceAdverseEventCS

ValueSet: AntiemeticProtocolVS
Id: antiemetic-protocol-vs
Title: "Antiemetic Protocol Value Set"
Description: "Antiemetic administration protocols"
* ^experimental = false
* ^status = #active
* include codes from system AntiemeticProtocolCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceMotionSicknessCondition
Parent: Condition
Id: space-motion-sickness-condition
Title: "Space Motion Sickness Condition"
Description: "Diagnosis and tracking of space motion sickness, terrestrial re-entry motion sickness, and related vestibular disorders"
* ^version = "1.0.0"
* ^status = #active

* code 1..1 MS
* code from SpaceMotionSicknessVS (extensible)
* code ^short = "Type of space motion sickness (SMS, TRMS, mal de debarquement)"

* severity 0..1 MS
* severity from GraybielSeverityVS (preferred)
* severity ^short = "Graybiel severity grade"

* subject 1..1 MS
* subject only Reference(Astronaut)

* onset[x] 0..1 MS
* onset[x] only dateTime
* onsetDateTime ^short = "Onset date/time, ideally mission day"

* abatement[x] 0..1 MS
* abatement[x] only dateTime
* abatementDateTime ^short = "Resolution date/time"

* stage 0..* MS
* stage ^short = "Progression stages including nausea severity"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: AntiemeticMedication
Parent: Medication
Id: antiemetic-medication
Title: "Antiemetic Medication"
Description: "Antiemetic medications used for space motion sickness prophylaxis and treatment"
* ^version = "1.0.0"
* ^status = #active

* code 1..1 MS
* code from AntiemeticMedicationVS (extensible)
* code ^short = "Antiemetic medication type"

* form 0..1 MS
* form ^short = "Dosage form (tablet, injection, transdermal patch)"

Profile: AntiemeticAdministration
Parent: MedicationAdministration
Id: antiemetic-administration
Title: "Antiemetic Medication Administration"
Description: "Record of antiemetic medication administration during space missions"
* ^version = "1.0.0"
* ^status = #active

* status MS

* medication[x] 1..1 MS
* medication[x] only CodeableConcept or Reference(AntiemeticMedication)
* medicationCodeableConcept from AntiemeticMedicationVS (extensible)

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* dosage 0..1 MS
* dosage.route MS
* dosage.route ^short = "Route of administration (IM, oral, transdermal, IV)"
* dosage.dose MS
* dosage.dose ^short = "Dose quantity with units"

* reasonReference 0..* MS
* reasonReference only Reference(SpaceMotionSicknessCondition)
* reasonReference ^short = "Link to the motion sickness condition being treated"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: SpaceAdverseEvent
Parent: AdverseEvent
Id: space-adverse-event
Title: "Space Adverse Event"
Description: "Adverse events from medications or procedures during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* event 1..1 MS
* event from SpaceAdverseEventVS (extensible)
* event ^short = "Type of adverse event"

* subject 1..1 MS
* subject only Reference(Astronaut)

* date 0..1 MS

* seriousness 0..1 MS
* seriousness ^short = "Seriousness classification"

* outcome 0..1 MS
* outcome ^short = "Outcome of adverse event"

* suspectEntity 0..* MS
* suspectEntity.instance MS
* suspectEntity.instance only Reference(Medication or MedicationAdministration or Procedure)
* suspectEntity.instance ^short = "Suspected causal medication or procedure"

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: AntiemeticCarePlan
Parent: CarePlan
Id: antiemetic-care-plan
Title: "Antiemetic Care Plan"
Description: "Care plan for antiemetic prophylaxis and rescue protocols across mission phases"
* ^version = "1.0.0"
* ^status = #active

* status MS
* intent MS

* title 0..1 MS
* title ^short = "Care plan title (e.g., SMS Prophylaxis Protocol)"

* subject 1..1 MS
* subject only Reference(Astronaut)

* addresses 0..* MS
* addresses only Reference(SpaceMotionSicknessCondition)
* addresses ^short = "Motion sickness condition(s) being addressed"

* activity 0..* MS
* activity.detail 0..1 MS
* activity.detail.code 0..1 MS
* activity.detail.code from AntiemeticProtocolVS (extensible)
* activity.detail.code ^short = "Protocol type (prophylactic, rescue, etc.)"
* activity.detail.status MS
* activity.detail.description 0..1 MS
* activity.detail.description ^short = "Protocol details including medication, dose, timing"

* extension contains
    MissionContext named missionContext 0..1 MS
