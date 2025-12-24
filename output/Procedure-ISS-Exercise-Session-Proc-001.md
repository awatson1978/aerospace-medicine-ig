# ISS T2 Treadmill Session - Procedure - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Session - Procedure**

## Example Procedure: ISS T2 Treadmill Session - Procedure

Profile: [Space Exercise Session](StructureDefinition-space-exercise-session.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: ISS T2 treadmill running session

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**encounter**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**performed**: 2025-06-01 13:00:00+0000 --> 2025-06-01 13:30:00+0000

**usedReference**: [Device: status = active; manufacturer = NASA; modelNumber = T2-TVIS; type =](Device-ISS-T2-Treadmill.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-Exercise-Session-Proc-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-session"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
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
    "reference" : "Patient/AstronautExample"
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
