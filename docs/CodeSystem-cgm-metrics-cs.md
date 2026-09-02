# Continuous Glucose Monitoring Metrics Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Continuous Glucose Monitoring Metrics Code System**

## CodeSystem: Continuous Glucose Monitoring Metrics Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CGMMetricsCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Standardized CGM metrics for spaceflight metabolic monitoring 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CGMMetricsVS](ValueSet-cgm-metrics-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cgm-metrics-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
  "version" : "0.7.0",
  "name" : "CGMMetricsCS",
  "title" : "Continuous Glucose Monitoring Metrics Code System",
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
  "description" : "Standardized CGM metrics for spaceflight metabolic monitoring",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
