# Butterfly iQ3 Ultrasound - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Butterfly iQ3 Ultrasound**

## Example Device: Butterfly iQ3 Ultrasound

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Ultrasound Monitoring Device](StructureDefinition-ultrasound-monitoring-device.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/ultrasound-monitoring-device"
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
