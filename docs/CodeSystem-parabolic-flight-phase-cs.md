# Parabolic Flight Phase Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parabolic Flight Phase Code System**

## CodeSystem: Parabolic Flight Phase Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/parabolic-flight-phase-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ParabolicFlightPhaseCS |

 
Phases of a parabolic flight maneuver used in microgravity research 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ParabolicFlightPhaseVS](ValueSet-parabolic-flight-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "parabolic-flight-phase-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/parabolic-flight-phase-cs",
  "version" : "0.6.0",
  "name" : "ParabolicFlightPhaseCS",
  "title" : "Parabolic Flight Phase Code System",
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
  "description" : "Phases of a parabolic flight maneuver used in microgravity research",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "steady-1g",
      "display" : "Steady 1g",
      "definition" : "Level flight at standard gravity before or between parabolas"
    },
    {
      "code" : "pull-up",
      "display" : "Pull-Up",
      "definition" : "Hypergravity phase during aircraft pitch-up (1.5-1.8g)"
    },
    {
      "code" : "microgravity",
      "display" : "Microgravity",
      "definition" : "Free-fall phase at approximately 0g during parabolic arc"
    },
    {
      "code" : "pull-out",
      "display" : "Pull-Out",
      "definition" : "Hypergravity recovery phase during aircraft pitch-down (1.5-1.8g)"
    }
  ]
}

```
