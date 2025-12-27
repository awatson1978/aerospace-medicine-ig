# Space Nutrition Product Types - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Nutrition Product Types**

## CodeSystem: Space Nutrition Product Types 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-nutrition-type-cs | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:SpaceNutritionTypeCS |

 
Types of nutritional products used in space missions 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceNutritionTypeVS](ValueSet-space-nutrition-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-nutrition-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-nutrition-type-cs",
  "version" : "0.5.0",
  "name" : "SpaceNutritionTypeCS",
  "title" : "Space Nutrition Product Types",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-25T11:43:35-07:00",
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
