# Lunar Telemedicine Terminal - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Telemedicine Terminal**

## Example Device: Lunar Telemedicine Terminal

Profile: [Telemedicine Device](StructureDefinition-telemedicine-device.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-device"
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/telemedicine-equipment-cs",
        "code" : "video-conferencing",
        "display" : "Video Conferencing System"
      }
    ]
  }
}

```
