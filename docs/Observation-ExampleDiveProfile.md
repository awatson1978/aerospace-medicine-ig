# Example Training Dive Profile - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Training Dive Profile**

## Example Observation: Example Training Dive Profile

Profile: [Dive Profile](StructureDefinition-DiveProfile.md)

**status**: Final

**code**: Dive profile

**subject**: [Catherine Janeway (no stated gender), DoB Unknown](Patient-janeway.md)

**effective**: 2025-06-01 09:30:00+0000

> **component****code**:Maximum depth**value**: 12 m(Details: UCUM codem = 'm')

> **component****code**:Bottom time**value**: 180 min(Details: UCUM codemin = 'min')

> **component****code**:Water temperature**value**: 26 Cel(Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleDiveProfile",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/DiveProfile"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "LA6156-8",
        "display" : "Dive profile"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/janeway"
  },
  "effectiveDateTime" : "2025-06-01T09:30:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33747-0",
            "display" : "Maximum depth"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 12,
        "system" : "http://unitsofmeasure.org",
        "code" : "m"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "LA6157-6",
            "display" : "Bottom time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 180,
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "33746-2",
            "display" : "Water temperature"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 26,
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    }
  ]
}

```
