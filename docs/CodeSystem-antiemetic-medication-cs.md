# Antiemetic Medication Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Medication Code System**

## CodeSystem: Antiemetic Medication Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antiemetic-medication-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AntiemeticMedicationCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Antiemetic medications used for space motion sickness prophylaxis and treatment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntiemeticMedicationVS](ValueSet-antiemetic-medication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antiemetic-medication-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antiemetic-medication-cs",
  "version" : "0.7.0",
  "name" : "AntiemeticMedicationCS",
  "title" : "Antiemetic Medication Code System",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
