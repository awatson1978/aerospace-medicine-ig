# Telemedicine Modality Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Modality Code System**

## CodeSystem: Telemedicine Modality Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/telemedicine-modality-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:TelemedicineModalityCS |

 
Telemedicine modalities for spaceflight medical operations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TelemedicineModalityVS](ValueSet-telemedicine-modality-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "telemedicine-modality-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/telemedicine-modality-cs",
  "version" : "0.6.0",
  "name" : "TelemedicineModalityCS",
  "title" : "Telemedicine Modality Code System",
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
  "description" : "Telemedicine modalities for spaceflight medical operations",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "realtime-video",
      "display" : "Real-time Video",
      "definition" : "Synchronous video consultation between crew and ground"
    },
    {
      "code" : "store-forward",
      "display" : "Store-and-Forward",
      "definition" : "Asynchronous transmission of clinical data and images for later review"
    },
    {
      "code" : "asynchronous-text",
      "display" : "Asynchronous Text",
      "definition" : "Text-based clinical communication with time delay"
    },
    {
      "code" : "remote-monitoring",
      "display" : "Remote Monitoring",
      "definition" : "Continuous remote physiological monitoring from ground"
    },
    {
      "code" : "ai-assisted-triage",
      "display" : "AI-Assisted Triage",
      "definition" : "Autonomous or semi-autonomous AI-based clinical triage"
    },
    {
      "code" : "remote-guided-procedure",
      "display" : "Remote-Guided Procedure",
      "definition" : "Procedure performed by crew with real-time or near-real-time guidance from ground"
    }
  ]
}

```
