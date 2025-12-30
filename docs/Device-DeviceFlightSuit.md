# Device - Flight Suit - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device - Flight Suit**

## Example Device: Device - Flight Suit

Profile: [Commercial Space Equipment](StructureDefinition-SpaceEquipment.md)

**status**: Active

**manufacturer**: 

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Device - Flight Suit | User Friendly name |

**partNumber**: Flight Suit



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceFlightSuit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
    ]
  },
  "status" : "active",
  "manufacturer" : "",
  "deviceName" : [
    {
      "name" : "Device - Flight Suit",
      "type" : "user-friendly-name"
    }
  ],
  "partNumber" : "Flight Suit"
}

```
