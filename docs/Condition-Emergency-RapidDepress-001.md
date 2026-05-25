# Rapid Depressurization Event - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rapid Depressurization Event**

## Example Condition: Rapid Depressurization Event

Profile: [Space Emergency Condition](StructureDefinition-space-emergency-condition.md)

**Mission Phase**: Orbital Operations

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**severity**: Severe

**code**: Rapid Depressurization

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**onset**: 2028-07-15 14:30:00+0000

**note**: 

> 

Pressure drop detected in Node 2, crew immediately donned masks and initiated isolation protocol




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "Emergency-RapidDepress-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-emergency-condition"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs",
            "code" : "orbital-ops",
            "display" : "Orbital Operations"
          }
        ]
      }
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
        "system" : "http://snomed.info/sct",
        "code" : "24484000",
        "display" : "Severe"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-emergency-type-cs",
        "code" : "rapid-depress",
        "display" : "Rapid Depressurization"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "onsetDateTime" : "2028-07-15T14:30:00Z",
  "note" : [
    {
      "text" : "Pressure drop detected in Node 2, crew immediately donned masks and initiated isolation protocol"
    }
  ]
}

```
