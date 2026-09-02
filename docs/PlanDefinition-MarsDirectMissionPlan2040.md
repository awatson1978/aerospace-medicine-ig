# Mars Direct Mission Plan 2040 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Direct Mission Plan 2040**

## PlanDefinition: Mars Direct Mission Plan 2040 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/PlanDefinition/MarsDirectMissionPlan2040 | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*: |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Mars Direct architecture mission with ERV pre-deployed, ISRU propellant production for return, crew of 4, 18-month surface operations at Jezero Crater. Mission objectives: demonstrate ISRU viability, conduct extensive geological surveys, collect samples for analysis, validate long-duration Mars surface systems. 

* **Actions:**: **Url:**
  * : [Mars Direct Mission 2040 - Jezero Crater Landing](PlanDefinition-MarsDirectMissionPlan2040.md)
* **Actions:**: **Version:**
  * : 0.7.0
* **Actions:**: **Title:**
  * : Mars Direct Mission 2040 - Jezero Crater Landing
* **Actions:**: **Date:**
  * : 2026-09-02 13:24:45-0500
* **Actions:**: **Publisher:**
  * : MITRE
* **Actions:**: **Description:**
  * : Mars Direct architecture mission with ERV pre-deployed, ISRU propellant production for return, crew of 4, 18-month surface operations at Jezero Crater. Mission objectives: demonstrate ISRU viability, conduct extensive geological surveys, collect samples for analysis, validate long-duration Mars surface systems.
* **Actions:**: **Copyright:**
  * : Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "MarsDirectMissionPlan2040",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-timeline-plan"
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
        "reference" : "Encounter/MarsDirectMission2040"
      }
    }
  ],
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/PlanDefinition/MarsDirectMissionPlan2040",
  "version" : "0.7.0",
  "title" : "Mars Direct Mission 2040 - Jezero Crater Landing",
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
  "description" : "Mars Direct architecture mission with ERV pre-deployed, ISRU propellant production for return, crew of 4, 18-month surface operations at Jezero Crater. Mission objectives: demonstrate ISRU viability, conduct extensive geological surveys, collect samples for analysis, validate long-duration Mars surface systems.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "action" : [
    {
      "title" : "Launch - Earth Return Vehicle (ERV)",
      "description" : "Uncrewed ERV launch with Sabatier reactor, nuclear power unit, hydrogen supply. Target: Mars arrival 6 months later, land at Jezero. Begin ISRU propellant production immediately."
    },
    {
      "title" : "Launch - Crew in Mars Habitat Unit",
      "description" : "Crew of 4 launches 26 months after ERV (once ISRU confirms propellant production). 6-month transit with artificial gravity tether."
    },
    {
      "title" : "Outbound Transit",
      "description" : "6-month deep space cruise. Continuous radiation monitoring, exercise countermeasures, health assessments, crew training for surface operations."
    },
    {
      "title" : "Mars Orbit Insertion and Descent",
      "description" : "Direct entry and landing at Jezero site near pre-positioned ERV. Habitat establishes life support upon landing."
    },
    {
      "title" : "Surface Operations - 18 Months",
      "description" : "Extended surface mission with ~400-500 EVAs total. Geological surveys, sample collection, ISRU monitoring, equipment maintenance, health monitoring. Weekly medical checkups, monthly radiation assessments."
    },
    {
      "title" : "Ascent and Earth Return",
      "description" : "Crew boards fueled ERV, launches from Mars, 6-month return transit. Total mission duration: ~30 months (900 days)."
    },
    {
      "title" : "Earth Atmospheric Entry and Recovery",
      "description" : "ERV capsule atmospheric entry, parachute descent, splashdown in Pacific. Crew medical evaluation and reconditioning."
    }
  ]
}

```
