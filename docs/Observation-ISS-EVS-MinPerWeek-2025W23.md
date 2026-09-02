# ISS EVS Minutes per Week - Week 23 2025 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS EVS Minutes per Week - Week 23 2025**

## Example Observation: ISS EVS Minutes per Week - Week 23 2025

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**Derived From Activity Group**: [Observation Physical activity panel](Observation-ISS-T2-Run-Group-001.md)

**status**: Final

**category**: Activity

**code**: Frequency of moderate to vigorous aerobic physical activity

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-02 00:00:00+0000 --> 2025-06-09 00:00:00+0000

**value**: 420 min/wk(Details: UCUM codemin/wk = 'min/wk')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-EVS-MinPerWeek-2025W23",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-evs-minutes-per-week"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/ISS-Exp75-InFlight"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/derived-from-group",
      "valueReference" : {
        "reference" : "Observation/ISS-T2-Run-Group-001"
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "activity",
          "display" : "Activity"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "82290-8",
        "display" : "Frequency of moderate to vigorous aerobic physical activity"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2025-06-02T00:00:00Z",
    "end" : "2025-06-09T00:00:00Z"
  },
  "valueQuantity" : {
    "value" : 420,
    "unit" : "min/wk",
    "system" : "http://unitsofmeasure.org",
    "code" : "min/wk"
  }
}

```
