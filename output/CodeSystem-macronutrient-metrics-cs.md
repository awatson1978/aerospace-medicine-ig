# Macronutrient Metrics - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Macronutrient Metrics**

## CodeSystem: Macronutrient Metrics 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/macronutrient-metrics-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:MacronutrientMetricsCS |

 
Measurement types for macronutrient tracking 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MacronutrientMetricsVS](ValueSet-macronutrient-metrics-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "macronutrient-metrics-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/macronutrient-metrics-cs",
  "version" : "0.4.2",
  "name" : "MacronutrientMetricsCS",
  "title" : "Macronutrient Metrics",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Measurement types for macronutrient tracking",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "calorie-intake",
      "display" : "Calorie Intake"
    },
    {
      "code" : "calorie-expenditure",
      "display" : "Calorie Expenditure"
    },
    {
      "code" : "calorie-deficit",
      "display" : "Calorie Deficit"
    },
    {
      "code" : "calorie-surplus",
      "display" : "Calorie Surplus"
    },
    {
      "code" : "protein-grams",
      "display" : "Protein Intake (grams)"
    },
    {
      "code" : "carbohydrate-grams",
      "display" : "Carbohydrate Intake (grams)"
    },
    {
      "code" : "fat-grams",
      "display" : "Fat Intake (grams)"
    },
    {
      "code" : "fiber-grams",
      "display" : "Fiber Intake (grams)"
    },
    {
      "code" : "protein-per-kg",
      "display" : "Protein per Kilogram Body Weight"
    }
  ]
}

```
