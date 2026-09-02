# ISS T2 Treadmill Session - Procedure - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Session - Procedure**

## Example Procedure: ISS T2 Treadmill Session - Procedure

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Exercise Session](StructureDefinition-space-exercise-session.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: ISS T2 treadmill running session

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**encounter**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**performed**: 2025-06-01 13:00:00+0000 --> 2025-06-01 13:30:00+0000

**usedReference**: [Device: status = active; manufacturer = NASA; modelNumber = T2-TVIS; type =](Device-ISS-T2-Treadmill.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-Exercise-Session-Proc-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-exercise-session"
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
    "text" : "ISS T2 treadmill running session"
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "encounter" : {
    "reference" : "Encounter/ISS-Exp75-InFlight"
  },
  "performedPeriod" : {
    "start" : "2025-06-01T13:00:00Z",
    "end" : "2025-06-01T13:30:00Z"
  },
  "usedReference" : [
    {
      "reference" : "Device/ISS-T2-Treadmill"
    }
  ]
}

```
