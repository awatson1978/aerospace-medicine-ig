# Space ECG Observation - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space ECG Observation**

## Resource Profile: Space ECG Observation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-ecg-observation | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceECGObservation |

 
Electrocardiogram observation during spaceflight for cardiac arrhythmia monitoring 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-ecg-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-ecg-observation.csv), [Excel](StructureDefinition-space-ecg-observation.xlsx), [Schematron](StructureDefinition-space-ecg-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-ecg-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-ecg-observation",
  "version" : "0.6.0",
  "name" : "SpaceECGObservation",
  "title" : "Space ECG Observation",
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
  "description" : "Electrocardiogram observation during spaceflight for cardiac arrhythmia monitoring",
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
        "id" : "Observation.extension:flightDay",
        "path" : "Observation.extension",
        "sliceName" : "flightDay",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/flight-day"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:gravityContext",
        "path" : "Observation.extension",
        "sliceName" : "gravityContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context"
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
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "ECG observation",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "34534-8",
              "display" : "EKG 12 channel panel"
            }
          ]
        },
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
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Arrhythmia classification or ECG interpretation",
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
        }
      },
      {
        "id" : "Observation.component:heartRate",
        "path" : "Observation.component",
        "sliceName" : "heartRate",
        "short" : "Heart rate in beats per minute",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:heartRate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:heartRate.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:heartRate.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:heartRate.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "/min"
      },
      {
        "id" : "Observation.component:qtInterval",
        "path" : "Observation.component",
        "sliceName" : "qtInterval",
        "short" : "QT interval in milliseconds",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:qtInterval.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs",
              "code" : "qt-interval",
              "display" : "QT Interval"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:qtInterval.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:qtInterval.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:qtInterval.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ms"
      },
      {
        "id" : "Observation.component:qtcInterval",
        "path" : "Observation.component",
        "sliceName" : "qtcInterval",
        "short" : "Corrected QT interval in milliseconds",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:qtcInterval.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs",
              "code" : "qtc-interval",
              "display" : "Corrected QT Interval (QTc)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:qtcInterval.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:qtcInterval.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:qtcInterval.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ms"
      },
      {
        "id" : "Observation.component:prInterval",
        "path" : "Observation.component",
        "sliceName" : "prInterval",
        "short" : "PR interval in milliseconds",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:prInterval.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs",
              "code" : "pr-interval",
              "display" : "PR Interval"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:prInterval.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:prInterval.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:prInterval.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ms"
      },
      {
        "id" : "Observation.component:qrsDuration",
        "path" : "Observation.component",
        "sliceName" : "qrsDuration",
        "short" : "QRS duration in milliseconds",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:qrsDuration.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs",
              "code" : "qrs-duration",
              "display" : "QRS Duration"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:qrsDuration.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:qrsDuration.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:qrsDuration.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ms"
      }
    ]
  }
}

```
