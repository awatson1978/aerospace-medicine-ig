# Butterfly iQ3 Ultrasound - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Butterfly iQ3 Ultrasound**

## Example Device: Butterfly iQ3 Ultrasound

Profile: [Ultrasound Monitoring Device](StructureDefinition-ultrasound-monitoring-device.md)

**status**: Active

**manufacturer**: Butterfly Network

**serialNumber**: BF-IQ3-2025-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Butterfly iQ3 #US-001 | User Friendly name |

**modelNumber**: iQ3

**type**: Point-of-Care Ultrasound



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Butterfly-iQ3-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/ultrasound-monitoring-device"
    ]
  },
  "status" : "active",
  "manufacturer" : "Butterfly Network",
  "serialNumber" : "BF-IQ3-2025-001",
  "deviceName" : [
    {
      "name" : "Butterfly iQ3 #US-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "iQ3",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "43252007",
        "display" : "Ultrasound device"
      }
    ],
    "text" : "Point-of-Care Ultrasound"
  }
}

```
