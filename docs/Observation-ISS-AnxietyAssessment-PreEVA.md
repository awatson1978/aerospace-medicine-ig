# ISS Anxiety Assessment - Pre-EVA - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Anxiety Assessment - Pre-EVA**

## Example Observation: ISS Anxiety Assessment - Pre-EVA

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Psychological assessment

**code**: Anxiety level

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-15 08:00:00+0000

**value**: 6 {score}(Details: UCUM code{score} = '{score}')

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | R-R interval.standard deviation (Heart rate variability) | 32 ms(Details: UCUM codems = 'ms') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-AnxietyAssessment-PreEVA",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/behavioral-health-state"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "55467-8",
          "display" : "Psychological assessment"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "anxiety-level",
        "display" : "Anxiety level"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-06-15T08:00:00Z",
  "valueQuantity" : {
    "value" : 6,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "80404-7",
            "display" : "R-R interval.standard deviation (Heart rate variability)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 32,
        "unit" : "ms",
        "system" : "http://unitsofmeasure.org",
        "code" : "ms"
      }
    }
  ]
}

```
