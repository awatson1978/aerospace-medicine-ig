# Space POCUS Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space POCUS Type Code System**

## CodeSystem: Space POCUS Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-pocus-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpacePOCUSTypeCS |

 
Point-of-care ultrasound examination types for austere spaceflight environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpacePOCUSTypeVS](ValueSet-space-pocus-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-pocus-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-pocus-type-cs",
  "version" : "0.6.0",
  "name" : "SpacePOCUSTypeCS",
  "title" : "Space POCUS Type Code System",
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
  "description" : "Point-of-care ultrasound examination types for austere spaceflight environments",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "fast-exam",
      "display" : "FAST Exam",
      "definition" : "Focused Assessment with Sonography for Trauma"
    },
    {
      "code" : "cardiac-pocus",
      "display" : "Cardiac POCUS",
      "definition" : "Focused cardiac ultrasound assessment"
    },
    {
      "code" : "lung-pocus",
      "display" : "Lung POCUS",
      "definition" : "Lung ultrasound for pleural effusion, pneumothorax, consolidation"
    },
    {
      "code" : "ocular-pocus",
      "display" : "Ocular POCUS",
      "definition" : "Ocular ultrasound for optic nerve sheath diameter and SANS assessment"
    },
    {
      "code" : "vascular-access",
      "display" : "Vascular Access",
      "definition" : "Ultrasound-guided peripheral or central venous access"
    },
    {
      "code" : "msk-pocus",
      "display" : "MSK POCUS",
      "definition" : "Musculoskeletal point-of-care ultrasound"
    }
  ]
}

```
