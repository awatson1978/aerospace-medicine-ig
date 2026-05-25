# Promethazine IM Rescue Dose - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Promethazine IM Rescue Dose**

## Example MedicationAdministration: Promethazine IM Rescue Dose

Profile: [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Gravity Context**: Microgravity

**status**: Completed

**medication**: Promethazine (Intramuscular)

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-03-16 07:30:00+0000

**reasonReference**: [Condition Space Motion Sickness (SMS)](Condition-SMS-Episode-FD2.md)

### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Dose** |
| * | Intramuscular route | 25 mg(Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "Promethazine-IM-Rescue",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-administration"
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
    }
  ],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/antiemetic-medication-cs",
        "code" : "promethazine-im",
        "display" : "Promethazine (Intramuscular)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-03-16T07:30:00Z",
  "reasonReference" : [
    {
      "reference" : "Condition/SMS-Episode-FD2"
    }
  ],
  "dosage" : {
    "route" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "78421000",
          "display" : "Intramuscular route"
        }
      ]
    },
    "dose" : {
      "value" : 25,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
