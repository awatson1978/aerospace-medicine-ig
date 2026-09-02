# Antiemetic Protocol Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Protocol Code System**

## CodeSystem: Antiemetic Protocol Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antiemetic-protocol-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AntiemeticProtocolCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Protocols for antiemetic administration in spaceflight contexts 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntiemeticProtocolVS](ValueSet-antiemetic-protocol-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antiemetic-protocol-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antiemetic-protocol-cs",
  "version" : "0.7.0",
  "name" : "AntiemeticProtocolCS",
  "title" : "Antiemetic Protocol Code System",
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
  "description" : "Protocols for antiemetic administration in spaceflight contexts",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "prophylactic-pre-flight",
      "display" : "Pre-flight Prophylaxis",
      "definition" : "Antiemetic administered before launch as prophylaxis"
    },
    {
      "code" : "prophylactic-in-flight",
      "display" : "In-flight Prophylaxis",
      "definition" : "Scheduled antiemetic during early mission phase"
    },
    {
      "code" : "rescue-treatment",
      "display" : "Rescue Treatment",
      "definition" : "Antiemetic administered in response to acute symptoms"
    },
    {
      "code" : "post-flight-prophylaxis",
      "display" : "Post-flight Prophylaxis",
      "definition" : "Antiemetic for re-entry and post-landing re-adaptation"
    },
    {
      "code" : "eva-prophylaxis",
      "display" : "EVA Prophylaxis",
      "definition" : "Antiemetic administered before EVA to prevent motion sickness"
    }
  ]
}

```
