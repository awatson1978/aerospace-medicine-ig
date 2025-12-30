# ISS Bright Light Therapy - Mission Week 8 - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Bright Light Therapy - Mission Week 8**

## Example Procedure: ISS Bright Light Therapy - Mission Week 8

Profile: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Completed

**code**: Bright light therapy

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**performed**: 2025-05-15 07:00:00+0000

**reasonCode**: Circadian drift, Sleep quality

**outcome**: Sleep quality



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ISS-BrightLightTherapy-Week8",
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
        "code" : "bright-light-therapy",
        "display" : "Bright light therapy"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "performedDateTime" : "2025-05-15T07:00:00Z",
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs",
          "code" : "circadian-drift",
          "display" : "Circadian drift"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
          "code" : "sleep-quality",
          "display" : "Sleep quality"
        }
      ]
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "sleep-quality",
        "display" : "Sleep quality"
      }
    ]
  }
}

```
