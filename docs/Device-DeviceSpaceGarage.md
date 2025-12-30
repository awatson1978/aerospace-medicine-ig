# Device - Space Garage - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Space Garage**

## Example Device: Device - Space Garage

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Space Garage | User Friendly name |

**partNumber**: Garage



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceSpaceGarage",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Space Garage",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Garage"
}

```
