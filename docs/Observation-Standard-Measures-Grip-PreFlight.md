# Standard Measures Grip Strength - Pre-flight - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Standard Measures Grip Strength - Pre-flight**

## Example Observation: Standard Measures Grip Strength - Pre-flight

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [NASA Standard Measures Observation](StructureDefinition-standard-measures-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**Mission Phase**: Pre-flight

**Flight Day**: -30

**status**: Final

**category**: Exam

**code**: Grip Strength

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-02-15 14:00:00+0000

**value**: 45.2 kg(Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Standard-Measures-Grip-PreFlight",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/standard-measures-observation"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs",
            "code" : "pre-flight",
            "display" : "Pre-flight"
          }
        ]
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
      "valueInteger" : -30
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-standard-measures-cs",
        "code" : "grip-strength",
        "display" : "Grip Strength"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-02-15T14:00:00Z",
  "valueQuantity" : {
    "value" : 45.2,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
