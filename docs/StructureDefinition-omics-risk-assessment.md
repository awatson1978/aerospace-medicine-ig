# Omics Risk Assessment - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Omics Risk Assessment**

## Resource Profile: Omics Risk Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/omics-risk-assessment | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:OmicsRiskAssessment |

 
Personalized risk assessment derived from multi-omics molecular profiles 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/omics-risk-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-omics-risk-assessment.csv), [Excel](StructureDefinition-omics-risk-assessment.xlsx), [Schematron](StructureDefinition-omics-risk-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "omics-risk-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/omics-risk-assessment",
  "version" : "0.6.0",
  "name" : "OmicsRiskAssessment",
  "title" : "Omics Risk Assessment",
  "status" : "active",
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
  "description" : "Personalized risk assessment derived from multi-omics molecular profiles",
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
      },
      {
        "id" : "RiskAssessment.extension",
        "path" : "RiskAssessment.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "RiskAssessment.extension:missionContext",
        "path" : "RiskAssessment.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.extension:missionPhase",
        "path" : "RiskAssessment.extension",
        "sliceName" : "missionPhase",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.status",
        "path" : "RiskAssessment.status",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.code",
        "path" : "RiskAssessment.code",
        "short" : "Risk assessment type",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.subject",
        "path" : "RiskAssessment.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.basis",
        "path" : "RiskAssessment.basis",
        "short" : "Multi-omics observations informing this risk assessment",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/multi-omics-observation",
              "http://hl7.org/fhir/StructureDefinition/Observation"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.prediction",
        "path" : "RiskAssessment.prediction",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.prediction.outcome",
        "path" : "RiskAssessment.prediction.outcome",
        "short" : "Predicted health outcome",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.prediction.probability[x]",
        "path" : "RiskAssessment.prediction.probability[x]",
        "short" : "Risk probability (0.0-1.0)",
        "type" : [
          {
            "code" : "decimal"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.mitigation",
        "path" : "RiskAssessment.mitigation",
        "short" : "Recommended personalized countermeasures",
        "mustSupport" : true
      }
    ]
  }
}

```
