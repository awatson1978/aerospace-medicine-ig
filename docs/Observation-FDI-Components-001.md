# FDI Observation with All Components - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FDI Observation with All Components**

## Example Observation: FDI Observation with All Components

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Flow Directionality Index Observation](StructureDefinition-flow-directionality-index-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**status**: Final

**category**: Exam

**code**: Flow Directionality Index

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-09-05 10:33:00+0000

**value**: 0.85 ratio(Details: UCUM code{ratio} = '{ratio}')

> **component****code**:Forward Flow Time**value**: 4.2 s(Details: UCUM codes = 's')

> **component****code**:Retrograde Flow Time**value**: 0.3 s(Details: UCUM codes = 's')

> **component****code**:Zero Flow Time**value**: 0.5 s(Details: UCUM codes = 's')

> **component****code**:Total Sample Time**value**: 5 s(Details: UCUM codes = 's')

> **component****code**:FDI Ratio**value**: 0.85 ratio(Details: UCUM code{ratio} = '{ratio}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FDI-Components-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flow-directionality-index-observation"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/gravity-context-cs",
            "code" : "microgravity",
            "display" : "Microgravity"
          }
        ]
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11042-7",
        "display" : "Flow velocity Doppler.max Blood vessel"
      }
    ],
    "text" : "Flow Directionality Index"
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-09-05T10:33:00Z",
  "valueQuantity" : {
    "value" : 0.85,
    "unit" : "ratio",
    "system" : "http://unitsofmeasure.org",
    "code" : "{ratio}"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "forward-flow-time",
            "display" : "Forward Flow Time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 4.2,
        "unit" : "s",
        "system" : "http://unitsofmeasure.org",
        "code" : "s"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "retrograde-flow-time",
            "display" : "Retrograde Flow Time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.3,
        "unit" : "s",
        "system" : "http://unitsofmeasure.org",
        "code" : "s"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "zero-flow-time",
            "display" : "Zero Flow Time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.5,
        "unit" : "s",
        "system" : "http://unitsofmeasure.org",
        "code" : "s"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "total-sample-time",
            "display" : "Total Sample Time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 5,
        "unit" : "s",
        "system" : "http://unitsofmeasure.org",
        "code" : "s"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "fdi-ratio",
            "display" : "FDI Ratio"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.85,
        "unit" : "ratio",
        "system" : "http://unitsofmeasure.org",
        "code" : "{ratio}"
      }
    }
  ]
}

```
