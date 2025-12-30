# ISS Guided Meditation - Daily Practice - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Guided Meditation - Daily Practice**

## Example Procedure: ISS Guided Meditation - Daily Practice

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Guided meditation

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**performed**: 2025-06-01 20:00:00+0000

**reasonCode**: Coping capacity



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-GuidedMeditation-Daily",
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
        "code" : "guided-meditation",
        "display" : "Guided meditation"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "performedDateTime" : "2025-06-01T20:00:00Z",
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "coping-capacity",
          "display" : "Coping capacity"
        }
      ]
    }
  ]
}

```
