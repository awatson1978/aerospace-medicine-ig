# Device - Ascent/Entry Spacesuit - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Ascent/Entry Spacesuit**

## Example Device: Device - Ascent/Entry Spacesuit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Ascent/Entry Spacesuit | User Friendly name |

**partNumber**: Spacesuit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "AscentEntrySpacesuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Ascent/Entry Spacesuit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Spacesuit"
}

```
