# Neutral Buoyancy Facility Equipment - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Facility Equipment**

## Example Device: Neutral Buoyancy Facility Equipment

Profile: [Diving Equipment](StructureDefinition-DivingEquipment.md)

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Neutral Buoyancy Training Equipment | User Friendly name |

**type**: Training Pool Equipment



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "NeutralBuoyancyFacilityEquipment",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/DivingEquipment"
    ]
  },
  "status" : "active",
  "deviceName" : [
    {
      "name" : "Neutral Buoyancy Training Equipment",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "text" : "Training Pool Equipment"
  }
}

```
