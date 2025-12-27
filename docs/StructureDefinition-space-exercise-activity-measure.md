# Space Exercise Activity Measure - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Activity Measure**

## Resource Profile: Space Exercise Activity Measure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-measure | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:SpaceExerciseActivityMeasure |

 
Individual exercise measurement (duration, intensity, heart rate, power output) for space-based physical activity 

**Usages:**

* Refer to this Profile: [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md)
* Examples for this Profile: [Observation/ISS-T2-Run-Duration-001](Observation-ISS-T2-Run-Duration-001.md), [Observation/ISS-T2-Run-MeanHR-001](Observation-ISS-T2-Run-MeanHR-001.md) and [Observation/ISS-T2-Run-Type-001](Observation-ISS-T2-Run-Type-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-exercise-activity-measure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-exercise-activity-measure.csv), [Excel](StructureDefinition-space-exercise-activity-measure.xlsx), [Schematron](StructureDefinition-space-exercise-activity-measure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-exercise-activity-measure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-measure",
  "version" : "0.5.0",
  "name" : "SpaceExerciseActivityMeasure",
  "title" : "Space Exercise Activity Measure",
  "status" : "active",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Individual exercise measurement (duration, intensity, heart rate, power output) for space-based physical activity",
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
        "short" : "Links measurement to specific mission",
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
        }
      },
      {
        "id" : "Observation.code.coding:basePA",
        "path" : "Observation.code.coding",
        "sliceName" : "basePA",
        "short" : "Physical activity measurement type (LOINC or PA temp codes)",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:spaceModality",
        "path" : "Observation.code.coding",
        "sliceName" : "spaceModality",
        "short" : "Space-specific exercise modality",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:spaceModality.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "patternUri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs"
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
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:performanceMetric",
        "path" : "Observation.component",
        "sliceName" : "performanceMetric",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:performanceMetric.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/space-performance-metric-vs"
        }
      },
      {
        "id" : "Observation.component:performanceMetric.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
