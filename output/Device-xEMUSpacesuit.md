# Device - xEMU Spacesuit - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - xEMU Spacesuit**

## Example Device: Device - xEMU Spacesuit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - xEMU Spacesuit | User Friendly name |

**partNumber**: Spacesuit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "xEMUSpacesuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - xEMU Spacesuit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Spacesuit"
}

```
