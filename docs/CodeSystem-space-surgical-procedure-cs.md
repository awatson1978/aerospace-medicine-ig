# Space Surgical Procedure Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Surgical Procedure Code System**

## CodeSystem: Space Surgical Procedure Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-surgical-procedure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceSurgicalProcedureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Surgical procedures adapted for spaceflight austere environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceSurgicalProcedureVS](ValueSet-space-surgical-procedure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-surgical-procedure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-surgical-procedure-cs",
  "version" : "0.7.0",
  "name" : "SpaceSurgicalProcedureCS",
  "title" : "Space Surgical Procedure Code System",
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
  "description" : "Surgical procedures adapted for spaceflight austere environments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
