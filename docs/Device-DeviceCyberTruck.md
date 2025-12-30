# Device - Cyber Truck - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Cyber Truck**

## Example Device: Device - Cyber Truck

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
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
