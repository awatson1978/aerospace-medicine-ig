# xEVAS Lunar Suit Definition - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xEVAS Lunar Suit Definition**

## Example DeviceDefinition: xEVAS Lunar Suit Definition

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [xEVAS Suit Definition](StructureDefinition-xevas-suit-definition.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Lunar Gravity (1/6g)

**manufacturer**: Axiom Space

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Axiom Extravehicular Mobility Unit (AxEMU) | User Friendly name |

**modelNumber**: AxEMU-v2

> **property****type**:Suit Pressure**valueQuantity**: 8.2 psi(Details: UCUM code[psi] = '[psi]')

> **property****type**:O2 Duration**valueQuantity**: 8 hours(Details: UCUM codeh = 'h')

**note**: 

> 

Configured for lunar surface EVA with enhanced lower-body mobility, dust-resistant seals, and integrated PLSS




## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "xEVAS-LunarSuit-Def-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/xevas-suit-definition"
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
            "code" : "lunar-gravity",
            "display" : "Lunar Gravity (1/6g)"
          }
        ]
      }
    }
  ],
  "manufacturerString" : "Axiom Space",
  "deviceName" : [
    {
      "name" : "Axiom Extravehicular Mobility Unit (AxEMU)",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "AxEMU-v2",
  "property" : [
    {
      "type" : {
        "text" : "Suit Pressure"
      },
      "valueQuantity" : [
        {
          "value" : 8.2,
          "unit" : "psi",
          "system" : "http://unitsofmeasure.org",
          "code" : "[psi]"
        }
      ]
    },
    {
      "type" : {
        "text" : "O2 Duration"
      },
      "valueQuantity" : [
        {
          "value" : 8,
          "unit" : "hours",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "Configured for lunar surface EVA with enhanced lower-body mobility, dust-resistant seals, and integrated PLSS"
    }
  ]
}

```
