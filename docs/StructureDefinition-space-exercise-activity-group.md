# Space Exercise Activity Group - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Activity Group**

## Resource Profile: Space Exercise Activity Group 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-group | *Version*:0.5.2 |
| Active as of 2025-12-29 | *Computable Name*:SpaceExerciseActivityGroup |

 
Panel observation grouping related exercise measures for a single session (type, duration, intensity, HR) 

**Usages:**

* Examples for this Profile: [Observation/ISS-T2-Run-Group-001](Observation-ISS-T2-Run-Group-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-exercise-activity-group)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-exercise-activity-group.csv), [Excel](StructureDefinition-space-exercise-activity-group.xlsx), [Schematron](StructureDefinition-space-exercise-activity-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-exercise-activity-group",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-group",
  "version" : "0.5.2",
  "name" : "SpaceExerciseActivityGroup",
  "title" : "Space Exercise Activity Group",
  "status" : "active",
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "Panel observation grouping related exercise measures for a single session (type, duration, intensity, HR)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:missionContext",
        "path" : "Observation.extension",
        "sliceName" : "missionContext",
        "short" : "Links activity group to specific mission",
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
        "id" : "Observation.extension:exerciseDevice",
        "path" : "Observation.extension",
        "sliceName" : "exerciseDevice",
        "short" : "Exercise equipment used for this session",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:harnessLoad",
        "path" : "Observation.extension",
        "sliceName" : "harnessLoad",
        "short" : "Harness load percentage (for treadmill)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:activity",
        "path" : "Observation.category",
        "sliceName" : "activity",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "activity",
              "display" : "Activity"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.code.coding:paPanel",
        "path" : "Observation.code.coding",
        "sliceName" : "paPanel",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes",
          "code" : "PAPanel",
          "display" : "Physical activity panel"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.text",
        "path" : "Observation.code.text",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
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
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-measure"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
