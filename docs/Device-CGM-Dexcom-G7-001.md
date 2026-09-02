# Dexcom G7 CGM Device - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dexcom G7 CGM Device**

## Example Device: Dexcom G7 CGM Device

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space CGM Device](StructureDefinition-space-cgm-device.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**status**: Active

**manufacturer**: Dexcom, Inc.

**serialNumber**: DG7-2028-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Dexcom G7 Serial #DG7-2028-001 | User Friendly name |

**modelNumber**: G7

**type**: Dexcom G7

**patient**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "CGM-Dexcom-G7-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-cgm-device"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-IV-Mission"
      }
    }
  ],
  "status" : "active",
  "manufacturer" : "Dexcom, Inc.",
  "serialNumber" : "DG7-2028-001",
  "deviceName" : [
    {
      "name" : "Dexcom G7 Serial #DG7-2028-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "G7",
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-device-type-cs",
        "code" : "dexcom-g7",
        "display" : "Dexcom G7"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/ExampleAstronaut"
  }
}

```
