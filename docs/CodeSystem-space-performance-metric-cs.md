# Space Exercise Performance Metric Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Performance Metric Code System**

## CodeSystem: Space Exercise Performance Metric Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-performance-metric-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpacePerformanceMetricCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpacePerformanceMetricVS](ValueSet-space-performance-metric-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-performance-metric-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-performance-metric-cs",
  "version" : "0.7.0",
  "name" : "SpacePerformanceMetricCS",
  "title" : "Space Exercise Performance Metric Code System",
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
  "description" : "Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force).",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "mean-power",
      "display" : "Mean power output",
      "definition" : "Average mechanical power output over the activity interval."
    },
    {
      "code" : "peak-power",
      "display" : "Peak power output",
      "definition" : "Maximum mechanical power achieved during the activity."
    },
    {
      "code" : "simulated-bw",
      "display" : "Simulated body weight",
      "definition" : "Effective body-weight load, typically as a fraction of 1-g weight, during harness or artificial gravity exercise."
    },
    {
      "code" : "total-work",
      "display" : "Total mechanical work",
      "definition" : "Total work performed across the activity interval."
    },
    {
      "code" : "vo2-surrogate",
      "display" : "VO2 surrogate index",
      "definition" : "Computed surrogate for oxygen uptake based on HR, power, and subject parameters."
    },
    {
      "code" : "recovery-hr",
      "display" : "1-minute recovery heart rate",
      "definition" : "Heart rate recorded one minute after cessation of exercise."
    },
    {
      "code" : "hr-reserve-percent",
      "display" : "Percentage heart rate reserve",
      "definition" : "Intensity expressed as % of heart rate reserve."
    },
    {
      "code" : "ground-reaction-force",
      "display" : "Ground reaction force",
      "definition" : "Effective ground reaction force during treadmill exercise with harness loading."
    },
    {
      "code" : "resistance-level",
      "display" : "Resistance level setting",
      "definition" : "Resistance setting on exercise equipment."
    },
    {
      "code" : "cadence",
      "display" : "Exercise cadence",
      "definition" : "Steps per minute (treadmill) or revolutions per minute (cycle ergometer)."
    }
  ]
}

```
