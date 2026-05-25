# Actigraphy Metric Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Actigraphy Metric Code System**

## CodeSystem: Actigraphy Metric Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ActigraphyMetricCS |

 
Metrics derived from wrist actigraphy for sleep-wake monitoring 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActigraphyMetricVS](ValueSet-actigraphy-metric-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "actigraphy-metric-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs",
  "version" : "0.6.0",
  "name" : "ActigraphyMetricCS",
  "title" : "Actigraphy Metric Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Metrics derived from wrist actigraphy for sleep-wake monitoring",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "activity-count",
      "display" : "Activity Count",
      "definition" : "Raw activity count from accelerometer"
    },
    {
      "code" : "rest-activity-ratio",
      "display" : "Rest-Activity Ratio",
      "definition" : "Ratio of rest to activity periods over 24 hours"
    },
    {
      "code" : "interdaily-stability",
      "display" : "Interdaily Stability (IS)",
      "definition" : "Consistency of rest-activity pattern across days"
    },
    {
      "code" : "intradaily-variability",
      "display" : "Intradaily Variability (IV)",
      "definition" : "Fragmentation of rest-activity pattern within days"
    }
  ]
}

```
