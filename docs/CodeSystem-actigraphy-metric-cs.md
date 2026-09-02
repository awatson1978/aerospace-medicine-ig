# Actigraphy Metric Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Actigraphy Metric Code System**

## CodeSystem: Actigraphy Metric Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/actigraphy-metric-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ActigraphyMetricCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Metrics derived from wrist actigraphy for sleep-wake monitoring 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActigraphyMetricVS](ValueSet-actigraphy-metric-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "actigraphy-metric-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/actigraphy-metric-cs",
  "version" : "0.7.0",
  "name" : "ActigraphyMetricCS",
  "title" : "Actigraphy Metric Code System",
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
  "description" : "Metrics derived from wrist actigraphy for sleep-wake monitoring",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
