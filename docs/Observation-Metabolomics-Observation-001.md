# Metabolomics Observation - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Metabolomics Observation**

## Example Observation: Metabolomics Observation

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Multi-Omics Observation](StructureDefinition-multi-omics-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Phase**: Orbital Operations

**Flight Day**: 35

**status**: Final

**code**: Metabolomics

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-04-22 10:00:00+0000

**specimen**: [Specimen: extension = ; status = available; type = Dried Blood Spot](Specimen-DBS-Specimen-001.md)

> **component****code**:Sequencing platform**value**: Thermo Q Exactive HF-X

> **component****code**:Sequence read count**value**: 8542 features

> **component****code**:Quality metric**value**: 92.3 %



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Metabolomics-Observation-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/multi-omics-observation"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs",
            "code" : "orbital-ops",
            "display" : "Orbital Operations"
          }
        ]
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
      "valueInteger" : 35
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-omics-type-cs",
        "code" : "metabolomics",
        "display" : "Metabolomics"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-04-22T10:00:00Z",
  "specimen" : {
    "reference" : "Specimen/DBS-Specimen-001"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "85069-3",
            "display" : "Sequencing platform"
          }
        ]
      },
      "valueString" : "Thermo Q Exactive HF-X"
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "98847-7",
            "display" : "Sequence read count"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 8542,
        "unit" : "features"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "92822-6",
            "display" : "Quality metric"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 92.3,
        "unit" : "%"
      }
    }
  ]
}

```
