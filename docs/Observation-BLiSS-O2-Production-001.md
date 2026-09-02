# BLiSS O2 Production Output - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BLiSS O2 Production Output**

## Example Observation: BLiSS O2 Production Output

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [BLiSS Resource Output](StructureDefinition-bliss-resource-output.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**status**: Final

**code**: O2 Production

**subject**: [Device: status = active; manufacturer = Techshot Inc.; modelNumber = PBR-3000; type = ; note = Chlorella vulgaris culture, LED-illuminated, 16h:8h light-dark cycle](Device-Bioreactor-Algae-001.md)

**effective**: 2028-05-15 18:00:00+0000

> **component****code**:Output Quantity**value**: 0.85 kg(Details: UCUM codekg = 'kg')

> **component****code**:Output Rate**value**: 0.85 kg/d(Details: UCUM codekg/d = 'kg/d')

> **component****code**:Energy Input**value**: 1.2 kW(Details: UCUM codekW = 'kW')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BLiSS-O2-Production-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bliss-resource-output"
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
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bliss-output-cs",
        "code" : "o2-production",
        "display" : "O2 Production"
      }
    ]
  },
  "subject" : {
    "reference" : "Device/Bioreactor-Algae-001"
  },
  "effectiveDateTime" : "2028-05-15T18:00:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-metric-cs",
            "code" : "output-quantity",
            "display" : "Output Quantity"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.85,
        "unit" : "kg",
        "system" : "http://unitsofmeasure.org",
        "code" : "kg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-metric-cs",
            "code" : "output-rate",
            "display" : "Output Rate"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.85,
        "unit" : "kg/d",
        "system" : "http://unitsofmeasure.org",
        "code" : "kg/d"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-metric-cs",
            "code" : "energy-input",
            "display" : "Energy Input"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.2,
        "unit" : "kW",
        "system" : "http://unitsofmeasure.org",
        "code" : "kW"
      }
    }
  ]
}

```
