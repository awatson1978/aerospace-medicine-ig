# ISS CBT Session - Mission Week 12 - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS CBT Session - Mission Week 12**

## Example Procedure: ISS CBT Session - Mission Week 12

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Cognitive behavioral therapy session

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**performed**: 2025-06-02 16:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | Dr. Sarah Chen, Behavioral Health Specialist |

**reasonCode**: Mood level

**reasonReference**: [Observation Mood level](Observation-ISS-MoodAssessment-Week12.md)

**outcome**: Mood level



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-CBT-Session-Week12",
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
        "code" : "cbt-session",
        "display" : "Cognitive behavioral therapy session"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "performedDateTime" : "2025-06-02T16:00:00Z",
  "performer" : [
    {
      "actor" : {
        "display" : "Dr. Sarah Chen, Behavioral Health Specialist"
      }
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "mood-level",
          "display" : "Mood level"
        }
      ]
    }
  ],
  "reasonReference" : [
    {
      "reference" : "Observation/ISS-MoodAssessment-Week12"
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "mood-level",
        "display" : "Mood level"
      }
    ]
  }
}

```
