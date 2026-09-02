# NASA Mission Phase Timing - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Mission Phase Timing**

## CodeSystem: NASA Mission Phase Timing (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mission-phase-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NASAMissionPhaseCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Mission phases and timing codes for medical requirements scheduling. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAMissionPhaseVS](ValueSet-nasa-mission-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-mission-phase-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mission-phase-cs",
  "version" : "0.7.0",
  "name" : "NASAMissionPhaseCS",
  "title" : "NASA Mission Phase Timing",
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
  "description" : "Mission phases and timing codes for medical requirements scheduling.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "preflight-training",
      "display" : "Preflight Training",
      "definition" : "Training activities conducted before launch to prepare crew for medical procedures."
    },
    {
      "code" : "preflight-activity",
      "display" : "Preflight Activity",
      "definition" : "Medical activities and examinations conducted before launch."
    },
    {
      "code" : "inflight",
      "display" : "In-Flight",
      "definition" : "Medical activities conducted during spaceflight."
    },
    {
      "code" : "postflight",
      "display" : "Postflight",
      "definition" : "Medical activities conducted after landing/return."
    },
    {
      "code" : "postflight-debrief",
      "display" : "Postflight Debrief",
      "definition" : "Debriefing sessions conducted after mission completion."
    },
    {
      "code" : "continuous",
      "display" : "Continuous Monitoring",
      "definition" : "Ongoing monitoring throughout the mission duration."
    },
    {
      "code" : "ame",
      "display" : "Annual Medical Examination",
      "definition" : "Annual astronaut medical examination period."
    }
  ]
}

```
