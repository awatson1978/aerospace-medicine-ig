# Mission Context - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Context**

## Extension: Mission Context 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:MissionContext |

Links radiation exposure to specific space missions

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md), [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md), [Hydration Status Observation](StructureDefinition-hydration-status-observation.md), [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)...Show 6 more,[Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md),[Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md),[Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md),[Space Exercise Session](StructureDefinition-space-exercise-session.md),[Space Nutrition Intake](StructureDefinition-space-nutrition-intake.md)and[Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)
* Examples for this Extension: [Observation/ISS-EVS-MinPerWeek-2025W23](Observation-ISS-EVS-MinPerWeek-2025W23.md), [Observation/ISS-StressBurden-Day180](Observation-ISS-StressBurden-Day180.md), [Observation/ISS-StressBurden-Day90](Observation-ISS-StressBurden-Day90.md), [Observation/ISS-T2-Run-Group-001](Observation-ISS-T2-Run-Group-001.md)...Show 5 more,[Procedure/ISS-BrightLightTherapy-Week8](Procedure-ISS-BrightLightTherapy-Week8.md),[Procedure/ISS-CBT-Session-Week12](Procedure-ISS-CBT-Session-Week12.md),[Procedure/ISS-CrewDebrief-PostAnomaly](Procedure-ISS-CrewDebrief-PostAnomaly.md),[Procedure/ISS-Exercise-Session-Proc-001](Procedure-ISS-Exercise-Session-Proc-001.md)and[Procedure/ISS-GuidedMeditation-Daily](Procedure-ISS-GuidedMeditation-Daily.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mission-context)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mission-context.csv), [Excel](StructureDefinition-mission-context.xlsx), [Schematron](StructureDefinition-mission-context.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mission-context",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
  "version" : "0.4.2",
  "name" : "MissionContext",
  "title" : "Mission Context",
  "status" : "active",
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Links radiation exposure to specific space missions",
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
        "short" : "Mission Context",
        "definition" : "Links radiation exposure to specific space missions"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Reference to the space mission encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter"]
          }
        ]
      }
    ]
  }
}

```
