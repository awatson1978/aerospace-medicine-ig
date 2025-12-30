# ISS Isolation Factor - Interpersonal Friction - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Isolation Factor - Interpersonal Friction**

## Example Observation: ISS Isolation Factor - Interpersonal Friction

**status**: Final

**category**: Survey

**code**: Interpersonal friction

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-10 14:00:00+0000

**value**: 6 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-IsolationFactor-InterpersonalFriction",
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
        "code" : "interpersonal-friction",
        "display" : "Interpersonal friction"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-10T14:00:00Z",
  "valueQuantity" : {
    "value" : 6,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
