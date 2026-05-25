# SMS Prophylaxis Protocol - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SMS Prophylaxis Protocol**

## Example CarePlan: SMS Prophylaxis Protocol

Profile: [Antiemetic Care Plan](StructureDefinition-antiemetic-care-plan.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**status**: Active

**intent**: Plan

**title**: Space Motion Sickness Prophylaxis and Treatment Protocol

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**addresses**: [Condition Space Motion Sickness (SMS)](Condition-SMS-Episode-FD2.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Pre-flight Prophylaxis | Completed | Scopolamine 0.4mg + Dexedrine 5mg oral, 1 hour before launch |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Rescue Treatment | Completed | Promethazine 25mg IM PRN for Grade II+ symptoms |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "SMS-Prophylaxis-Protocol",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-care-plan"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "title" : "Space Motion Sickness Prophylaxis and Treatment Protocol",
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "addresses" : [
    {
      "reference" : "Condition/SMS-Episode-FD2"
    }
  ],
  "activity" : [
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/antiemetic-protocol-cs",
              "code" : "prophylactic-pre-flight",
              "display" : "Pre-flight Prophylaxis"
            }
          ]
        },
        "status" : "completed",
        "description" : "Scopolamine 0.4mg + Dexedrine 5mg oral, 1 hour before launch"
      }
    },
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/antiemetic-protocol-cs",
              "code" : "rescue-treatment",
              "display" : "Rescue Treatment"
            }
          ]
        },
        "status" : "completed",
        "description" : "Promethazine 25mg IM PRN for Grade II+ symptoms"
      }
    }
  ]
}

```
