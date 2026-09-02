# Device - Ascent/Entry Spacesuit - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Ascent/Entry Spacesuit**

## Example Device: Device - Ascent/Entry Spacesuit

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Commercial Space Equipment](StructureDefinition-space-equipment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Ascent/Entry Spacesuit | User Friendly name |

**partNumber**: Spacesuit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "AscentEntrySpacesuit",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment"
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
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Ascent/Entry Spacesuit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Spacesuit"
}

```
