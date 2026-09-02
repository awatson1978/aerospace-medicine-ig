# Urinary Retention After Promethazine - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Urinary Retention After Promethazine**

## Example AdverseEvent: Urinary Retention After Promethazine

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Adverse Event](StructureDefinition-space-adverse-event.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**Flight Day**: 2

**actuality**: Adverse Event

**event**: Urinary Retention

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**date**: 2028-03-16 11:30:00+0000

**seriousness**: Non-serious

**outcome**: Resolved

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [MedicationAdministration: extension = ->Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing),Microgravity; status = completed; medication[x] = Promethazine (Intramuscular); effective[x] = 2028-03-16 07:30:00+0000](MedicationAdministration-Promethazine-IM-Rescue.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "Urinary-Retention-Post-Promethazine",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-adverse-event"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
      "valueInteger" : 2
    }
  ],
  "actuality" : "actual",
  "event" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-adverse-event-cs",
        "code" : "urinary-retention",
        "display" : "Urinary Retention"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "date" : "2028-03-16T11:30:00Z",
  "seriousness" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code" : "non-serious",
        "display" : "Non-serious"
      }
    ]
  },
  "outcome" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-outcome",
        "code" : "resolved",
        "display" : "Resolved"
      }
    ]
  },
  "suspectEntity" : [
    {
      "instance" : {
        "reference" : "MedicationAdministration/Promethazine-IM-Rescue"
      }
    }
  ]
}

```
