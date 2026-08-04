# Dexcom G7 CGM Device - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dexcom G7 CGM Device**

## Example Device: Dexcom G7 CGM Device

Profile: [Space CGM Device](StructureDefinition-space-cgm-device.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

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

**patient**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "CGM-Dexcom-G7-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-device"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-device-type-cs",
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
