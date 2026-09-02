# SANS Assessment Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SANS Assessment Code System**

## CodeSystem: SANS Assessment Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sans-assessment-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SANSAssessmentCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SANSAssessmentVS](ValueSet-sans-assessment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sans-assessment-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sans-assessment-cs",
  "version" : "0.7.0",
  "name" : "SANSAssessmentCS",
  "title" : "SANS Assessment Code System",
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
  "description" : "Parameters for Spaceflight-Associated Neuro-ocular Syndrome assessment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
