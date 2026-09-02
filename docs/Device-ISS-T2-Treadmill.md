# ISS T2 Treadmill - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill**

## Example Device: ISS T2 Treadmill

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: NASA

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Treadmill 2 with Vibration Isolation and Stabilization (TVIS) | User Friendly name |

**modelNumber**: T2-TVIS

**type**: Treadmill with vibration isolation



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ISS-T2-Treadmill",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "active",
  "manufacturer" : "NASA",
  "deviceName" : [
    {
      "name" : "Treadmill 2 with Vibration Isolation and Stabilization (TVIS)",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "T2-TVIS",
  "type" : {
    "text" : "Treadmill with vibration isolation"
  }
}

```
