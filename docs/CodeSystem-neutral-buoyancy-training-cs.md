# Neutral Buoyancy Training Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Training Code System**

## CodeSystem: Neutral Buoyancy Training Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NeutralBuoyancyTrainingCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Specialized codes for neutral buoyancy training activities and assessments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NeutralBuoyancyTrainingActivities](ValueSet-neutral-buoyancy-training-activities-vs.md)
* [UnderwaterTrainingProcedures](ValueSet-underwater-training-procedures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "neutral-buoyancy-training-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
  "version" : "0.7.0",
  "name" : "NeutralBuoyancyTrainingCS",
  "title" : "Neutral Buoyancy Training Code System",
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
  "description" : "Specialized codes for neutral buoyancy training activities and assessments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [
    {
      "code" : "eva-simulation",
      "display" : "EVA Simulation Training",
      "definition" : "Extravehicular activity simulation in neutral buoyancy pool"
    },
    {
      "code" : "tool-manipulation",
      "display" : "Tool Manipulation Training",
      "definition" : "Training for handling tools and equipment in weightless environment"
    },
    {
      "code" : "emergency-egress",
      "display" : "Emergency Egress Training",
      "definition" : "Training for emergency escape procedures from spacecraft"
    },
    {
      "code" : "crew-coordination",
      "display" : "Crew Coordination Training",
      "definition" : "Multi-astronaut coordination and communication training"
    },
    {
      "code" : "equipment-familiarization",
      "display" : "Equipment Familiarization",
      "definition" : "Introduction and practice with space equipment"
    },
    {
      "code" : "communication-training",
      "display" : "Communication Training",
      "definition" : "Training in the use of underwater communication systems and signal protocols"
    },
    {
      "code" : "habitat-construction",
      "display" : "Habitat Construction Training",
      "definition" : "Training for assembly of space habitats and structures"
    },
    {
      "code" : "scientific-sampling",
      "display" : "Scientific Sampling Training",
      "definition" : "Training for geological and biological sample collection"
    },
    {
      "code" : "maintenance-repair",
      "display" : "Maintenance and Repair Training",
      "definition" : "Training for spacecraft and equipment maintenance"
    },
    {
      "code" : "task-completion-time",
      "display" : "Task Completion Time",
      "definition" : "Time required to complete assigned tasks"
    },
    {
      "code" : "movement-efficiency",
      "display" : "Movement Efficiency",
      "definition" : "Assessment of movement and navigation efficiency"
    },
    {
      "code" : "communication-clarity",
      "display" : "Communication Clarity",
      "definition" : "Quality of underwater communication systems"
    },
    {
      "code" : "emergency-response-time",
      "display" : "Emergency Response Time",
      "definition" : "Response time to emergency scenarios"
    },
    {
      "code" : "equipment-handling",
      "display" : "Equipment Handling Proficiency",
      "definition" : "Skill in manipulating tools and equipment"
    },
    {
      "code" : "spatial-orientation",
      "display" : "Spatial Orientation",
      "definition" : "Ability to maintain orientation in 3D environment"
    },
    {
      "code" : "stress-management",
      "display" : "Stress Management",
      "definition" : "Performance under stress and unexpected conditions"
    },
    {
      "code" : "nbl-facility",
      "display" : "Neutral Buoyancy Laboratory",
      "definition" : "NASA's Neutral Buoyancy Laboratory facility"
    },
    {
      "code" : "commercial-facility",
      "display" : "Commercial Training Facility",
      "definition" : "Commercial neutral buoyancy training facility"
    },
    {
      "code" : "open-water",
      "display" : "Open Water Training",
      "definition" : "Training conducted in natural water environments"
    },
    {
      "code" : "saturation-habitat",
      "display" : "Saturation Diving Habitat",
      "definition" : "Underwater habitat for extended training missions"
    }
  ]
}

```
