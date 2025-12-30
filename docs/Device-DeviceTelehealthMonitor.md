# Device - Telehealth Monitor - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Telehealth Monitor**

## Example Device: Device - Telehealth Monitor

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Telehealth Monitor | User Friendly name |

**partNumber**: Telehealth Monitor



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceTelehealthMonitor",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Telehealth Monitor",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Telehealth Monitor"
}

```
