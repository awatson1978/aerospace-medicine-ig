# Parabolic Flight Phase Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parabolic Flight Phase Code System**

## CodeSystem: Parabolic Flight Phase Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/parabolic-flight-phase-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ParabolicFlightPhaseCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Phases of a parabolic flight maneuver used in microgravity research 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ParabolicFlightPhaseVS](ValueSet-parabolic-flight-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "parabolic-flight-phase-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/parabolic-flight-phase-cs",
  "version" : "0.7.0",
  "name" : "ParabolicFlightPhaseCS",
  "title" : "Parabolic Flight Phase Code System",
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
  "description" : "Phases of a parabolic flight maneuver used in microgravity research",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
