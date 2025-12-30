# Mission Risk Assessment - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Risk Assessment**

## Resource Profile: Mission Risk Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceRiskAssesment | *Version*:0.5.3 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceRiskAssesment |

 
STUB - Risk assessment for space missions. 

**Usages:**

* Examples for this Profile: [RiskAssessment/RiskAssesmentAtmosphere](RiskAssessment-RiskAssesmentAtmosphere.md), [RiskAssessment/RiskAssesmentCalorieRestriction](RiskAssessment-RiskAssesmentCalorieRestriction.md), [RiskAssessment/RiskAssesmentCancer](RiskAssessment-RiskAssesmentCancer.md), [RiskAssessment/RiskAssesmentContamination](RiskAssessment-RiskAssesmentContamination.md)...Show 2 more,[RiskAssessment/RiskAssesmentFlightRisk](RiskAssessment-RiskAssesmentFlightRisk.md)and[RiskAssessment/RiskAssesmentMission](RiskAssessment-RiskAssesmentMission.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceRiskAssesment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceRiskAssesment.csv), [Excel](StructureDefinition-SpaceRiskAssesment.xlsx), [Schematron](StructureDefinition-SpaceRiskAssesment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceRiskAssesment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceRiskAssesment",
  "version" : "0.5.3",
  "name" : "SpaceRiskAssesment",
  "title" : "Mission Risk Assessment",
  "status" : "draft",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "STUB - Risk assessment for space missions.",
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
