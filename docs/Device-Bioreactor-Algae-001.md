# Algae Photobioreactor - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Algae Photobioreactor**

## Example Device: Algae Photobioreactor

Profile: [Bioreactor Device](StructureDefinition-bioreactor-device.md)

**status**: Active

**manufacturer**: Techshot Inc.

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | PBR-3000 Photobioreactor #PBR-001 | User Friendly name |

**modelNumber**: PBR-3000

**type**: Algae Photobioreactor

> **property****type**:Volume**valueQuantity**: 50 L(Details: UCUM codeL = 'L')

> **property****type**:Operating Temperature**valueQuantity**: 25 Cel(Details: UCUM codeCel = 'Cel')

**note**: 

> 

Chlorella vulgaris culture, LED-illuminated, 16h:8h light-dark cycle




## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Bioreactor-Algae-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/bioreactor-device"
    ]
  },
  "status" : "active",
  "manufacturer" : "Techshot Inc.",
  "deviceName" : [
    {
      "name" : "PBR-3000 Photobioreactor #PBR-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "PBR-3000",
  "type" : {
    "text" : "Algae Photobioreactor"
  },
  "property" : [
    {
      "type" : {
        "text" : "Volume"
      },
      "valueQuantity" : [
        {
          "value" : 50,
          "unit" : "L",
          "system" : "http://unitsofmeasure.org",
          "code" : "L"
        }
      ]
    },
    {
      "type" : {
        "text" : "Operating Temperature"
      },
      "valueQuantity" : [
        {
          "value" : 25,
          "unit" : "Cel",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "Chlorella vulgaris culture, LED-illuminated, 16h:8h light-dark cycle"
    }
  ]
}

```
