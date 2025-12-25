# Autonomous Medical Encounter - Appendicitis Sol 189 - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Autonomous Medical Encounter - Appendicitis Sol 189**

## Example Encounter: Autonomous Medical Encounter - Appendicitis Sol 189

Profile: [Autonomous Medical Encounter](StructureDefinition-autonomous-medical-encounter.md)

**Communication Delay**: 15.2 min(Details: UCUM codemin = 'min')

**Mission Context**: [Encounter: status = in-progress; class = field (ActCode#FLD); period = 2040-09-01 00:00:00+0000 --> (ongoing); reasonCode =](Encounter-MarsDirectMission2040.md)

**status**: Finished

**class**: [ActCode: EMER](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-EMER) (emergency)

**subject**: [Patient/MarsCrewMember2](Patient/MarsCrewMember2)

**period**: 2041-05-18 03:00:00+0000 --> 2041-05-19 08:00:00+0000

**reasonCode**: Acute appendicitis

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | Acute appendicitis, confirmed by ultrasound | Admission diagnosis |

### Hospitalizations

| | |
| :--- | :--- |
| - | **DischargeDisposition** |
| * | Crew Medical Officer performed successful appendectomy with ground guidance. Patient stable post-op, full recovery expected. Demonstrates autonomous medical capability critical for Mars missions. |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Emergency-Appendicitis-Sol189",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/autonomous-medical-encounter"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay",
      "valueQuantity" : {
        "value" : 15.2,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/MarsDirectMission2040"
      }
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER",
    "display" : "emergency"
  },
  "subject" : {
    "reference" : "Patient/MarsCrewMember2"
  },
  "period" : {
    "start" : "2041-05-18T03:00:00Z",
    "end" : "2041-05-19T08:00:00Z"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "85189001",
          "display" : "Acute appendicitis"
        }
      ]
    }
  ],
  "diagnosis" : [
    {
      "condition" : {
        "display" : "Acute appendicitis, confirmed by ultrasound"
      },
      "use" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
            "code" : "AD",
            "display" : "Admission diagnosis"
          }
        ]
      }
    }
  ],
  "hospitalization" : {
    "dischargeDisposition" : {
      "text" : "Crew Medical Officer performed successful appendectomy with ground guidance. Patient stable post-op, full recovery expected. Demonstrates autonomous medical capability critical for Mars missions."
    }
  }
}

```
