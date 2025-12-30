# Device - Orbital Reef - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Orbital Reef**

## Example Device: Device - Orbital Reef

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Orbital Reef | User Friendly name |

**partNumber**: Space Station Habitat



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceOrbitalReef",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Orbital Reef",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Space Station Habitat"
}

```
