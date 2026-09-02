# Neutral Buoyancy Facility Equipment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Facility Equipment**

## Example Device: Neutral Buoyancy Facility Equipment

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Diving Equipment](StructureDefinition-diving-equipment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Neutral Buoyancy Training Equipment | User Friendly name |

**type**: Training Pool Equipment



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "NeutralBuoyancyFacilityEquipment",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diving-equipment"
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
  "deviceName" : [
    {
      "name" : "Neutral Buoyancy Training Equipment",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "text" : "Training Pool Equipment"
  }
}

```
