# Calorie Deficit Risk Levels - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Calorie Deficit Risk Levels**

## CodeSystem: Calorie Deficit Risk Levels (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/calorie-deficit-risk-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CalorieDeficitRiskCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Risk categorization for caloric deficits 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CalorieDeficitRiskVS](ValueSet-calorie-deficit-risk-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "calorie-deficit-risk-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/calorie-deficit-risk-cs",
  "version" : "0.7.0",
  "name" : "CalorieDeficitRiskCS",
  "title" : "Calorie Deficit Risk Levels",
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
  "description" : "Risk categorization for caloric deficits",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "mild",
      "display" : "Mild (<300 kcal/day)"
    },
    {
      "code" : "moderate",
      "display" : "Moderate (300-600 kcal/day)"
    },
    {
      "code" : "severe",
      "display" : "Severe (>600 kcal/day)"
    },
    {
      "code" : "extreme",
      "display" : "Extreme (>1000 kcal/day)"
    }
  ]
}

```
