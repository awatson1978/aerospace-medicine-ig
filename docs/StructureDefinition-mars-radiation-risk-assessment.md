# Mars Radiation Risk Assessment - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Radiation Risk Assessment**

## Resource Profile: Mars Radiation Risk Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mars-radiation-risk-assessment | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:MarsRadiationRiskAssessment |

 
Radiation exposure risk assessment for long-duration deep space missions 

**Usages:**

* Examples for this Profile: [RiskAssessment/RadiationRisk-PostTransit](RiskAssessment-RadiationRisk-PostTransit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mars-radiation-risk-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mars-radiation-risk-assessment.csv), [Excel](StructureDefinition-mars-radiation-risk-assessment.xlsx), [Schematron](StructureDefinition-mars-radiation-risk-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mars-radiation-risk-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mars-radiation-risk-assessment",
  "version" : "0.5.5",
  "name" : "MarsRadiationRiskAssessment",
  "title" : "Mars Radiation Risk Assessment",
  "status" : "active",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Radiation exposure risk assessment for long-duration deep space missions",
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
        "id" : "RiskAssessment.status",
        "path" : "RiskAssessment.status",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.code",
        "path" : "RiskAssessment.code",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.code.text",
        "path" : "RiskAssessment.code.text",
        "patternString" : "Radiation Exposure Risk Assessment"
      },
      {
        "id" : "RiskAssessment.subject",
        "path" : "RiskAssessment.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.basis",
        "path" : "RiskAssessment.basis",
        "short" : "References cumulative radiation dose Observations",
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
        "short" : "Predicted outcomes (cancer risk, CNS effects, etc.)",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.prediction.probability[x]",
        "path" : "RiskAssessment.prediction.probability[x]",
        "mustSupport" : true
      },
      {
        "id" : "RiskAssessment.mitigation",
        "path" : "RiskAssessment.mitigation",
        "short" : "Risk mitigation strategies (shielding, timeline adjustments, countermeasures)",
        "mustSupport" : true
      }
    ]
  }
}

```
