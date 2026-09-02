# Artemis IV Mission Plan - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis IV Mission Plan**

## PlanDefinition: Artemis IV Mission Plan 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/PlanDefinition/Artemis-IV-Mission-Plan | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*: |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Artemis IV mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration. 

* **Actions:**: **Url:**
  * : [Artemis IV Mission Plan - First Crewed Lunar South Pole Landing](PlanDefinition-Artemis-IV-Mission-Plan.md)
* **Actions:**: **Version:**
  * : 0.7.0
* **Actions:**: **Title:**
  * : Artemis IV Mission Plan - First Crewed Lunar South Pole Landing
* **Actions:**: **Date:**
  * : 2026-09-02 13:24:45-0500
* **Actions:**: **Publisher:**
  * : MITRE
* **Actions:**: **Description:**
  * : Artemis IV mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration.
* **Actions:**: **Copyright:**
  * : Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "Artemis-IV-Mission-Plan",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-plan"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-IV-Mission"
      }
    }
  ],
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/PlanDefinition/Artemis-IV-Mission-Plan",
  "version" : "0.7.0",
  "title" : "Artemis IV Mission Plan - First Crewed Lunar South Pole Landing",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
        "code" : "workflow-definition",
        "display" : "Workflow Definition"
      }
    ]
  },
  "status" : "active",
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
  "description" : "Artemis IV mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
