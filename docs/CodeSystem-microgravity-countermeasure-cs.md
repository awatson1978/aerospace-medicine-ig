# Microgravity Countermeasure Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microgravity Countermeasure Code System**

## CodeSystem: Microgravity Countermeasure Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/microgravity-countermeasure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MicrogravityCountermeasureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MicrogravityCountermeasureVS](ValueSet-microgravity-countermeasure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "microgravity-countermeasure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/microgravity-countermeasure-cs",
  "version" : "0.7.0",
  "name" : "MicrogravityCountermeasureCS",
  "title" : "Microgravity Countermeasure Code System",
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
  "description" : "Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
