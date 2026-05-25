# Space Motion Sickness Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Motion Sickness Code System**

## CodeSystem: Space Motion Sickness Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-motion-sickness-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceMotionSicknessCS |

 
Types of motion sickness encountered in space travel and related vestibular disorders 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceMotionSicknessVS](ValueSet-space-motion-sickness-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-motion-sickness-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-motion-sickness-cs",
  "version" : "0.6.0",
  "name" : "SpaceMotionSicknessCS",
  "title" : "Space Motion Sickness Code System",
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
  "description" : "Types of motion sickness encountered in space travel and related vestibular disorders",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "sms",
      "display" : "Space Motion Sickness (SMS)",
      "definition" : "Motion sickness occurring during initial adaptation to microgravity, typically within the first 72 hours of spaceflight"
    },
    {
      "code" : "trms",
      "display" : "Terrestrial Re-entry Motion Sickness (TRMS)",
      "definition" : "Motion sickness occurring upon return to Earth gravity after spaceflight"
    },
    {
      "code" : "mal-de-debarquement",
      "display" : "Mal de Debarquement Syndrome",
      "definition" : "Persistent sensation of rocking or swaying after spaceflight or prolonged motion exposure"
    },
    {
      "code" : "vestibular-conflict",
      "display" : "Vestibular Conflict Syndrome",
      "definition" : "Sensory conflict between vestibular, visual, and proprioceptive inputs in altered gravity"
    }
  ]
}

```
