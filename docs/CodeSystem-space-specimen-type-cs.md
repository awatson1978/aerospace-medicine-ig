# Space Specimen Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Specimen Type Code System**

## CodeSystem: Space Specimen Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-specimen-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceSpecimenTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Specimen types collected during spaceflight with microgravity-adapted methods 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceSpecimenTypeVS](ValueSet-space-specimen-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-specimen-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-specimen-type-cs",
  "version" : "0.7.0",
  "name" : "SpaceSpecimenTypeCS",
  "title" : "Space Specimen Type Code System",
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
  "description" : "Specimen types collected during spaceflight with microgravity-adapted methods",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
