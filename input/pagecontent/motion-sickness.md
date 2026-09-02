Space Motion Sickness (SMS) is one of the most common medical conditions of early spaceflight. Across 24 Space Shuttle flights roughly two thirds of crewmembers reported symptoms, and reviews of the wider flight record put the incidence somewhere between 60% and 80% during the first 72 hours of microgravity exposure (Davis et al. 1988; Reschke et al. 1998). It is rarely dangerous on its own, but it arrives exactly when a crew is busiest — activation, rendezvous, and the first EVA preparations — and the drugs used to treat it carry sedation and anticholinergic effects of their own. This page describes the FHIR profiles and terminology used to capture SMS diagnosis, treatment, and medication adverse events.

### Overview

Space motion sickness results from sensory conflict between vestibular, visual, and proprioceptive inputs during adaptation to altered gravitational environments. The otolith organs report a gravity vector that no longer exists, the eyes report a stable cabin, and the brain reconciles the mismatch over two to four days. Related conditions include:

- **Space Motion Sickness (SMS)** - Occurs during initial microgravity adaptation
- **Terrestrial Re-entry Motion Sickness (TRMS)** - Occurs upon return to Earth gravity
- **Mal de Debarquement Syndrome** - Persistent rocking/swaying sensation after spaceflight
- **Vestibular Conflict Syndrome** - Sensory mismatch in altered gravity environments

### SHARED Evidence Base

The Space Health and Research Evidence Database (SHARED) provides the evidence foundation for motion sickness management in spaceflight. Key findings from the SHARED database and from the Rebecca Blue Eugen Reinartz Lecture include standardized severity grading (Graybiel scale), antiemetic protocol comparisons, and adverse event tracking. Those three themes — grade it, treat it, and record what the treatment did to the crewmember — are what the profiles below are built to carry.

### Severity Grading

Severity is graded with a modified form of the Graybiel scale, the diagnostic criteria published for acute motion sickness in 1968 and still the reference point for operational grading. Grading matters because the treatment decision (watchful waiting versus an intramuscular rescue dose) turns on it.

| Grade | Description |
|-------|-------------|
| Grade 0 | No symptoms |
| Grade I-A | Mild malaise, epigastric awareness |
| Grade II-S | Moderate symptoms including nausea, pallor |
| Grade III-S | Severe nausea and retching |
| Frank Sickness | Emesis with operational impact |

### Treatment Protocols

Antiemetic medications used in spaceflight include:

- **Promethazine (IM)** - Standard NASA rescue antiemetic for acute SMS
- **Promethazine (Oral)** - Prophylactic use
- **Scopolamine-Dexedrine** - NASA standard combination for SMS prophylaxis
- **Meclizine** - H1-receptor antagonist alternative
- **Scopolamine (Transdermal)** - Extended prophylaxis via patch
- **Ondansetron** - 5-HT3 antagonist alternative with fewer sedation effects

Intramuscular promethazine became the operational rescue agent after in-flight experience showed that crewmembers did not exhibit the degree of sedation the same dose produces on the ground (Bagian & Ward 1994). That observation is itself a reason to record administrations and outcomes as structured data rather than as free text.

### FHIR Profiles and Extensions

Each stage of an SMS episode maps onto a different FHIR resource: the diagnosis and its Graybiel grade onto Condition, each dose onto MedicationAdministration, any drug reaction onto AdverseEvent, and the prophylaxis-plus-rescue plan onto CarePlan.

| Profile | Resource Type | Description |
|---------|--------------|-------------|
| [SpaceMotionSicknessCondition](StructureDefinition-space-motion-sickness-condition.html) | Condition | SMS/TRMS diagnosis with Graybiel severity |
| [AntiemeticMedication](StructureDefinition-antiemetic-medication.html) | Medication | Antiemetic medication definitions |
| [AntiemeticAdministration](StructureDefinition-antiemetic-administration.html) | MedicationAdministration | Antiemetic dose administration records |
| [SpaceAdverseEvent](StructureDefinition-space-adverse-event.html) | AdverseEvent | Medication adverse events (e.g., urinary retention, sedation) |
| [AntiemeticCarePlan](StructureDefinition-antiemetic-care-plan.html) | CarePlan | Prophylactic and rescue treatment protocols |

All four resource types carry the shared [MissionContext](StructureDefinition-mission-context.html), [GravityContext](StructureDefinition-gravity-context.html), and [FlightDay](StructureDefinition-flight-day.html) extensions, so an episode can be placed on a mission timeline alongside radiation, exercise, and behavioral health data.

### Adverse Events

Key adverse events tracked from antiemetic medications:

- Urinary retention (promethazine, scopolamine)
- Excessive sedation (promethazine IM)
- Extrapyramidal symptoms (promethazine)
- QT prolongation (ondansetron, promethazine)
- Dry mouth and blurred vision (anticholinergic effects)

### Examples

The guide carries a worked set of synthetic instances that follow one illustrative flight-day-2 episode from diagnosis through treatment and its consequence.

- [Space Motion Sickness Episode - Flight Day 2](Condition-SMS-Episode-FD2.html) - a Grade II-S episode recorded on flight day 2 of the Artemis IV mission encounter.
- [Promethazine IM Rescue Dose](MedicationAdministration-Promethazine-IM-Rescue.html) - a 25 mg intramuscular rescue dose given ninety minutes after onset, linked back to the episode.
- [Urinary Retention After Promethazine](AdverseEvent-Urinary-Retention-Post-Promethazine.html) - a non-serious, resolved anticholinergic adverse event four hours after the dose, with the administration named as the suspect entity.
- [SMS Prophylaxis Protocol](CarePlan-SMS-Prophylaxis-Protocol.html) - the pre-flight scopolamine-dexedrine prophylaxis and the rescue-treatment activity in a single care plan.

### Standardized Terminologies

Five small code systems supply the vocabulary these profiles bind to: what the condition is, how bad it is, what was given, what happened afterwards, and under which protocol it was given.

- [SpaceMotionSicknessCS](CodeSystem-space-motion-sickness-cs.html) - Motion sickness type codes
- [GraybielSeverityCS](CodeSystem-graybiel-severity-cs.html) - Severity grading scale
- [AntiemeticMedicationCS](CodeSystem-antiemetic-medication-cs.html) - Antiemetic medication codes
- [SpaceAdverseEventCS](CodeSystem-space-adverse-event-cs.html) - Adverse event codes
- [AntiemeticProtocolCS](CodeSystem-antiemetic-protocol-cs.html) - Treatment protocol codes

Each has a matching value set for binding: [SpaceMotionSicknessVS](ValueSet-space-motion-sickness-vs.html), [GraybielSeverityVS](ValueSet-graybiel-severity-vs.html), [AntiemeticMedicationVS](ValueSet-antiemetic-medication-vs.html), [SpaceAdverseEventVS](ValueSet-space-adverse-event-vs.html), and [AntiemeticProtocolVS](ValueSet-antiemetic-protocol-vs.html).

### References

- Davis JR, Vanderploeg JM, Santy PA, Jennings RT, Stewart DF. Space motion sickness during 24 flights of the space shuttle. *Aviation, Space, and Environmental Medicine* 59, no. 12 (1988): 1185-1189.
- Reschke MF, Bloomberg JJ, Harm DL, Paloski WH, Layne C, McDonald V. Posture, locomotion, spatial orientation, and motion sickness as a function of space flight. *Brain Research Reviews* 28, no. 1-2 (1998): 102-117.
- Graybiel A, Wood CD, Miller EF, Cramer DB. Diagnostic criteria for grading the severity of acute motion sickness. *Aerospace Medicine* 39, no. 5 (1968): 453-455.
- Bagian JP, Ward DF. A retrospective study of promethazine and its failure to produce the expected incidence of sedation during space flight. *Journal of Clinical Pharmacology* 34, no. 6 (1994): 649-651.
- Blue RS. Eugen Reinartz Lecture: evidence-based management of space motion sickness. Aerospace Medical Association Annual Scientific Meeting.
- NASA Human Research Program. Space Health and Research Evidence Database (SHARED).
