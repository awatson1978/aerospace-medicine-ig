# Space Radiation Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Type Code System**

## CodeSystem: Space Radiation Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceRadiationTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of radiation encountered in space environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceRadiationTypeVS](ValueSet-space-radiation-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-radiation-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-type-cs",
  "version" : "0.7.0",
  "name" : "SpaceRadiationTypeCS",
  "title" : "Space Radiation Type Code System",
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
  "description" : "Types of radiation encountered in space environments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "gcr",
      "display" : "Galactic Cosmic Radiation"
    },
    {
      "code" : "spe",
      "display" : "Solar Particle Event"
    },
    {
      "code" : "trapped",
      "display" : "Trapped Radiation"
    },
    {
      "code" : "secondary",
      "display" : "Secondary Radiation"
    }
  ]
}

```
