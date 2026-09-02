# ISS Crew Debrief - Post-Anomaly - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Crew Debrief - Post-Anomaly**

## Example Procedure: ISS Crew Debrief - Post-Anomaly

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Crew debrief

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2025-06-20 18:00:00+0000 --> 2025-06-20 19:30:00+0000

> **performer****actor**: Commander Johnson, ISS Expedition 75

> **performer****actor**: Dr. Martinez, Flight Surgeon

**reasonCode**: Anxiety level, Interpersonal friction



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-CrewDebrief-PostAnomaly",
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
        "code" : "crew-debrief",
        "display" : "Crew debrief"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedPeriod" : {
    "start" : "2025-06-20T18:00:00Z",
    "end" : "2025-06-20T19:30:00Z"
  },
  "performer" : [
    {
      "actor" : {
        "display" : "Commander Johnson, ISS Expedition 75"
      }
    },
    {
      "actor" : {
        "display" : "Dr. Martinez, Flight Surgeon"
      }
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "anxiety-level",
          "display" : "Anxiety level"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isolation-syndrome-factor-cs",
          "code" : "interpersonal-friction",
          "display" : "Interpersonal friction"
        }
      ]
    }
  ]
}

```
