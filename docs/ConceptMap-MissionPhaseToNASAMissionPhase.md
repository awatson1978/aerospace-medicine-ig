# Mission Phase to NASA Mission Phase Timing - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Phase to NASA Mission Phase Timing**

## ConceptMap: Mission Phase to NASA Mission Phase Timing (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ConceptMap/MissionPhaseToNASAMissionPhase | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MissionPhaseToNASAMissionPhase |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Maps the clinical mission phases in MissionPhaseCS to the coarser NASA medical-requirements timing phases in NASAMissionPhaseCS. Pre-flight maps to preflight activity, all in-space phases map to inflight, and both post-flight phases map to postflight. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "MissionPhaseToNASAMissionPhase",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ConceptMap/MissionPhaseToNASAMissionPhase",
  "version" : "0.7.0",
  "name" : "MissionPhaseToNASAMissionPhase",
  "title" : "Mission Phase to NASA Mission Phase Timing",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02",
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
  "description" : "Maps the clinical mission phases in MissionPhaseCS to the coarser NASA medical-requirements timing phases in NASAMissionPhaseCS. Pre-flight maps to preflight activity, all in-space phases map to inflight, and both post-flight phases map to postflight.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "sourceCanonical" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/mission-phase-vs",
  "targetCanonical" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/nasa-mission-phase-vs",
  "group" : [
    {
      "source" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs",
      "target" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mission-phase-cs",
      "element" : [
        {
          "code" : "pre-flight",
          "display" : "Pre-flight",
          "target" : [
            {
              "code" : "preflight-activity",
              "display" : "Preflight Activity",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "launch-ascent",
          "display" : "Launch and Ascent",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "transit-outbound",
          "display" : "Outbound Transit",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "orbital-ops",
          "display" : "Orbital Operations",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "lunar-surface-ops",
          "display" : "Lunar Surface Operations",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "mars-surface-ops",
          "display" : "Mars Surface Operations",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "transit-return",
          "display" : "Return Transit",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "entry-descent",
          "display" : "Entry and Descent",
          "target" : [
            {
              "code" : "inflight",
              "display" : "In-Flight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "post-flight-acute",
          "display" : "Post-flight Acute",
          "target" : [
            {
              "code" : "postflight",
              "display" : "Postflight",
              "equivalence" : "wider"
            }
          ]
        },
        {
          "code" : "post-flight-reconditioning",
          "display" : "Post-flight Reconditioning",
          "target" : [
            {
              "code" : "postflight",
              "display" : "Postflight",
              "equivalence" : "wider"
            }
          ]
        }
      ]
    }
  ]
}

```
