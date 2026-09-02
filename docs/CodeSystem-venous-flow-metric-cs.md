# Venous Flow Metric Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Venous Flow Metric Code System**

## CodeSystem: Venous Flow Metric Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:VenousFlowMetricCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Component codes for internal jugular vein flow directionality measurements 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "venous-flow-metric-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
  "version" : "0.7.0",
  "name" : "VenousFlowMetricCS",
  "title" : "Venous Flow Metric Code System",
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
  "description" : "Component codes for internal jugular vein flow directionality measurements",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "forward-flow-time",
      "display" : "Forward Flow Time",
      "definition" : "Duration of antegrade flow within the sample window (s)"
    },
    {
      "code" : "retrograde-flow-time",
      "display" : "Retrograde Flow Time",
      "definition" : "Duration of retrograde flow within the sample window (s)"
    },
    {
      "code" : "zero-flow-time",
      "display" : "Zero Flow Time",
      "definition" : "Duration of stagnant flow within the sample window (s)"
    },
    {
      "code" : "total-sample-time",
      "display" : "Total Sample Time",
      "definition" : "Total duration of the Doppler sample window (s)"
    },
    {
      "code" : "fdi-ratio",
      "display" : "Flow Directionality Index",
      "definition" : "FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total)"
    }
  ]
}

```
