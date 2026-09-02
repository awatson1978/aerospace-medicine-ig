# ISRU Metrics - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Metrics**

## CodeSystem: ISRU Metrics (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isru-metrics-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ISRUMetricsCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Measurement codes for in-situ resource utilization (ISRU) propellant production logs 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "isru-metrics-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isru-metrics-cs",
  "version" : "0.7.0",
  "name" : "ISRUMetricsCS",
  "title" : "ISRU Metrics",
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
  "description" : "Measurement codes for in-situ resource utilization (ISRU) propellant production logs",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "cumulative-propellant",
      "display" : "Cumulative Propellant Production",
      "definition" : "Total mass of propellant (CH4 and/or O2) produced by the ISRU plant since start of operations"
    },
    {
      "code" : "reactor-status",
      "display" : "Reactor Status",
      "definition" : "Operational status of the ISRU Sabatier/electrolysis reactor"
    },
    {
      "code" : "power-consumption",
      "display" : "Power Consumption",
      "definition" : "Electrical power drawn by the ISRU plant"
    }
  ]
}

```
