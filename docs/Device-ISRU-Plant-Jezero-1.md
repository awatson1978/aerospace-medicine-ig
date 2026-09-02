# ISRU Propellant Production Plant - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Propellant Production Plant**

## Example Device: ISRU Propellant Production Plant

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: NASA / Commercial Partners

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Mars Direct ISRU Unit #1 - Jezero | User Friendly name |

**type**: ISRU Propellant Plant



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ISRU-Plant-Jezero-1",
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
  "manufacturer" : "NASA / Commercial Partners",
  "deviceName" : [
    {
      "name" : "Mars Direct ISRU Unit #1 - Jezero",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-prototype-devices-cs",
        "code" : "isruPlant",
        "display" : "Mars ISRU Propellant Plant"
      }
    ],
    "text" : "ISRU Propellant Plant"
  }
}

```
