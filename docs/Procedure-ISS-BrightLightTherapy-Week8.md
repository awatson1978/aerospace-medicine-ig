# ISS Bright Light Therapy - Mission Week 8 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Bright Light Therapy - Mission Week 8**

## Example Procedure: ISS Bright Light Therapy - Mission Week 8

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Bright light therapy

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2025-05-15 07:00:00+0000

**reasonCode**: Circadian drift, Sleep quality

**outcome**: Sleep quality



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-BrightLightTherapy-Week8",
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
        "code" : "bright-light-therapy",
        "display" : "Bright light therapy"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedDateTime" : "2025-05-15T07:00:00Z",
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isolation-syndrome-factor-cs",
          "code" : "circadian-drift",
          "display" : "Circadian drift"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "sleep-quality",
          "display" : "Sleep quality"
        }
      ]
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "sleep-quality",
        "display" : "Sleep quality"
      }
    ]
  }
}

```
