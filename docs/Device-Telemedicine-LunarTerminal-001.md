# Lunar Telemedicine Terminal - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Telemedicine Terminal**

## Example Device: Lunar Telemedicine Terminal

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Telemedicine Device](StructureDefinition-telemedicine-device.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: NASA/JSC Medical Operations

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Artemis Surface Medical Terminal #ASMT-001 | User Friendly name |

**modelNumber**: ASMT-v2

**type**: Video Conferencing System



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Telemedicine-LunarTerminal-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/telemedicine-device"
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
  "manufacturer" : "NASA/JSC Medical Operations",
  "deviceName" : [
    {
      "name" : "Artemis Surface Medical Terminal #ASMT-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "ASMT-v2",
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-equipment-cs",
        "code" : "video-conferencing",
        "display" : "Video Conferencing System"
      }
    ]
  }
}

```
