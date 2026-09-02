# Device - Space Garage - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Space Garage**

## Example Device: Device - Space Garage

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Commercial Space Equipment](StructureDefinition-space-equipment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Space Garage | User Friendly name |

**partNumber**: Garage



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceSpaceGarage",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment"
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
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Space Garage",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Garage"
}

```
