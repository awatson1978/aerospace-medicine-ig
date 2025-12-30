# ISS Anxiety Assessment - Pre-EVA - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Anxiety Assessment - Pre-EVA**

## Example Observation: ISS Anxiety Assessment - Pre-EVA

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

**status**: Final

**category**: Psychological assessment

**code**: Anxiety level

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-15 08:00:00+0000

**value**: 6 {score}(Details: UCUM code{score} = '{score}')

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Heart rate variability (ms) | 32 ms(Details: UCUM codems = 'ms') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-AnxietyAssessment-PreEVA",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/behavioral-health-state"
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
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "anxiety-level",
        "display" : "Anxiety level"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
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
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
            "code" : "hrv-ms"
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
