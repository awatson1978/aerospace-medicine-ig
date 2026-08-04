# IJV Flow During LBNP (FDI = 0.85) - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IJV Flow During LBNP (FDI = 0.85)**

## Example Observation: IJV Flow During LBNP (FDI = 0.85)

Profile: [Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md)

**Gravity Context**: Microgravity

**LBNP Pressure Level**: -30 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

**status**: Final

**category**: Exam

**code**: IJV Flow Assessment

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-09-05 10:32:00+0000

**value**: Grade 1 - Forward Flow

**bodySite**: Right Internal Jugular Vein

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Flow velocity | 0.85 ratio(Details: UCUM code{ratio} = '{ratio}') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IJV-Flow-During-LBNP-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/internal-jugular-vein-flow-observation"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
            "code" : "microgravity",
            "display" : "Microgravity"
          }
        ]
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/lbnp-pressure-level",
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/ijv-flow-grade-cs",
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
            "system" : "http://loinc.org",
            "code" : "LP74840-2",
            "display" : "Flow velocity"
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
