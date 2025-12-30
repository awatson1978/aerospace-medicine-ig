# Starship HLS for Artemis III - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Starship HLS for Artemis III**

## Example Device: Starship HLS for Artemis III

**status**: Active

**manufacturer**: SpaceX

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Starship HLS (Artemis III) | User Friendly name |

**type**: Human Landing System



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Starship-HLS-Artemis-III",
  "status" : "active",
  "manufacturer" : "SpaceX",
  "deviceName" : [
    {
      "name" : "Starship HLS (Artemis III)",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs",
        "code" : "starship-hls"
      }
    ],
    "text" : "Human Landing System"
  }
}

```
