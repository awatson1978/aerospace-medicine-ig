# Device - Cyber Truck - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Cyber Truck**

## Example Device: Device - Cyber Truck

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Commercial Space Equipment](StructureDefinition-space-equipment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Cyber Truck | User Friendly name |

**partNumber**: Cyber Truck



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceCyberTruck",
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
      "name" : "Device - Cyber Truck",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Cyber Truck"
}

```
