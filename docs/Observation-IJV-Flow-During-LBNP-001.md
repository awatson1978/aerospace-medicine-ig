# IJV Flow During LBNP (FDI = 0.85) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IJV Flow During LBNP (FDI = 0.85)**

## Example Observation: IJV Flow During LBNP (FDI = 0.85)

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**LBNP Pressure Level**: -30 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

**status**: Final

**category**: Exam

**code**: IJV Flow Assessment

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-09-05 10:32:00+0000

**value**: Grade 1 - Forward Flow

**bodySite**: Right Internal Jugular Vein

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Flow Directionality Index | 0.85 ratio(Details: UCUM code{ratio} = '{ratio}') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IJV-Flow-During-LBNP-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/internal-jugular-vein-flow-observation"
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
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lbnp-pressure-level",
      "valueQuantity" : {
        "value" : -30,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
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
    "text" : "IJV Flow Assessment"
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-09-05T10:32:00Z",
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/ijv-flow-grade-cs",
        "code" : "grade-1",
        "display" : "Grade 1 - Forward Flow"
      }
    ]
  },
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "244403000",
        "display" : "Internal jugular vein structure"
      }
    ],
    "text" : "Right Internal Jugular Vein"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/venous-flow-metric-cs",
            "code" : "fdi-ratio",
            "display" : "Flow Directionality Index"
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
