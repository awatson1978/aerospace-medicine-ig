# Mission Risk Assessment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Risk Assessment**

## Resource Profile: Mission Risk Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-risk-assessment | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceRiskAssessment |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Risk assessment for space missions, covering mission-level, oncologic, musculoskeletal and other spaceflight risks. 

**Usages:**

* Examples for this Profile: [RiskAssessment/RiskAssesmentAtmosphere](RiskAssessment-RiskAssesmentAtmosphere.md), [RiskAssessment/RiskAssesmentCalorieRestriction](RiskAssessment-RiskAssesmentCalorieRestriction.md), [RiskAssessment/RiskAssesmentCancer](RiskAssessment-RiskAssesmentCancer.md), [RiskAssessment/RiskAssesmentContamination](RiskAssessment-RiskAssesmentContamination.md)...Show 2 more,[RiskAssessment/RiskAssesmentFlightRisk](RiskAssessment-RiskAssesmentFlightRisk.md)and[RiskAssessment/RiskAssesmentMission](RiskAssessment-RiskAssesmentMission.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-risk-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-risk-assessment.csv), [Excel](StructureDefinition-space-risk-assessment.xlsx), [Schematron](StructureDefinition-space-risk-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-risk-assessment",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-risk-assessment",
  "version" : "0.7.0",
  "name" : "SpaceRiskAssessment",
  "title" : "Mission Risk Assessment",
  "status" : "draft",
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
  "description" : "Risk assessment for space missions, covering mission-level, oncologic, musculoskeletal and other spaceflight risks.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "openehr",
      "uri" : "http://openehr.org",
      "name" : "Open EHR Archetype Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RiskAssessment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RiskAssessment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RiskAssessment",
        "path" : "RiskAssessment"
      }
    ]
  }
}

```
