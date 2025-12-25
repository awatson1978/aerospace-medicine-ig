# Nutrition Inventory Status - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Inventory Status**

## CodeSystem: Nutrition Inventory Status 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nutrition-inventory-status-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:NutritionInventoryStatusCS |

 
Status levels for nutrition inventory management 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NutritionInventoryStatusVS](ValueSet-nutrition-inventory-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nutrition-inventory-status-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nutrition-inventory-status-cs",
  "version" : "0.4.2",
  "name" : "NutritionInventoryStatusCS",
  "title" : "Nutrition Inventory Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T19:44:53-07:00",
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
