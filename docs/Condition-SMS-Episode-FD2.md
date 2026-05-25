# Space Motion Sickness Episode - Flight Day 2 - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Motion Sickness Episode - Flight Day 2**

## Example Condition: Space Motion Sickness Episode - Flight Day 2

Profile: [Space Motion Sickness Condition](StructureDefinition-space-motion-sickness-condition.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Gravity Context**: Microgravity

**Flight Day**: 2

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**severity**: Grade II-S - Moderate Malaise

**code**: Space Motion Sickness (SMS)

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**onset**: 2028-03-16 06:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "SMS-Episode-FD2",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-motion-sickness-condition"
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
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
            "code" : "microgravity",
            "display" : "Microgravity"
          }
        ]
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flight-day",
      "valueInteger" : 2
    }
  ],
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "severity" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/graybiel-severity-cs",
        "code" : "grade-2",
        "display" : "Grade II-S - Moderate Malaise"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-motion-sickness-cs",
        "code" : "sms",
        "display" : "Space Motion Sickness (SMS)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "onsetDateTime" : "2028-03-16T06:00:00Z"
}

```
