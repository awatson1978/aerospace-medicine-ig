# xEMU EVA Suit #001 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xEMU EVA Suit #001**

## Example Device: xEMU EVA Suit #001

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: Axiom Space

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | xEMU Suit Serial #001 | User Friendly name |

**type**: Exploration Extravehicular Mobility Unit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "xEMU-Suit-001",
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
  "manufacturer" : "Axiom Space",
  "deviceName" : [
    {
      "name" : "xEMU Suit Serial #001",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-certified-devices-cs",
        "code" : "xemu-suit",
        "display" : "xEMU EVA Suit"
      }
    ],
    "text" : "Exploration Extravehicular Mobility Unit"
  }
}

```
