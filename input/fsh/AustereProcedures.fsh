// Austere Environment Procedures
// WP9: Abstract 117 (POCUS), Abstracts 113-114 (3D printed tools, appendicitis)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpacePOCUSTypeCS
Id: space-pocus-type-cs
Title: "Space POCUS Type Code System"
Description: "Point-of-care ultrasound examination types for austere spaceflight environments"
* ^count = 6
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #fast-exam "FAST Exam" "Focused Assessment with Sonography for Trauma"
* #cardiac-pocus "Cardiac POCUS" "Focused cardiac ultrasound assessment"
* #lung-pocus "Lung POCUS" "Lung ultrasound for pleural effusion, pneumothorax, consolidation"
* #ocular-pocus "Ocular POCUS" "Ocular ultrasound for optic nerve sheath diameter and SANS assessment"
* #vascular-access "Vascular Access" "Ultrasound-guided peripheral or central venous access"
* #msk-pocus "MSK POCUS" "Musculoskeletal point-of-care ultrasound"

CodeSystem: SpaceSurgicalProcedureCS
Id: space-surgical-procedure-cs
Title: "Space Surgical Procedure Code System"
Description: "Surgical procedures adapted for spaceflight austere environments"
* ^count = 6
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #wound-closure "Wound Closure" "Suturing or stapling of wounds in microgravity"
* #abscess-drainage "Abscess Drainage" "Incision and drainage of abscess"
* #chest-tube "Chest Tube Insertion" "Tube thoracostomy in microgravity"
* #appendectomy-laparoscopic "Laparoscopic Appendectomy" "Minimally invasive appendectomy adapted for microgravity"
* #dental-extraction "Dental Extraction" "Emergency dental extraction in spaceflight"
* #fracture-reduction "Fracture Reduction and Splinting" "Closed reduction and immobilization of fractures"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpacePOCUSTypeVS
Id: space-pocus-type-vs
Title: "Space POCUS Type Value Set"
Description: "POCUS examination types"
* ^experimental = true
* ^status = #active
* include codes from system SpacePOCUSTypeCS

ValueSet: SpaceSurgicalProcedureVS
Id: space-surgical-procedure-vs
Title: "Space Surgical Procedure Value Set"
Description: "Surgical procedures for spaceflight"
* ^experimental = true
* ^status = #active
* include codes from system SpaceSurgicalProcedureCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpacePOCUS
Parent: DiagnosticReport
Id: space-pocus
Title: "Space Point-of-Care Ultrasound (POCUS)"
Description: "Point-of-care ultrasound examination in austere spaceflight environments"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from SpacePOCUSTypeVS (extensible)
* code ^short = "POCUS examination type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 0..1 MS
* effective[x] only dateTime

* imagingStudy 0..* MS
* imagingStudy ^short = "Link to ultrasound imaging study"

* presentedForm 0..* MS
* presentedForm ^short = "Ultrasound images and clips"

* conclusion 0..1 MS
* conclusion ^short = "Clinical interpretation of POCUS findings"

* performer 0..* MS
* performer ^short = "Crew member performing the exam (may be remotely guided)"

* extension contains
    DiagnosticReportMissionContext named missionContext 0..1 MS

Profile: SpaceSurgicalProcedure
Parent: Procedure
Id: space-surgical-procedure
Title: "Space Surgical Procedure"
Description: "Surgical procedure adapted for spaceflight austere environments, potentially using 3D-printed instruments"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from SpaceSurgicalProcedureVS (extensible)
* code ^short = "Surgical procedure type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* bodySite 0..* MS

* outcome 0..1 MS
* outcome ^short = "Surgical outcome"

* usedReference 0..* MS
* usedReference ^short = "Instruments used (including 3D-printed tools)"

* performer 0..* MS
* performer.actor MS
* performer.actor ^short = "Crew member performing surgery (may be remotely guided)"

* extension contains
    MissionContext named missionContext 0..1 MS and
    GravityContext named gravityContext 0..1 MS
