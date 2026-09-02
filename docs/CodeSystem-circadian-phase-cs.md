# Circadian Phase Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Phase Code System**

## CodeSystem: Circadian Phase Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-phase-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CircadianPhaseCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Circadian rhythm phases for contextualizing temperature and physiological measurements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CircadianPhaseVS](ValueSet-circadian-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "circadian-phase-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-phase-cs",
  "version" : "0.7.0",
  "name" : "CircadianPhaseCS",
  "title" : "Circadian Phase Code System",
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
  "description" : "Circadian rhythm phases for contextualizing temperature and physiological measurements",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
