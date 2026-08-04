# Circadian Phase Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Phase Code System**

## CodeSystem: Circadian Phase Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/circadian-phase-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:CircadianPhaseCS |

 
Circadian rhythm phases for contextualizing temperature and physiological measurements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CircadianPhaseVS](ValueSet-circadian-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "circadian-phase-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/circadian-phase-cs",
  "version" : "0.6.2",
  "name" : "CircadianPhaseCS",
  "title" : "Circadian Phase Code System",
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
  "description" : "Circadian rhythm phases for contextualizing temperature and physiological measurements",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "morning-nadir",
      "display" : "Morning Nadir",
      "definition" : "Circadian temperature nadir typically occurring in early morning hours"
    },
    {
      "code" : "afternoon-peak",
      "display" : "Afternoon Peak",
      "definition" : "Circadian temperature acrophase typically occurring in late afternoon"
    },
    {
      "code" : "nocturnal-trough",
      "display" : "Nocturnal Trough",
      "definition" : "Overnight low temperature period during sleep"
    },
    {
      "code" : "circadian-acrophase",
      "display" : "Circadian Acrophase",
      "definition" : "Peak of the circadian temperature rhythm"
    }
  ]
}

```
