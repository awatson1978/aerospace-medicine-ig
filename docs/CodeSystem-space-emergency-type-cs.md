# Space Emergency Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Emergency Type Code System**

## CodeSystem: Space Emergency Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-emergency-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceEmergencyTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of emergency situations during spaceflight operations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceEmergencyTypeVS](ValueSet-space-emergency-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-emergency-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-emergency-type-cs",
  "version" : "0.7.0",
  "name" : "SpaceEmergencyTypeCS",
  "title" : "Space Emergency Type Code System",
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
  "description" : "Types of emergency situations during spaceflight operations",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "rapid-depress",
      "display" : "Rapid Depressurization",
      "definition" : "Loss of cabin pressure requiring immediate response"
    },
    {
      "code" : "fire-onboard",
      "display" : "Fire Onboard",
      "definition" : "Fire or combustion event in the spacecraft"
    },
    {
      "code" : "toxic-atmosphere",
      "display" : "Toxic Atmosphere",
      "definition" : "Contamination of cabin atmosphere with toxic substances"
    },
    {
      "code" : "medical-emergency",
      "display" : "Medical Emergency",
      "definition" : "Crew medical emergency requiring evacuation or advanced care"
    },
    {
      "code" : "vehicle-malfunction",
      "display" : "Vehicle Malfunction",
      "definition" : "Critical spacecraft systems failure"
    },
    {
      "code" : "collision-debris",
      "display" : "Collision/Debris",
      "definition" : "Collision with orbital debris or micrometeorite impact"
    },
    {
      "code" : "abort-launch",
      "display" : "Launch Abort",
      "definition" : "Emergency abort during launch or ascent phase"
    },
    {
      "code" : "abort-entry",
      "display" : "Entry Abort",
      "definition" : "Emergency abort during atmospheric entry"
    }
  ]
}

```
