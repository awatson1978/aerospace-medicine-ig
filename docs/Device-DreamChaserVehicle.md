# Device - Dream Chaser - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Dream Chaser**

## Example Device: Device - Dream Chaser

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Dream Chaser | User Friendly name |

**partNumber**: Capsule



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DreamChaserVehicle",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Dream Chaser",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Capsule"
}

```
