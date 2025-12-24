# Space Exercise Performance Metric Code System - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Performance Metric Code System**

## CodeSystem: Space Exercise Performance Metric Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/space-performance-metric-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:SpacePerformanceMetricCS |

 
Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpacePerformanceMetricVS](ValueSet-space-performance-metric-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-performance-metric-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-performance-metric-cs",
  "version" : "0.4.2",
  "name" : "SpacePerformanceMetricCS",
  "title" : "Space Exercise Performance Metric Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T13:59:08-07:00",
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
