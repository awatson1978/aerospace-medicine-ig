# Antiemetic Medication Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Medication Code System**

## CodeSystem: Antiemetic Medication Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/antiemetic-medication-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:AntiemeticMedicationCS |

 
Antiemetic medications used for space motion sickness prophylaxis and treatment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntiemeticMedicationVS](ValueSet-antiemetic-medication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antiemetic-medication-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/antiemetic-medication-cs",
  "version" : "0.6.2",
  "name" : "AntiemeticMedicationCS",
  "title" : "Antiemetic Medication Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "Antiemetic medications used for space motion sickness prophylaxis and treatment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "promethazine-im",
      "display" : "Promethazine (Intramuscular)",
      "definition" : "Promethazine hydrochloride administered intramuscularly, standard NASA rescue antiemetic"
    },
    {
      "code" : "promethazine-oral",
      "display" : "Promethazine (Oral)",
      "definition" : "Promethazine hydrochloride administered orally for prophylaxis"
    },
    {
      "code" : "meclizine",
      "display" : "Meclizine",
      "definition" : "Meclizine hydrochloride, H1-receptor antagonist antiemetic"
    },
    {
      "code" : "scopolamine-patch",
      "display" : "Scopolamine (Transdermal Patch)",
      "definition" : "Transdermal scopolamine for motion sickness prophylaxis"
    },
    {
      "code" : "ondansetron",
      "display" : "Ondansetron",
      "definition" : "5-HT3 receptor antagonist antiemetic, alternative to promethazine"
    },
    {
      "code" : "scopolamine-dexedrine",
      "display" : "Scopolamine-Dexedrine Combination",
      "definition" : "NASA standard combination of scopolamine and dextroamphetamine for SMS prophylaxis"
    }
  ]
}

```
