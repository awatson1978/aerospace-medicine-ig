# Device - Smart Clothing - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Smart Clothing**

## Example Device: Device - Smart Clothing

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Smart Clothing | User Friendly name |

**partNumber**: Device - Smart Clothing



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceSmartClothing",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Smart Clothing",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Device - Smart Clothing"
}

```
