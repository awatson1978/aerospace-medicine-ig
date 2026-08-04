# xEVAS Lunar Suit Definition - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xEVAS Lunar Suit Definition**

## Example DeviceDefinition: xEVAS Lunar Suit Definition

Profile: [xEVAS Suit Definition](StructureDefinition-xevas-suit-definition.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/xevas-suit-definition"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
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
