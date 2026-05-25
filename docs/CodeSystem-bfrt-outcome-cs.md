# BFRT Outcome Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Outcome Code System**

## CodeSystem: BFRT Outcome Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/bfrt-outcome-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BFRTOutcomeCS |

 
Outcome measures for blood flow restriction training effectiveness 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BFRTOutcomeVS](ValueSet-bfrt-outcome-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bfrt-outcome-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-outcome-cs",
  "version" : "0.6.0",
  "name" : "BFRTOutcomeCS",
  "title" : "BFRT Outcome Code System",
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
  "description" : "Outcome measures for blood flow restriction training effectiveness",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "muscle-csa",
      "display" : "Muscle Cross-Sectional Area",
      "definition" : "Cross-sectional area of muscle measured by imaging"
    },
    {
      "code" : "p1np",
      "display" : "P1NP (Procollagen Type I N-Propeptide)",
      "definition" : "Bone formation marker indicating osteoblast activity"
    },
    {
      "code" : "ctx",
      "display" : "CTX (C-Terminal Telopeptide)",
      "definition" : "Bone resorption marker indicating osteoclast activity"
    },
    {
      "code" : "limb-occlusion-pressure",
      "display" : "Limb Occlusion Pressure",
      "definition" : "Arterial occlusion pressure measured at the proximal limb"
    },
    {
      "code" : "rep-max-1rm",
      "display" : "1-Repetition Maximum (1RM)",
      "definition" : "Maximum weight lifted for one complete repetition"
    },
    {
      "code" : "muscle-thickness",
      "display" : "Muscle Thickness",
      "definition" : "Ultrasound-measured muscle thickness"
    },
    {
      "code" : "vascular-compliance",
      "display" : "Vascular Compliance",
      "definition" : "Arterial compliance measured post-BFRT"
    }
  ]
}

```
