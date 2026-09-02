# Telemedicine Modality Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Modality Code System**

## CodeSystem: Telemedicine Modality Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-modality-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:TelemedicineModalityCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Telemedicine modalities for spaceflight medical operations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TelemedicineModalityVS](ValueSet-telemedicine-modality-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "telemedicine-modality-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-modality-cs",
  "version" : "0.7.0",
  "name" : "TelemedicineModalityCS",
  "title" : "Telemedicine Modality Code System",
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
  "description" : "Telemedicine modalities for spaceflight medical operations",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
