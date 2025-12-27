# Device - Space Tent - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Space Tent**

## Example Device: Device - Space Tent

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Space Tent | User Friendly name |

**partNumber**: Tent



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceSpaceTent",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Space Tent",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Tent"
}

```
