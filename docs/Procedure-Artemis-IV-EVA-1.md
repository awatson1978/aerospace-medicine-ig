# Artemis IV EVA-1 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis IV EVA-1**

## Example Procedure: Artemis IV EVA-1

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**EVA Number**: EVA-1

**status**: Completed

**code**: Extravehicular Activity (EVA)

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2027-09-10 08:00:00+0000 --> 2027-09-10 14:30:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Jane Astronaut](Patient-ExampleAstronaut.md) |

**location**: [Malapert Massif Landing Site](Location-Malapert-Massif-Landing-Site.md)

**usedReference**: [Device: status = active; manufacturer = Axiom Space; type = xEMU EVA Suit](Device-xEMU-Suit-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "Artemis-IV-EVA-1",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-procedure"
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
        "reference" : "Encounter/Artemis-IV-Mission"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-number",
      "valueString" : "EVA-1"
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-procedure-cs",
        "code" : "eva",
        "display" : "Extravehicular Activity"
      }
    ],
    "text" : "Extravehicular Activity (EVA)"
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedPeriod" : {
    "start" : "2027-09-10T08:00:00Z",
    "end" : "2027-09-10T14:30:00Z"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Patient/ExampleAstronaut",
        "display" : "Jane Astronaut"
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
