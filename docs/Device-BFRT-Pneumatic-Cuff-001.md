# BFRT Pneumatic Cuff Device - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Pneumatic Cuff Device**

## Example Device: BFRT Pneumatic Cuff Device

Profile: [BFRT Device](StructureDefinition-bfrt-device.md)

**status**: Active

**manufacturer**: Kaatsu Global

**serialNumber**: BFR-ISS-2028-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Kaatsu Nano BFR Unit #BFR-001 | User Friendly name |

**modelNumber**: Nano

**type**: Pneumatic Cuff

**patient**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "BFRT-Pneumatic-Cuff-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/bfrt-device"
    ]
  },
  "status" : "active",
  "manufacturer" : "Kaatsu Global",
  "serialNumber" : "BFR-ISS-2028-001",
  "deviceName" : [
    {
      "name" : "Kaatsu Nano BFR Unit #BFR-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "Nano",
  "type" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-device-type-cs",
        "code" : "pneumatic-cuff",
        "display" : "Pneumatic Cuff"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/ExampleAstronaut"
  }
}

```
