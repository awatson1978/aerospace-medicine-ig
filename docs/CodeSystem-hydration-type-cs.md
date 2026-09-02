# Hydration Product Types - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hydration Product Types**

## CodeSystem: Hydration Product Types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hydration-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:HydrationTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of hydration products used in space 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HydrationTypeVS](ValueSet-hydration-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hydration-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hydration-type-cs",
  "version" : "0.7.0",
  "name" : "HydrationTypeCS",
  "title" : "Hydration Product Types",
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
  "description" : "Types of hydration products used in space",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "potable-water",
      "display" : "Potable Water"
    },
    {
      "code" : "recycled-water",
      "display" : "Recycled Water"
    },
    {
      "code" : "ors",
      "display" : "Oral Rehydration Solution"
    },
    {
      "code" : "electrolyte-packet",
      "display" : "Electrolyte Packet"
    },
    {
      "code" : "iv-saline",
      "display" : "IV Saline"
    },
    {
      "code" : "sports-drink",
      "display" : "Sports Drink Mix"
    },
    {
      "code" : "tea-coffee",
      "display" : "Tea/Coffee Beverage"
    }
  ]
}

```
