# Radiation Countermeasures Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Countermeasures Code System**

## CodeSystem: Radiation Countermeasures Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-countermeasures-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:RadiationCountermeasuresCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Protective measures against space radiation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RadiationCountermeasuresVS](ValueSet-radiation-countermeasures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "radiation-countermeasures-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-countermeasures-cs",
  "version" : "0.7.0",
  "name" : "RadiationCountermeasuresCS",
  "title" : "Radiation Countermeasures Code System",
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
  "description" : "Protective measures against space radiation",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "shielding",
      "display" : "Physical Shielding"
    },
    {
      "code" : "shelter",
      "display" : "Radiation Shelter"
    },
    {
      "code" : "medication",
      "display" : "Radioprotective Medication",
      "definition" : "Pharmacological countermeasure; the specific agent is coded with RadioprotectiveMedicationCS"
    },
    {
      "code" : "monitoring",
      "display" : "Enhanced Monitoring"
    }
  ]
}

```
