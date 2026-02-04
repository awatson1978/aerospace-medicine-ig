# NASA Mission Phase Timing - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Mission Phase Timing**

## CodeSystem: NASA Mission Phase Timing 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs | *Version*:0.5.9 |
| Active as of 2026-02-04 | *Computable Name*:NASAMissionPhaseCS |

 
Mission phases and timing codes for medical requirements scheduling. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAMissionPhaseVS](ValueSet-nasa-mission-phase-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-mission-phase-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs",
  "version" : "0.5.9",
  "name" : "NASAMissionPhaseCS",
  "title" : "NASA Mission Phase Timing",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-04T10:26:00-06:00",
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
