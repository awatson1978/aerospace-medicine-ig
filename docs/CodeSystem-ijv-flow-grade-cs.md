# IJV Flow Grade Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IJV Flow Grade Code System**

## CodeSystem: IJV Flow Grade Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/ijv-flow-grade-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:IJVFlowGradeCS |

 
Internal jugular vein flow grading system based on spectral pulse-wave Doppler assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IJVFlowGradeVS](ValueSet-ijv-flow-grade-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ijv-flow-grade-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/ijv-flow-grade-cs",
  "version" : "0.6.0",
  "name" : "IJVFlowGradeCS",
  "title" : "IJV Flow Grade Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Internal jugular vein flow grading system based on spectral pulse-wave Doppler assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "grade-1",
      "display" : "Grade 1 - Forward Flow",
      "definition" : "Continuous forward flow in the internal jugular vein (FDI ~ 1.0)"
    },
    {
      "code" : "grade-2",
      "display" : "Grade 2 - Intermittent No-Flow",
      "definition" : "Forward flow with intermittent periods of no flow (FDI ~ 0.65)"
    },
    {
      "code" : "grade-3",
      "display" : "Grade 3 - Stagnant Flow",
      "definition" : "Stagnant flow with minimal or no net movement (FDI ~ 0.03)"
    },
    {
      "code" : "grade-4",
      "display" : "Grade 4 - Retrograde Flow",
      "definition" : "Reversed flow direction in the internal jugular vein (FDI ~ -0.5)"
    }
  ]
}

```
