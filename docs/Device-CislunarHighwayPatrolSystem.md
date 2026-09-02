# Device - Cislunar Highway Patrol System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Cislunar Highway Patrol System**

## Example Device: Device - Cislunar Highway Patrol System

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Commercial Space Equipment](StructureDefinition-space-equipment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
