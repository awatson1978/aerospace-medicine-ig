# Space POCUS Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space POCUS Type Code System**

## CodeSystem: Space POCUS Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-pocus-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpacePOCUSTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Point-of-care ultrasound examination types for austere spaceflight environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpacePOCUSTypeVS](ValueSet-space-pocus-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-pocus-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-pocus-type-cs",
  "version" : "0.7.0",
  "name" : "SpacePOCUSTypeCS",
  "title" : "Space POCUS Type Code System",
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
  "description" : "Point-of-care ultrasound examination types for austere spaceflight environments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
