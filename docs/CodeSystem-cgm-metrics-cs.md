# Continuous Glucose Monitoring Metrics Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Continuous Glucose Monitoring Metrics Code System**

## CodeSystem: Continuous Glucose Monitoring Metrics Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:CGMMetricsCS |

 
Standardized CGM metrics for spaceflight metabolic monitoring 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CGMMetricsVS](ValueSet-cgm-metrics-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cgm-metrics-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
  "version" : "0.6.0",
  "name" : "CGMMetricsCS",
  "title" : "Continuous Glucose Monitoring Metrics Code System",
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
  "description" : "Standardized CGM metrics for spaceflight metabolic monitoring",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "time-in-range",
      "display" : "Time in Range (TIR)",
      "definition" : "Percentage of time glucose is within target range (70-180 mg/dL)"
    },
    {
      "code" : "glucose-variability-cv",
      "display" : "Glucose Variability (CV%)",
      "definition" : "Coefficient of variation of glucose readings"
    },
    {
      "code" : "mean-glucose",
      "display" : "Mean Glucose",
      "definition" : "Average glucose level over reporting period"
    },
    {
      "code" : "gmi",
      "display" : "Glucose Management Indicator (GMI)",
      "definition" : "Estimated HbA1c based on mean glucose"
    },
    {
      "code" : "hypo-events",
      "display" : "Hypoglycemic Events",
      "definition" : "Number of glucose readings below 54 mg/dL"
    },
    {
      "code" : "hyper-events",
      "display" : "Hyperglycemic Events",
      "definition" : "Number of glucose readings above 250 mg/dL"
    },
    {
      "code" : "sensor-wear-pct",
      "display" : "Sensor Wear Percentage",
      "definition" : "Percentage of time CGM sensor was active and reporting"
    },
    {
      "code" : "time-below-range",
      "display" : "Time Below Range (TBR)",
      "definition" : "Percentage of time glucose below 70 mg/dL"
    },
    {
      "code" : "time-above-range",
      "display" : "Time Above Range (TAR)",
      "definition" : "Percentage of time glucose above 180 mg/dL"
    }
  ]
}

```
