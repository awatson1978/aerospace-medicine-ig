# Surface Swab CFU Assay - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Surface Swab CFU Assay**

## Example Observation: Surface Swab CFU Assay

Profile: [Microbial Viability Assay](StructureDefinition-microbial-viability-assay.md)

**Planetary Protection Category**: Category IV

**status**: Final

**code**: Bacteria identified in specimen by Culture

**subject**: Mars Lander - Deck Panel B-7

**effective**: 2028-01-09 14:00:00+0000

> **component****code**:Bacteria [#/area] by Colony count**value**: 32 CFU/25cm2

> **component****code**:Microorganism**value**:Bacterial Spore



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MicrobialAssay-SurfaceSwab-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/microbial-viability-assay"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/planetary-protection-category-cs",
            "code" : "category-iv",
            "display" : "Category IV"
          }
        ]
      }
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "630-4",
        "display" : "Bacteria identified in specimen by Culture"
      }
    ]
  },
  "subject" : {
    "display" : "Mars Lander - Deck Panel B-7"
  },
  "effectiveDateTime" : "2028-01-09T14:00:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "18901-0",
            "display" : "Bacteria [#/area] by Colony count"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 32,
        "unit" : "CFU/25cm2"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "264395009",
            "display" : "Microorganism"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/microbial-contaminant-type-cs",
            "code" : "bacterial-spore",
            "display" : "Bacterial Spore"
          }
        ]
      }
    }
  ]
}

```
