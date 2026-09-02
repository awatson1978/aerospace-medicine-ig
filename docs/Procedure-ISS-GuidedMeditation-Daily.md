# ISS Guided Meditation - Daily Practice - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Guided Meditation - Daily Practice**

## Example Procedure: ISS Guided Meditation - Daily Practice

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Guided meditation

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2025-06-01 20:00:00+0000

**reasonCode**: Coping capacity



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-GuidedMeditation-Daily",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/psychological-countermeasure-activity"
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
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/psychological-countermeasure-cs",
        "code" : "guided-meditation",
        "display" : "Guided meditation"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedDateTime" : "2025-06-01T20:00:00Z",
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "coping-capacity",
          "display" : "Coping capacity"
        }
      ]
    }
  ]
}

```
