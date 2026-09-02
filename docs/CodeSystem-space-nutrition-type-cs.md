# Space Nutrition Product Types - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Nutrition Product Types**

## CodeSystem: Space Nutrition Product Types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-nutrition-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceNutritionTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of nutritional products used in space missions 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceNutritionTypeVS](ValueSet-space-nutrition-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-nutrition-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-nutrition-type-cs",
  "version" : "0.7.0",
  "name" : "SpaceNutritionTypeCS",
  "title" : "Space Nutrition Product Types",
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
  "description" : "Types of nutritional products used in space missions",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "freeze-dried-meal",
      "display" : "Freeze-Dried Meal"
    },
    {
      "code" : "thermo-stabilized-entree",
      "display" : "Thermo-Stabilized Entrée"
    },
    {
      "code" : "fresh-produce",
      "display" : "Fresh Produce Payload"
    },
    {
      "code" : "electrolyte-mix",
      "display" : "Supplemental Electrolyte Mix"
    },
    {
      "code" : "irradiated-food",
      "display" : "Irradiated Food Package"
    },
    {
      "code" : "intermediate-moisture",
      "display" : "Intermediate Moisture Food"
    },
    {
      "code" : "natural-form",
      "display" : "Natural Form Food"
    },
    {
      "code" : "rehydratable",
      "display" : "Rehydratable Food"
    },
    {
      "code" : "beverage-powder",
      "display" : "Beverage Powder"
    },
    {
      "code" : "nutritional-supplement",
      "display" : "Nutritional Supplement"
    }
  ]
}

```
