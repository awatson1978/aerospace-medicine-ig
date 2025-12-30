# Device - Lunar Crater Radio Telescope - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Lunar Crater Radio Telescope**

## Example Device: Device - Lunar Crater Radio Telescope

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Lunar Crater Radio Telescope | User Friendly name |

**partNumber**: Radio Telescope



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceRadiotelescope",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Lunar Crater Radio Telescope",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Radio Telescope"
}

```
