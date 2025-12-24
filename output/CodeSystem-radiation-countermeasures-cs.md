# Radiation Countermeasures Code System - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Countermeasures Code System**

## CodeSystem: Radiation Countermeasures Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/radiation-countermeasures-cs | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:RadiationCountermeasuresCS |

 
Protective measures against space radiation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RadiationCountermeasuresVS](ValueSet-radiation-countermeasures-vs.md)
* [RadiationCountermeasuresVSComplete](ValueSet-radiation-countermeasures-vs-complete.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "radiation-countermeasures-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/radiation-countermeasures-cs",
  "version" : "0.4.2",
  "name" : "RadiationCountermeasuresCS",
  "title" : "Radiation Countermeasures Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-24T15:11:38-07:00",
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
      "display" : "Radioprotective Medication"
    },
    {
      "code" : "monitoring",
      "display" : "Enhanced Monitoring"
    }
  ]
}

```
