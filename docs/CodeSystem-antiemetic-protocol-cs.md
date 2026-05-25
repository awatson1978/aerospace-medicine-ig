# Antiemetic Protocol Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Protocol Code System**

## CodeSystem: Antiemetic Protocol Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/antiemetic-protocol-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:AntiemeticProtocolCS |

 
Protocols for antiemetic administration in spaceflight contexts 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntiemeticProtocolVS](ValueSet-antiemetic-protocol-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antiemetic-protocol-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/antiemetic-protocol-cs",
  "version" : "0.6.0",
  "name" : "AntiemeticProtocolCS",
  "title" : "Antiemetic Protocol Code System",
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
  "description" : "Protocols for antiemetic administration in spaceflight contexts",
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
