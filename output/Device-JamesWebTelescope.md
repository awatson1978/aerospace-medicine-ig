# Device - James Webb Telescope - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - James Webb Telescope**

## Example Device: Device - James Webb Telescope

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - James Webb Telescope | User Friendly name |

**partNumber**: Telescope



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "JamesWebTelescope",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - James Webb Telescope",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Telescope"
}

```
