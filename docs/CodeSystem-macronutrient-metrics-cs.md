# Macronutrient Metrics - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Macronutrient Metrics**

## CodeSystem: Macronutrient Metrics (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/macronutrient-metrics-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MacronutrientMetricsCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Measurement types for macronutrient tracking 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MacronutrientMetricsVS](ValueSet-macronutrient-metrics-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "macronutrient-metrics-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/macronutrient-metrics-cs",
  "version" : "0.7.0",
  "name" : "MacronutrientMetricsCS",
  "title" : "Macronutrient Metrics",
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
  "description" : "Measurement types for macronutrient tracking",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
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
    },
    {
      "code" : "calorie-deficit-risk",
      "display" : "Calorie Deficit Risk Level",
      "definition" : "Categorical risk level derived from the sustained daily caloric deficit"
    }
  ]
}

```
