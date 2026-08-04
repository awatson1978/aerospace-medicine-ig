# Mission Phase - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Phase**

## Extension: Mission Phase 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mission-phase | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:MissionPhase |

Phase of the space mission during which the clinical event occurred

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Antioxidant Biomarker Panel](StructureDefinition-antioxidant-biomarker-panel.md), [ARCHeR Actigraphy Observation](StructureDefinition-archer-actigraphy-observation.md), [BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.md), [Bone Density Observation](StructureDefinition-bone-density-observation.md)...Show 9 more,[Emergency Care Plan](StructureDefinition-emergency-care-plan.md),[Emergency Risk Assessment](StructureDefinition-emergency-risk-assessment.md),[Immune Biomarker Panel](StructureDefinition-immune-biomarker-panel.md),[Multi-Omics Observation](StructureDefinition-multi-omics-observation.md),[Omics Risk Assessment](StructureDefinition-omics-risk-assessment.md),[Personalized Countermeasure Plan](StructureDefinition-personalized-countermeasure-plan.md),[Space Emergency Condition](StructureDefinition-space-emergency-condition.md),[Spaceflight Anemia Panel](StructureDefinition-spaceflight-anemia-panel.md)and[NASA Standard Measures Observation](StructureDefinition-standard-measures-observation.md)
* Examples for this Extension: [CarePlan/PersonalizedPlan-001](CarePlan-PersonalizedPlan-001.md), [Condition/Emergency-RapidDepress-001](Condition-Emergency-RapidDepress-001.md), [Observation/ARCHeR-Actigraphy-FD5](Observation-ARCHeR-Actigraphy-FD5.md), [Observation/BFRT-Quadriceps-CSA-001](Observation-BFRT-Quadriceps-CSA-001.md)...Show 3 more,[Observation/Immune-Panel-PreFlight](Observation-Immune-Panel-PreFlight.md),[Observation/Metabolomics-Observation-001](Observation-Metabolomics-Observation-001.md)and[Observation/Standard-Measures-Grip-PreFlight](Observation-Standard-Measures-Grip-PreFlight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mission-phase)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mission-phase.csv), [Excel](StructureDefinition-mission-phase.xlsx), [Schematron](StructureDefinition-mission-phase.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mission-phase",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase",
  "version" : "0.6.2",
  "name" : "MissionPhase",
  "title" : "Mission Phase",
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
  "description" : "Phase of the space mission during which the clinical event occurred",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    },
    {
      "type" : "element",
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "Condition"
    },
    {
      "type" : "element",
      "expression" : "MedicationAdministration"
    },
    {
      "type" : "element",
      "expression" : "CarePlan"
    },
    {
      "type" : "element",
      "expression" : "RiskAssessment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Mission Phase",
        "definition" : "Phase of the space mission during which the clinical event occurred"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/mission-phase-vs"
        }
      }
    ]
  }
}

```
