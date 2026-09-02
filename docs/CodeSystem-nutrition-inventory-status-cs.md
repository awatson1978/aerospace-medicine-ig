# Nutrition Inventory Status - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Inventory Status**

## CodeSystem: Nutrition Inventory Status (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nutrition-inventory-status-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NutritionInventoryStatusCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Status levels for nutrition inventory management 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NutritionInventoryStatusVS](ValueSet-nutrition-inventory-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nutrition-inventory-status-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nutrition-inventory-status-cs",
  "version" : "0.7.0",
  "name" : "NutritionInventoryStatusCS",
  "title" : "Nutrition Inventory Status",
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
  "description" : "Status levels for nutrition inventory management",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "adequate",
      "display" : "Adequate Supply"
    },
    {
      "code" : "low",
      "display" : "Low Supply"
    },
    {
      "code" : "critical",
      "display" : "Critical Supply"
    },
    {
      "code" : "expired",
      "display" : "Expired Items Present"
    },
    {
      "code" : "shortage",
      "display" : "Shortage Detected"
    },
    {
      "code" : "nominal",
      "display" : "Nominal Status"
    },
    {
      "code" : "caution",
      "display" : "Caution Required"
    }
  ]
}

```
