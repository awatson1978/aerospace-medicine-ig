# Artemis III Mission Plan - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III Mission Plan**

## PlanDefinition: Artemis III Mission Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/PlanDefinition/Artemis-III-Mission-Plan | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*: |

 
Artemis III mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration. 

* **Actions:**: **Url:**
  * : [Artemis III Mission Plan - First Crewed Lunar South Pole Landing](PlanDefinition-Artemis-III-Mission-Plan.md)
* **Actions:**: **Version:**
  * : 0.4.2
* **Actions:**: **Title:**
  * : Artemis III Mission Plan - First Crewed Lunar South Pole Landing
* **Actions:**: **Date:**
  * : 2025-12-24 19:44:53-0700
* **Actions:**: **Publisher:**
  * : MITRE
* **Actions:**: **Description:**
  * : Artemis III mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration.



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "Artemis-III-Mission-Plan",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/mission-plan"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/PlanDefinition/Artemis-III-Mission-Plan",
  "version" : "0.4.2",
  "title" : "Artemis III Mission Plan - First Crewed Lunar South Pole Landing",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
        "code" : "workflow-definition"
      }
    ]
  },
  "status" : "active",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Artemis III mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration.",
  "action" : [
    {
      "title" : "Launch",
      "description" : "SLS launch from Kennedy Space Center with Orion crew vehicle. Target: 2027-09-01, T+0 hours."
    },
    {
      "title" : "Translunar Cruise",
      "description" : "4-day transit from Earth to lunar orbit with health monitoring and radiation dosimetry. Duration: T+10 hours to T+106 hours (4 days)."
    },
    {
      "title" : "Gateway Docking",
      "description" : "Orion docks with Lunar Gateway HALO module. Planned: T+108 hours, duration 2 hours."
    },
    {
      "title" : "HLS Transfer and Descent",
      "description" : "Crew transfers to Starship HLS and descends to Malapert Massif landing site. Planned: Mission day 6, duration 10 hours."
    },
    {
      "title" : "Surface Operations EVA-1",
      "description" : "First lunar surface EVA - site characterization and sample collection. Planned: Mission day 10, duration 6.5 hours."
    },
    {
      "title" : "Surface Operations EVA-2",
      "description" : "Second lunar surface EVA - shadowed crater exploration and ice sampling. Planned: Mission day 12, duration 7 hours."
    },
    {
      "title" : "Ascent and Gateway Rendezvous",
      "description" : "HLS ascent from lunar surface and rendezvous with Gateway. Planned: Mission day 13, duration 10 hours."
    },
    {
      "title" : "Trans-Earth Injection",
      "description" : "Orion departs Gateway for return to Earth. Planned: Mission day 15, duration 30 minutes (propulsive maneuver)."
    },
    {
      "title" : "Splashdown",
      "description" : "Orion splashdown in Pacific Ocean. Planned: Mission day 20, entry interface to splashdown 30 minutes."
    }
  ]
}

```
