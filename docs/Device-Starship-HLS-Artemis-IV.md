# Starship HLS for Artemis IV - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Starship HLS for Artemis IV**

## Example Device: Starship HLS for Artemis IV

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
  "id" : "Starship-HLS-Artemis-IV",
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-certified-devices-cs",
        "code" : "starship-hls",
        "display" : "Starship Human Landing System"
      }
    ],
    "text" : "Human Landing System"
  }
}

```
