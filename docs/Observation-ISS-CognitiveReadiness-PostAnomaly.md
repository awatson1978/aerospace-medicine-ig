# ISS Cognitive Readiness - Post-Anomaly - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Cognitive Readiness - Post-Anomaly**

## Example Observation: ISS Cognitive Readiness - Post-Anomaly

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Psychological assessment

**code**: Cognitive readiness

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-20 15:30:00+0000

**value**: 7.5 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-CognitiveReadiness-PostAnomaly",
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
        "code" : "cognitive-readiness",
        "display" : "Cognitive readiness"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-06-20T15:30:00Z",
  "valueQuantity" : {
    "value" : 7.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
