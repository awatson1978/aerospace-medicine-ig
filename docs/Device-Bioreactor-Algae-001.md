# Algae Photobioreactor - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Algae Photobioreactor**

## Example Device: Algae Photobioreactor

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Bioreactor Device](StructureDefinition-bioreactor-device.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bioreactor-device"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
