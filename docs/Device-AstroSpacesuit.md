# Device - Astro Spacesuit - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Astro Spacesuit**

## Example Device: Device - Astro Spacesuit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Astro Spacesuit | User Friendly name |

**partNumber**: Space Suit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "AstroSpacesuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Astro Spacesuit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Space Suit"
}

```
