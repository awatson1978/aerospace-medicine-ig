# xEMU EVA Suit #001 - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xEMU EVA Suit #001**

## Example Device: xEMU EVA Suit #001

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
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs",
        "code" : "xemu-suit"
      }
    ],
    "text" : "Exploration Extravehicular Mobility Unit"
  }
}

```
