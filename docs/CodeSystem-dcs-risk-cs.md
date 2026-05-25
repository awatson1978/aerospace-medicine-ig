# Decompression Sickness Risk Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Sickness Risk Code System**

## CodeSystem: Decompression Sickness Risk Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/dcs-risk-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:DCSRiskCS |

 
Decompression sickness risk factors and outcomes for EVA risk assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DCSRiskVS](ValueSet-dcs-risk-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dcs-risk-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/dcs-risk-cs",
  "version" : "0.6.0",
  "name" : "DCSRiskCS",
  "title" : "Decompression Sickness Risk Code System",
  "status" : "active",
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
  "description" : "Decompression sickness risk factors and outcomes for EVA risk assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "dcs-type-i",
      "display" : "DCS Type I",
      "definition" : "Musculoskeletal DCS (joint pain, limb pain)"
    },
    {
      "code" : "dcs-type-ii",
      "display" : "DCS Type II",
      "definition" : "Neurological or cardiopulmonary DCS"
    },
    {
      "code" : "vge",
      "display" : "Venous Gas Emboli (VGE)",
      "definition" : "Detectable venous gas bubbles"
    },
    {
      "code" : "pfo-status",
      "display" : "Patent Foramen Ovale Status",
      "definition" : "PFO present/absent affecting right-to-left shunt risk"
    },
    {
      "code" : "prebreathe-protocol",
      "display" : "Prebreathe Protocol",
      "definition" : "Oxygen prebreathe protocol used before EVA"
    }
  ]
}

```
