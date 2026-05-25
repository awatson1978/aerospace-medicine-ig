# ISS Suit Redundancy Assessment - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Suit Redundancy Assessment**

## Example Observation: ISS Suit Redundancy Assessment

Profile: [Suit Redundancy Assessment](StructureDefinition-suit-redundancy-assessment.md)

**status**: Final

**code**: EVA Suit Redundancy Assessment

**subject**: International Space Station

**effective**: 2028-06-01 00:00:00+0000

> **component****code**:Primary Suit Status**value**:Deployed - Primary

> **component****code**:Backup Suit Status**value**:Deployed - Backup

> **component****code**:Consumables Remaining**value**: 48 hours(Details: UCUM codeh = 'h')

> **component****code**:Next Maintenance Due**value**: 2028-09-01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "SuitRedundancy-Assessment-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/suit-redundancy-assessment"
    ]
  },
  "status" : "final",
  "code" : {
    "text" : "EVA Suit Redundancy Assessment"
  },
  "subject" : {
    "display" : "International Space Station"
  },
  "effectiveDateTime" : "2028-06-01T00:00:00Z",
  "component" : [
    {
      "code" : {
        "text" : "Primary Suit Status"
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/suit-provisioning-status-cs",
            "code" : "deployed-primary",
            "display" : "Deployed - Primary"
          }
        ]
      }
    },
    {
      "code" : {
        "text" : "Backup Suit Status"
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/suit-provisioning-status-cs",
            "code" : "deployed-backup",
            "display" : "Deployed - Backup"
          }
        ]
      }
    },
    {
      "code" : {
        "text" : "Consumables Remaining"
      },
      "valueQuantity" : {
        "value" : 48,
        "unit" : "hours",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    },
    {
      "code" : {
        "text" : "Next Maintenance Due"
      },
      "valueDateTime" : "2028-09-01"
    }
  ]
}

```
