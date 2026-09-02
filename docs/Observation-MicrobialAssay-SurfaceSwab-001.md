# Surface Swab CFU Assay - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Surface Swab CFU Assay**

## Example Observation: Surface Swab CFU Assay

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Microbial Viability Assay](StructureDefinition-microbial-viability-assay.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/microbial-viability-assay"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/planetary-protection-category",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/planetary-protection-category-cs",
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
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/microbial-contaminant-type-cs",
            "code" : "bacterial-spore",
            "display" : "Bacterial Spore"
          }
        ]
      }
    }
  ]
}

```
