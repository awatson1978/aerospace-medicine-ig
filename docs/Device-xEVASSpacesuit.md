# Device - xEVAS Spacesuit - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - xEVAS Spacesuit**

## Example Device: Device - xEVAS Spacesuit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - xEVAS Spacesuit | User Friendly name |

**partNumber**: Spacesuit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "xEVASSpacesuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - xEVAS Spacesuit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Spacesuit"
}

```
