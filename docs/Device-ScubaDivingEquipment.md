# SCUBA Diving Equipment - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SCUBA Diving Equipment**

## Example Device: SCUBA Diving Equipment

Profile: [Diving Equipment](StructureDefinition-DivingEquipment.md)

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | SCUBA Equipment | User Friendly name |

**type**: Underwater Breathing Apparatus



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ScubaDivingEquipment",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/DivingEquipment"
    ]
  },
  "status" : "active",
  "deviceName" : [
    {
      "name" : "SCUBA Equipment",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "text" : "Underwater Breathing Apparatus"
  }
}

```
