# Space Anemia Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Anemia Code System**

## CodeSystem: Space Anemia Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-anemia-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceAnemiaCS |

 
Parameters for spaceflight-associated anemia assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceAnemiaVS](ValueSet-space-anemia-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-anemia-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-anemia-cs",
  "version" : "0.6.0",
  "name" : "SpaceAnemiaCS",
  "title" : "Space Anemia Code System",
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
  "description" : "Parameters for spaceflight-associated anemia assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "rbc-mass",
      "display" : "Red Blood Cell Mass",
      "definition" : "Total red blood cell volume measurement"
    },
    {
      "code" : "co-breath-test",
      "display" : "CO Breath Test",
      "definition" : "Carbon monoxide breath test for RBC destruction rate"
    }
  ]
}

```
