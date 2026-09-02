# EVA Suit State Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Suit State Code System**

## CodeSystem: EVA Suit State Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-state-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:EVASuitStateCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Operational states of EVA suit systems 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EVASuitStateVS](ValueSet-eva-suit-state-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eva-suit-state-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-state-cs",
  "version" : "0.7.0",
  "name" : "EVASuitStateCS",
  "title" : "EVA Suit State Code System",
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
  "description" : "Operational states of EVA suit systems",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "microgravity-config",
      "display" : "Microgravity Configuration",
      "definition" : "Suit configured for microgravity EVA operations"
    },
    {
      "code" : "planetary-surface-config",
      "display" : "Planetary Surface Configuration",
      "definition" : "Suit configured for planetary surface EVA with lower-body mobility"
    },
    {
      "code" : "iva-rescue-config",
      "display" : "IVA Rescue Configuration",
      "definition" : "Suit configured as emergency pressure garment for IVA rescue"
    },
    {
      "code" : "pressurization-test",
      "display" : "Pressurization Test",
      "definition" : "Suit undergoing leak check and pressurization verification"
    },
    {
      "code" : "stowed",
      "display" : "Stowed",
      "definition" : "Suit in storage configuration, not actively deployed"
    }
  ]
}

```
