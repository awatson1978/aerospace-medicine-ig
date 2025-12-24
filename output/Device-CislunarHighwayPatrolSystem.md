# Device - Cislunar Highway Patrol System - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Cislunar Highway Patrol System**

## Example Device: Device - Cislunar Highway Patrol System

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Cislunar Highway Patrol System | User Friendly name |

**partNumber**: Monitoring System



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "CislunarHighwayPatrolSystem",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Cislunar Highway Patrol System",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Monitoring System"
}

```
