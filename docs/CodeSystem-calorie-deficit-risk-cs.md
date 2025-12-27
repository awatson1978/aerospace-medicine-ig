# Calorie Deficit Risk Levels - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Calorie Deficit Risk Levels**

## CodeSystem: Calorie Deficit Risk Levels 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/calorie-deficit-risk-cs | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:CalorieDeficitRiskCS |

 
Risk categorization for caloric deficits 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CalorieDeficitRiskVS](ValueSet-calorie-deficit-risk-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "calorie-deficit-risk-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/calorie-deficit-risk-cs",
  "version" : "0.5.0",
  "name" : "CalorieDeficitRiskCS",
  "title" : "Calorie Deficit Risk Levels",
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
  "description" : "Risk categorization for caloric deficits",
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
