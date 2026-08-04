# Joint Assessment Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Joint Assessment Code System**

## CodeSystem: Joint Assessment Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/joint-assessment-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:JointAssessmentCS |

 
Parameters for ultrasound-based joint health assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joint-assessment-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/joint-assessment-cs",
  "version" : "0.6.2",
  "name" : "JointAssessmentCS",
  "title" : "Joint Assessment Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
