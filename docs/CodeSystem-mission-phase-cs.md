# Mission Phase Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Phase Code System**

## CodeSystem: Mission Phase Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:MissionPhaseCS |

 
Phases of a space mission for temporal context of clinical observations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MissionPhaseVS](ValueSet-mission-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mission-phase-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs",
  "version" : "0.6.2",
  "name" : "MissionPhaseCS",
  "title" : "Mission Phase Code System",
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
  "description" : "Phases of a space mission for temporal context of clinical observations",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "pre-flight",
      "display" : "Pre-flight",
      "definition" : "Period before launch including training and medical baseline"
    },
    {
      "code" : "launch-ascent",
      "display" : "Launch and Ascent",
      "definition" : "From liftoff through orbital insertion or trans-lunar injection"
    },
    {
      "code" : "transit-outbound",
      "display" : "Outbound Transit",
      "definition" : "Transit from Earth orbit to destination (Moon, Mars, etc.)"
    },
    {
      "code" : "orbital-ops",
      "display" : "Orbital Operations",
      "definition" : "Operations while in orbit around Earth or another body"
    },
    {
      "code" : "lunar-surface-ops",
      "display" : "Lunar Surface Operations",
      "definition" : "Operations on the lunar surface including EVAs"
    },
    {
      "code" : "mars-surface-ops",
      "display" : "Mars Surface Operations",
      "definition" : "Operations on the Mars surface"
    },
    {
      "code" : "transit-return",
      "display" : "Return Transit",
      "definition" : "Transit from destination back toward Earth"
    },
    {
      "code" : "entry-descent",
      "display" : "Entry and Descent",
      "definition" : "Atmospheric re-entry and landing"
    },
    {
      "code" : "post-flight-acute",
      "display" : "Post-flight Acute",
      "definition" : "Immediate post-landing period, typically R+0 to R+3 days"
    },
    {
      "code" : "post-flight-reconditioning",
      "display" : "Post-flight Reconditioning",
      "definition" : "Extended reconditioning period, typically R+3 days to R+45 days"
    }
  ]
}

```
