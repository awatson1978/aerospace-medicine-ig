# Device - Lunar Rover - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Lunar Rover**

## Example Device: Device - Lunar Rover

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Lunar Rover | User Friendly name |

**partNumber**: Rover



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceLunarRover",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Lunar Rover",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Rover"
}

```
