# Urinary Retention After Promethazine - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Urinary Retention After Promethazine**

## Example AdverseEvent: Urinary Retention After Promethazine

Profile: [Space Adverse Event](StructureDefinition-space-adverse-event.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Flight Day**: 2

**actuality**: Adverse Event

**event**: Urinary Retention

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-adverse-event"
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
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flight-day",
      "valueInteger" : 2
    }
  ],
  "actuality" : "actual",
  "event" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-adverse-event-cs",
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
