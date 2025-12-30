# ISS Cumulative Stress Burden - Mission Day 180 (End of Mission) - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Cumulative Stress Burden - Mission Day 180 (End of Mission)**

## Example Observation: ISS Cumulative Stress Burden - Mission Day 180 (End of Mission)

Profile: [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Final

**code**: Cumulative stress burden

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-09-01 00:00:00+0000

**value**: 412 stress units(Details: UCUM code{stress_units} = '{stress_units}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-StressBurden-Day180",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/cumulative-stress-burden"
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
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "cumulative-stress",
        "display" : "Cumulative stress burden"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-09-01T00:00:00Z",
  "valueQuantity" : {
    "value" : 412,
    "unit" : "stress units",
    "system" : "http://unitsofmeasure.org",
    "code" : "{stress_units}"
  }
}

```
