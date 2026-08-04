# EVA Suit State Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Suit State Code System**

## CodeSystem: EVA Suit State Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/eva-suit-state-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:EVASuitStateCS |

 
Operational states of EVA suit systems 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EVASuitStateVS](ValueSet-eva-suit-state-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eva-suit-state-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/eva-suit-state-cs",
  "version" : "0.6.2",
  "name" : "EVASuitStateCS",
  "title" : "EVA Suit State Code System",
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
  "description" : "Operational states of EVA suit systems",
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
