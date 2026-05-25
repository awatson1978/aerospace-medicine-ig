# Space Specimen Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Specimen Type Code System**

## CodeSystem: Space Specimen Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-specimen-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceSpecimenTypeCS |

 
Specimen types collected during spaceflight with microgravity-adapted methods 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceSpecimenTypeVS](ValueSet-space-specimen-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-specimen-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-specimen-type-cs",
  "version" : "0.6.0",
  "name" : "SpaceSpecimenTypeCS",
  "title" : "Space Specimen Type Code System",
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
  "description" : "Specimen types collected during spaceflight with microgravity-adapted methods",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "dried-blood-spot",
      "display" : "Dried Blood Spot",
      "definition" : "Capillary blood collected on filter paper for storage and analysis"
    },
    {
      "code" : "capillary-blood",
      "display" : "Capillary Blood",
      "definition" : "Blood obtained via fingerstick or heelstick in microgravity"
    },
    {
      "code" : "venous-blood-microgravity",
      "display" : "Venous Blood (Microgravity)",
      "definition" : "Venous blood draw adapted for microgravity conditions"
    },
    {
      "code" : "saliva-passive",
      "display" : "Saliva (Passive Collection)",
      "definition" : "Saliva collected via passive drool in microgravity"
    },
    {
      "code" : "urine-void-bag",
      "display" : "Urine (Void Bag Collection)",
      "definition" : "Urine collected using microgravity-compatible void bag system"
    }
  ]
}

```
