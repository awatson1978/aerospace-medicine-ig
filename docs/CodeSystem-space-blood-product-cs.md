# Space Blood Product Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Blood Product Code System**

## CodeSystem: Space Blood Product Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-blood-product-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceBloodProductCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Blood products adapted for spaceflight and austere environment use 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceBloodProductVS](ValueSet-space-blood-product-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-blood-product-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-blood-product-cs",
  "version" : "0.7.0",
  "name" : "SpaceBloodProductCS",
  "title" : "Space Blood Product Code System",
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
  "description" : "Blood products adapted for spaceflight and austere environment use",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "lyophilized-rbc",
      "display" : "Lyophilized Red Blood Cells",
      "definition" : "Freeze-dried RBCs for long-duration storage and reconstitution"
    },
    {
      "code" : "fresh-whole-blood",
      "display" : "Fresh Whole Blood",
      "definition" : "Warm fresh whole blood from buddy donor"
    },
    {
      "code" : "freeze-dried-plasma",
      "display" : "Freeze-Dried Plasma",
      "definition" : "Lyophilized plasma for reconstitution"
    },
    {
      "code" : "rehydrated-rbc",
      "display" : "Rehydrated Red Blood Cells",
      "definition" : "Reconstituted lyophilized RBCs ready for transfusion"
    }
  ]
}

```
