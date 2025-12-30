# Device - Air Lock - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Air Lock**

## Example Device: Device - Air Lock

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Air Lock | User Friendly name |

**partNumber**: Air Lock



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceAirLock",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Air Lock",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Air Lock"
}

```
