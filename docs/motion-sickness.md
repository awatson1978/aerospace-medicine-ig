# Motion Sickness - v0.6.2

* [**Table of Contents**](toc.md)
* **Motion Sickness**

## Motion Sickness

### Space Motion Sickness

Space Motion Sickness (SMS) is one of the most common medical conditions experienced during spaceflight, affecting approximately 60-80% of astronauts during the first 72 hours of microgravity exposure. This page describes the FHIR profiles and terminology used to capture SMS diagnosis, treatment, and adverse events.

#### Overview

Space motion sickness results from sensory conflict between vestibular, visual, and proprioceptive inputs during adaptation to altered gravitational environments. Related conditions include:

* **Space Motion Sickness (SMS)** - Occurs during initial microgravity adaptation
* **Terrestrial Re-entry Motion Sickness (TRMS)** - Occurs upon return to Earth gravity
* **Mal de Debarquement Syndrome** - Persistent rocking/swaying sensation after spaceflight
* **Vestibular Conflict Syndrome** - Sensory mismatch in altered gravity environments

#### SHARED Evidence Base

The Space Health and Research Evidence Database (SHARED) provides the evidence foundation for motion sickness management in spaceflight. Key findings from the SHARED database and the Rebecca Blue Eugen Reinartz Lecture include standardized severity grading (Graybiel scale), antiemetic protocol comparisons, and adverse event tracking.

#### Severity Grading

Motion sickness severity is graded using the modified Graybiel scale:

| | |
| :--- | :--- |
| Grade 0 | No symptoms |
| Grade I-A | Mild malaise, epigastric awareness |
| Grade II-S | Moderate symptoms including nausea, pallor |
| Grade III-S | Severe nausea and retching |
| Frank Sickness | Emesis with operational impact |

#### Treatment Protocols

Antiemetic medications used in spaceflight include:

* **Promethazine (IM)** - Standard NASA rescue antiemetic for acute SMS
* **Promethazine (Oral)** - Prophylactic use
* **Scopolamine-Dexedrine** - NASA standard combination for SMS prophylaxis
* **Meclizine** - H1-receptor antagonist alternative
* **Scopolamine (Transdermal)** - Extended prophylaxis via patch
* **Ondansetron** - 5-HT3 antagonist alternative with fewer sedation effects

#### FHIR Profiles

| | | |
| :--- | :--- | :--- |
| [SpaceMotionSicknessCondition](StructureDefinition-space-motion-sickness-condition.md) | Condition | SMS/TRMS diagnosis with Graybiel severity |
| [AntiemeticMedication](StructureDefinition-antiemetic-medication.md) | Medication | Antiemetic medication definitions |
| [AntiemeticAdministration](StructureDefinition-antiemetic-administration.md) | MedicationAdministration | Antiemetic dose administration records |
| [SpaceAdverseEvent](StructureDefinition-space-adverse-event.md) | AdverseEvent | Medication adverse events (e.g., urinary retention, sedation) |
| [AntiemeticCarePlan](StructureDefinition-antiemetic-care-plan.md) | CarePlan | Prophylactic and rescue treatment protocols |

#### Adverse Events

Key adverse events tracked from antiemetic medications:

* Urinary retention (promethazine, scopolamine)
* Excessive sedation (promethazine IM)
* Extrapyramidal symptoms (promethazine)
* QT prolongation (ondansetron, promethazine)
* Dry mouth and blurred vision (anticholinergic effects)

#### Terminology

* [SpaceMotionSicknessCS](CodeSystem-space-motion-sickness-cs.md) - Motion sickness type codes
* [GraybielSeverityCS](CodeSystem-graybiel-severity-cs.md) - Severity grading scale
* [AntiemeticMedicationCS](CodeSystem-antiemetic-medication-cs.md) - Antiemetic medication codes
* [SpaceAdverseEventCS](CodeSystem-space-adverse-event-cs.md) - Adverse event codes
* [AntiemeticProtocolCS](CodeSystem-antiemetic-protocol-cs.md) - Treatment protocol codes

