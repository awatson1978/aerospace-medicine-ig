# Device - Flight Recorder (FHIR) - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Flight Recorder (FHIR)**

## Example Device: Device - Flight Recorder (FHIR)

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Flight Recorder (FHIR) | User Friendly name |

**partNumber**: Flight Recorder



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceFlightRecorder",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Flight Recorder (FHIR)",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Flight Recorder"
}

```
