# ISS Cognitive Readiness - Post-Anomaly - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Cognitive Readiness - Post-Anomaly**

## Example Observation: ISS Cognitive Readiness - Post-Anomaly

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

**status**: Final

**category**: Psychological assessment

**code**: Cognitive readiness

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-20 15:30:00+0000

**value**: 7.5 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-CognitiveReadiness-PostAnomaly",
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
        "code" : "cognitive-readiness",
        "display" : "Cognitive readiness"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-20T15:30:00Z",
  "valueQuantity" : {
    "value" : 7.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  }
}

```
