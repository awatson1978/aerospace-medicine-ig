# Device - Space Suit - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Space Suit**

## Example Device: Device - Space Suit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Space Suit | User Friendly name |

**partNumber**: Space Suit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceSpaceSuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Space Suit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Space Suit"
}

```
