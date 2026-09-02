# Promethazine IM Rescue Dose - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Promethazine IM Rescue Dose**

## Example MedicationAdministration: Promethazine IM Rescue Dose

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**Gravity Context**: Microgravity

**status**: Completed

**medication**: Promethazine (Intramuscular)

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/antiemetic-administration"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/gravity-context-cs",
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antiemetic-medication-cs",
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
