# Flow Directionality Index Observation - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Flow Directionality Index Observation**

## Resource Profile: Flow Directionality Index Observation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/flow-directionality-index-observation | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:FlowDirectionalityIndexObservation |

 
FDI calculation with component times: FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total). Range [-1, 1]. 

**Usages:**

* Examples for this Profile: [Observation/FDI-Components-001](Observation-FDI-Components-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/flow-directionality-index-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-flow-directionality-index-observation.csv), [Excel](StructureDefinition-flow-directionality-index-observation.xlsx), [Schematron](StructureDefinition-flow-directionality-index-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "flow-directionality-index-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flow-directionality-index-observation",
  "version" : "0.6.0",
  "name" : "FlowDirectionalityIndexObservation",
  "title" : "Flow Directionality Index Observation",
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
  "description" : "FDI calculation with component times: FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total). Range [-1, 1].",
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
        "short" : "Flow Directionality Index",
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
        "short" : "FDI ratio value (-1 to 1)",
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
        "patternCode" : "{ratio}"
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
        "id" : "Observation.component:forwardFlowTime",
        "path" : "Observation.component",
        "sliceName" : "forwardFlowTime",
        "short" : "Duration of forward flow",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:forwardFlowTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP6960-1",
              "display" : "Time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:forwardFlowTime.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Forward Flow Time"
      },
      {
        "id" : "Observation.component:forwardFlowTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:forwardFlowTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:forwardFlowTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "s"
      },
      {
        "id" : "Observation.component:retrogradeFlowTime",
        "path" : "Observation.component",
        "sliceName" : "retrogradeFlowTime",
        "short" : "Duration of retrograde flow",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:retrogradeFlowTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP6960-1",
              "display" : "Time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:retrogradeFlowTime.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Retrograde Flow Time"
      },
      {
        "id" : "Observation.component:retrogradeFlowTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:retrogradeFlowTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:retrogradeFlowTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "s"
      },
      {
        "id" : "Observation.component:zeroFlowTime",
        "path" : "Observation.component",
        "sliceName" : "zeroFlowTime",
        "short" : "Duration of zero/stagnant flow",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:zeroFlowTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP6960-1",
              "display" : "Time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:zeroFlowTime.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Zero Flow Time"
      },
      {
        "id" : "Observation.component:zeroFlowTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:zeroFlowTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:zeroFlowTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "s"
      },
      {
        "id" : "Observation.component:totalSampleTime",
        "path" : "Observation.component",
        "sliceName" : "totalSampleTime",
        "short" : "Total Doppler sample time",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:totalSampleTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP6960-1",
              "display" : "Time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:totalSampleTime.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Total Sample Time"
      },
      {
        "id" : "Observation.component:totalSampleTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:totalSampleTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:totalSampleTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "s"
      },
      {
        "id" : "Observation.component:fdiRatio",
        "path" : "Observation.component",
        "sliceName" : "fdiRatio",
        "short" : "Calculated FDI ratio",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:fdiRatio.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP74840-2",
              "display" : "Flow velocity"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:fdiRatio.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "FDI Ratio"
      },
      {
        "id" : "Observation.component:fdiRatio.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:fdiRatio.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:fdiRatio.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "{ratio}"
      }
    ]
  }
}

```
