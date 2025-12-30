# Artemis III EVA-1 - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III EVA-1**

## Example Procedure: Artemis III EVA-1

Profile: [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**EVA Number**: EVA-1

**status**: Completed

**code**: Extravehicular Activity (EVA)

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**performed**: 2027-09-10 08:00:00+0000 --> 2027-09-10 14:30:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Commander Sarah Chen](Patient/AstronautExample) |

**location**: [Malapert Massif Landing Site](Location-Malapert-Massif-Landing-Site.md)

**usedReference**: [Device: status = active; manufacturer = Axiom Space; type = xEMU EVA Suit](Device-xEMU-Suit-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "Artemis-III-EVA-1",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/eva-procedure"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number",
      "valueString" : "EVA-1"
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "103741001",
        "display" : "Extravehicular activity (procedure)"
      }
    ],
    "text" : "Extravehicular Activity (EVA)"
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "performedPeriod" : {
    "start" : "2027-09-10T08:00:00Z",
    "end" : "2027-09-10T14:30:00Z"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Patient/AstronautExample",
        "display" : "Commander Sarah Chen"
      }
    }
  ],
  "location" : {
    "reference" : "Location/Malapert-Massif-Landing-Site",
    "display" : "Malapert Massif Landing Site"
  },
  "usedReference" : [
    {
      "reference" : "Device/xEMU-Suit-001"
    }
  ]
}

```
