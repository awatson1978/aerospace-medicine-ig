# SANS Assessment Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SANS Assessment Code System**

## CodeSystem: SANS Assessment Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SANSAssessmentCS |

 
Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SANSAssessmentVS](ValueSet-sans-assessment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sans-assessment-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
  "version" : "0.6.0",
  "name" : "SANSAssessmentCS",
  "title" : "SANS Assessment Code System",
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
  "description" : "Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "optic-disc-edema-grade",
      "display" : "Optic Disc Edema Grade",
      "definition" : "Frisen scale grade of optic disc edema"
    },
    {
      "code" : "globe-flattening",
      "display" : "Globe Flattening",
      "definition" : "Posterior globe flattening measured on MRI or OCT"
    },
    {
      "code" : "choroidal-folds-present",
      "display" : "Choroidal Folds",
      "definition" : "Presence and severity of choroidal folds"
    },
    {
      "code" : "icp-estimate",
      "display" : "Intracranial Pressure Estimate",
      "definition" : "Estimated intracranial pressure"
    },
    {
      "code" : "retinal-vessel-density",
      "display" : "Retinal Vessel Density",
      "definition" : "Retinal vascular density measured by OCT-A"
    },
    {
      "code" : "rnfl-thickness",
      "display" : "RNFL Thickness",
      "definition" : "Retinal nerve fiber layer thickness"
    }
  ]
}

```
