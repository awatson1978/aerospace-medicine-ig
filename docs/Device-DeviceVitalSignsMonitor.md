# Device - Vital Signs Monitor - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Vital Signs Monitor**

## Example Device: Device - Vital Signs Monitor

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Vital Signs Monitor | User Friendly name |

**partNumber**: Vital Signs Monitor



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceVitalSignsMonitor",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Vital Signs Monitor",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Vital Signs Monitor"
}

```
