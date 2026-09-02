# ISS Suit Redundancy Assessment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Suit Redundancy Assessment**

## Example Observation: ISS Suit Redundancy Assessment

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Suit Redundancy Assessment](StructureDefinition-suit-redundancy-assessment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/suit-redundancy-assessment"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs",
            "code" : "primary-suit-status",
            "display" : "Primary Suit Status"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/suit-provisioning-status-cs",
            "code" : "deployed-primary",
            "display" : "Deployed - Primary"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs",
            "code" : "backup-suit-status",
            "display" : "Backup Suit Status"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/suit-provisioning-status-cs",
            "code" : "deployed-backup",
            "display" : "Deployed - Backup"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs",
            "code" : "consumables-remaining",
            "display" : "Consumables Remaining"
          }
        ]
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
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs",
            "code" : "next-maintenance-due",
            "display" : "Next Maintenance Due"
          }
        ]
      },
      "valueDateTime" : "2028-09-01"
    }
  ]
}

```
