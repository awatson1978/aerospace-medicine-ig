# BFRT Pneumatic Cuff Device - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Pneumatic Cuff Device**

## Example Device: BFRT Pneumatic Cuff Device

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [BFRT Device](StructureDefinition-bfrt-device.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: Kaatsu Global

**serialNumber**: BFR-ISS-2028-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Kaatsu Nano BFR Unit #BFR-001 | User Friendly name |

**modelNumber**: Nano

**type**: Pneumatic Cuff

**patient**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "BFRT-Pneumatic-Cuff-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bfrt-device"
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
  "manufacturer" : "Kaatsu Global",
  "serialNumber" : "BFR-ISS-2028-001",
  "deviceName" : [
    {
      "name" : "Kaatsu Nano BFR Unit #BFR-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "Nano",
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-device-type-cs",
        "code" : "pneumatic-cuff",
        "display" : "Pneumatic Cuff"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/ExampleAstronaut"
  }
}

```
