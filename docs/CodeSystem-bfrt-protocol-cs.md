# BFRT Protocol Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Protocol Code System**

## CodeSystem: BFRT Protocol Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BFRTProtocolCS |

 
Blood flow restriction training protocol types for microgravity exercise countermeasures 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BFRTProtocolVS](ValueSet-bfrt-protocol-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bfrt-protocol-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs",
  "version" : "0.6.0",
  "name" : "BFRTProtocolCS",
  "title" : "BFRT Protocol Code System",
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
  "description" : "Blood flow restriction training protocol types for microgravity exercise countermeasures",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "intermittent-bfrt",
      "display" : "Intermittent BFRT",
      "definition" : "Alternating periods of occlusion and reperfusion during exercise"
    },
    {
      "code" : "continuous-bfrt",
      "display" : "Continuous BFRT",
      "definition" : "Sustained occlusion throughout the exercise set"
    },
    {
      "code" : "auto-regulated-bfrt",
      "display" : "Auto-Regulated BFRT",
      "definition" : "Pressure automatically adjusted based on limb occlusion pressure"
    },
    {
      "code" : "low-load-bfrt",
      "display" : "Low-Load BFRT (20-30% 1RM)",
      "definition" : "Blood flow restriction with 20-30% of one-repetition maximum"
    },
    {
      "code" : "moderate-load-bfrt",
      "display" : "Moderate-Load BFRT (40-50% 1RM)",
      "definition" : "Blood flow restriction with 40-50% of one-repetition maximum"
    }
  ]
}

```
