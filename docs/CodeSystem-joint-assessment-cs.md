# Joint Assessment Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Joint Assessment Code System**

## CodeSystem: Joint Assessment Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/joint-assessment-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:JointAssessmentCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Parameters for ultrasound-based joint health assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joint-assessment-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/joint-assessment-cs",
  "version" : "0.7.0",
  "name" : "JointAssessmentCS",
  "title" : "Joint Assessment Code System",
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
  "description" : "Parameters for ultrasound-based joint health assessment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "joint-effusion",
      "display" : "Joint Effusion",
      "definition" : "Presence and volume of joint effusion"
    },
    {
      "code" : "cartilage-thickness",
      "display" : "Cartilage Thickness",
      "definition" : "Articular cartilage thickness measurement"
    },
    {
      "code" : "synovial-assessment",
      "display" : "Synovial Assessment",
      "definition" : "Synovial membrane thickness and vascularity"
    }
  ]
}

```
