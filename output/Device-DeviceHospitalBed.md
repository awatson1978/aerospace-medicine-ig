# Device - Hospital Bed - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Hospital Bed**

## Example Device: Device - Hospital Bed

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Hospital Bed | User Friendly name |

**partNumber**: Hospital Bed



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceHospitalBed",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Hospital Bed",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Hospital Bed"
}

```
