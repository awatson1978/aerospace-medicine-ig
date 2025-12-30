# Psychological Countermeasure Activity - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Psychological Countermeasure Activity**

## Resource Profile: Psychological Countermeasure Activity 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/psychological-countermeasure-activity | *Version*:0.5.4 |
| Active as of 2025-12-29 | *Computable Name*:PsychologicalCountermeasureActivity |

 
Documentation of psychological countermeasure interventions for behavioral health in aerospace missions. 

**Usages:**

* Examples for this Profile: [Procedure/ISS-BrightLightTherapy-Week8](Procedure-ISS-BrightLightTherapy-Week8.md), [Procedure/ISS-CBT-Session-Week12](Procedure-ISS-CBT-Session-Week12.md), [Procedure/ISS-CrewDebrief-PostAnomaly](Procedure-ISS-CrewDebrief-PostAnomaly.md) and [Procedure/ISS-GuidedMeditation-Daily](Procedure-ISS-GuidedMeditation-Daily.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/psychological-countermeasure-activity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-psychological-countermeasure-activity.csv), [Excel](StructureDefinition-psychological-countermeasure-activity.xlsx), [Schematron](StructureDefinition-psychological-countermeasure-activity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "psychological-countermeasure-activity",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/psychological-countermeasure-activity",
  "version" : "0.5.4",
  "name" : "PsychologicalCountermeasureActivity",
  "title" : "Psychological Countermeasure Activity",
  "status" : "active",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Documentation of psychological countermeasure interventions for behavioral health in aerospace missions.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:missionContext",
        "path" : "Procedure.extension",
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
        ]
      },
      {
        "id" : "Procedure.extension:isolationRisk",
        "path" : "Procedure.extension",
        "sliceName" : "isolationRisk",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/event-status"
        }
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "min" : 1,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/stress-countermeasures-vs"
        }
      },
      {
        "id" : "Procedure.subject.reference",
        "path" : "Procedure.subject.reference",
        "min" : 1
      },
      {
        "id" : "Procedure.reasonCode",
        "path" : "Procedure.reasonCode",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/behavioral-health-metrics-vs"
        }
      },
      {
        "id" : "Procedure.reasonReference",
        "path" : "Procedure.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Observation",
              "http://hl7.org/fhir/StructureDefinition/Condition",
              "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.outcome",
        "path" : "Procedure.outcome",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/behavioral-health-metrics-vs"
        }
      }
    ]
  }
}

```
