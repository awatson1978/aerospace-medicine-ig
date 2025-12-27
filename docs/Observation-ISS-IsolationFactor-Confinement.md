# ISS Isolation Factor - Confinement - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Isolation Factor - Confinement**

## Example Observation: ISS Isolation Factor - Confinement

**status**: Final

**category**: Survey

**code**: Confinement

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 10:00:00+0000

**value**: 7 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-IsolationFactor-Confinement",
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey",
          "display" : "Survey"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs",
        "code" : "confinement",
        "display" : "Confinement"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-01T10:00:00Z",
  "valueQuantity" : {
    "value" : 7,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
