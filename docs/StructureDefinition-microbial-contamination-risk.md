# Microbial Contamination Risk - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microbial Contamination Risk**

## Resource Profile: Microbial Contamination Risk 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/microbial-contamination-risk | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:MicrobialContaminationRisk |

 
Forward contamination risk prediction for planetary protection compliance 

**Usages:**

* Examples for this Profile: [RiskAssessment/ContaminationRisk-MarsLander-001](RiskAssessment-ContaminationRisk-MarsLander-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/microbial-contamination-risk)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbial-contamination-risk.csv), [Excel](StructureDefinition-microbial-contamination-risk.xlsx), [Schematron](StructureDefinition-microbial-contamination-risk.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbial-contamination-risk",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/microbial-contamination-risk",
  "version" : "0.6.2",
  "name" : "MicrobialContaminationRisk",
  "title" : "Microbial Contamination Risk",
  "status" : "active",
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
  "description" : "Forward contamination risk prediction for planetary protection compliance",
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
        "id" : "RiskAssessment.extension:planetaryProtectionCategory",
        "path" : "RiskAssessment.extension",
        "sliceName" : "planetaryProtectionCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category"
            ]
          }
        ],
        "mustSupport" : true
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
        "short" : "Mission, spacecraft, or landing site",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.basis",
        "path" : "RiskAssessment.basis",
        "short" : "Basis data (bioburden assays, environmental surveys)",
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
        "short" : "Predicted contamination type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/microbial-contaminant-type-vs"
        }
      },
      {
        "id" : "RiskAssessment.prediction.probability[x]",
        "path" : "RiskAssessment.prediction.probability[x]",
        "short" : "Probability of forward contamination (0.0-1.0)",
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
        "short" : "Recommended sterilization or containment measures",
        "mustSupport" : true
      }
    ]
  }
}

```
