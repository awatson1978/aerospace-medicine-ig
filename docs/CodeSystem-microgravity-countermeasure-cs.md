# Microgravity Countermeasure Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microgravity Countermeasure Code System**

## CodeSystem: Microgravity Countermeasure Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/microgravity-countermeasure-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:MicrogravityCountermeasureCS |

 
Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MicrogravityCountermeasureVS](ValueSet-microgravity-countermeasure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "microgravity-countermeasure-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/microgravity-countermeasure-cs",
  "version" : "0.6.2",
  "name" : "MicrogravityCountermeasureCS",
  "title" : "Microgravity Countermeasure Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "lbnp",
      "display" : "Lower Body Negative Pressure",
      "definition" : "Application of sub-atmospheric pressure to the lower body to counteract cephalad fluid shift"
    },
    {
      "code" : "venous-flow-monitoring",
      "display" : "Venous Flow Monitoring",
      "definition" : "Ultrasound-based monitoring of venous flow dynamics including IJV assessment"
    },
    {
      "code" : "fluid-shift-mitigation",
      "display" : "Fluid Shift Mitigation",
      "definition" : "Interventions to reduce headward fluid redistribution in microgravity"
    },
    {
      "code" : "anti-sans-protocol",
      "display" : "Anti-SANS Protocol",
      "definition" : "Protocol designed to reduce risk of Spaceflight-Associated Neuro-Ocular Syndrome"
    },
    {
      "code" : "venous-thrombosis-prevention",
      "display" : "Venous Thrombosis Prevention",
      "definition" : "Measures to prevent venous stasis and thrombosis during spaceflight"
    }
  ]
}

```
