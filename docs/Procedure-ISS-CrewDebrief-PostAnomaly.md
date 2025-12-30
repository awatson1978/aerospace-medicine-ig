# ISS Crew Debrief - Post-Anomaly - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Crew Debrief - Post-Anomaly**

## Example Procedure: ISS Crew Debrief - Post-Anomaly

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Crew debrief

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

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
    "profile" : [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/psychological-countermeasure-activity"
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
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/psychological-countermeasure-cs",
        "code" : "crew-debrief",
        "display" : "Crew debrief"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
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
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "anxiety-level",
          "display" : "Anxiety level"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs",
          "code" : "interpersonal-friction",
          "display" : "Interpersonal friction"
        }
      ]
    }
  ]
}

```
