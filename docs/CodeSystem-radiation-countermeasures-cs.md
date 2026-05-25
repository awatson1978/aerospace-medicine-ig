# Radiation Countermeasures Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Countermeasures Code System**

## CodeSystem: Radiation Countermeasures Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/radiation-countermeasures-cs | *Version*:0.6.0 |
| Draft as of 2026-05-25 | *Computable Name*:RadiationCountermeasuresCS |

 
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
  "version" : "0.6.0",
  "name" : "RadiationCountermeasuresCS",
  "title" : "Radiation Countermeasures Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "count" : 6,
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
    },
    {
      "code" : "nac",
      "display" : "N-Acetylcysteine (NAC)",
      "definition" : "Antioxidant and glutathione precursor with radioprotective properties"
    },
    {
      "code" : "amifostine",
      "display" : "Amifostine",
      "definition" : "Cytoprotective agent that scavenges free radicals from ionizing radiation"
    }
  ]
}

```
