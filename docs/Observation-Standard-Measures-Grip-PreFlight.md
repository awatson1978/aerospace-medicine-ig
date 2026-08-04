# Standard Measures Grip Strength - Pre-flight - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Standard Measures Grip Strength - Pre-flight**

## Example Observation: Standard Measures Grip Strength - Pre-flight

Profile: [NASA Standard Measures Observation](StructureDefinition-standard-measures-observation.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Mission Phase**: Pre-flight

**Flight Day**: -30

**status**: Final

**category**: Exam

**code**: Grip Strength

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-02-15 14:00:00+0000

**value**: 45.2 kg(Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Standard-Measures-Grip-PreFlight",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/standard-measures-observation"
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
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs",
            "code" : "pre-flight",
            "display" : "Pre-flight"
          }
        ]
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flight-day",
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-standard-measures-cs",
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
