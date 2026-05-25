# Space CGM Observation - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space CGM Observation**

## Resource Profile: Space CGM Observation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-observation | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceCGMObservation |

 
Continuous glucose monitoring observation during spaceflight 

**Usages:**

* Refer to this Profile: [Space CGM Summary Report](StructureDefinition-space-cgm-summary.md)
* Examples for this Profile: [Observation/CGM-Reading-FD15](Observation-CGM-Reading-FD15.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-cgm-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-cgm-observation.csv), [Excel](StructureDefinition-space-cgm-observation.xlsx), [Schematron](StructureDefinition-space-cgm-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-cgm-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-observation",
  "version" : "0.6.0",
  "name" : "SpaceCGMObservation",
  "title" : "Space CGM Observation",
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
  "description" : "Continuous glucose monitoring observation during spaceflight",
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
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "99504-3",
              "display" : "Glucose [Mass/volume] in Interstitial fluid"
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Interstitial glucose level in mg/dL",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "patternCode" : "mg/dL"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-device"
            ]
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
        }
      },
      {
        "id" : "Observation.component:timeInRange",
        "path" : "Observation.component",
        "sliceName" : "timeInRange",
        "short" : "Percentage of time in target glucose range",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:timeInRange.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
              "code" : "time-in-range",
              "display" : "Time in Range (TIR)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:timeInRange.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:timeInRange.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:timeInRange.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:glucoseVariability",
        "path" : "Observation.component",
        "sliceName" : "glucoseVariability",
        "short" : "Coefficient of variation of glucose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:glucoseVariability.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
              "code" : "glucose-variability-cv",
              "display" : "Glucose Variability (CV%)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:glucoseVariability.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:glucoseVariability.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:glucoseVariability.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:meanGlucose",
        "path" : "Observation.component",
        "sliceName" : "meanGlucose",
        "short" : "Mean glucose over reporting period",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:meanGlucose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
              "code" : "mean-glucose",
              "display" : "Mean Glucose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:meanGlucose.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:meanGlucose.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:meanGlucose.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mg/dL"
      },
      {
        "id" : "Observation.component:hypoEvents",
        "path" : "Observation.component",
        "sliceName" : "hypoEvents",
        "short" : "Number of hypoglycemic events",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:hypoEvents.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
              "code" : "hypo-events",
              "display" : "Hypoglycemic Events"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:hypoEvents.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Observation.component:hyperEvents",
        "path" : "Observation.component",
        "sliceName" : "hyperEvents",
        "short" : "Number of hyperglycemic events",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:hyperEvents.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-metrics-cs",
              "code" : "hyper-events",
              "display" : "Hyperglycemic Events"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:hyperEvents.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
