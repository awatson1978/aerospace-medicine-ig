# Space Surgical Procedure Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Surgical Procedure Code System**

## CodeSystem: Space Surgical Procedure Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-surgical-procedure-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceSurgicalProcedureCS |

 
Surgical procedures adapted for spaceflight austere environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceSurgicalProcedureVS](ValueSet-space-surgical-procedure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-surgical-procedure-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-surgical-procedure-cs",
  "version" : "0.6.2",
  "name" : "SpaceSurgicalProcedureCS",
  "title" : "Space Surgical Procedure Code System",
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
  "description" : "Surgical procedures adapted for spaceflight austere environments",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "wound-closure",
      "display" : "Wound Closure",
      "definition" : "Suturing or stapling of wounds in microgravity"
    },
    {
      "code" : "abscess-drainage",
      "display" : "Abscess Drainage",
      "definition" : "Incision and drainage of abscess"
    },
    {
      "code" : "chest-tube",
      "display" : "Chest Tube Insertion",
      "definition" : "Tube thoracostomy in microgravity"
    },
    {
      "code" : "appendectomy-laparoscopic",
      "display" : "Laparoscopic Appendectomy",
      "definition" : "Minimally invasive appendectomy adapted for microgravity"
    },
    {
      "code" : "dental-extraction",
      "display" : "Dental Extraction",
      "definition" : "Emergency dental extraction in spaceflight"
    },
    {
      "code" : "fracture-reduction",
      "display" : "Fracture Reduction and Splinting",
      "definition" : "Closed reduction and immobilization of fractures"
    }
  ]
}

```
