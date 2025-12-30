# ISRU Propellant Production Plant - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Propellant Production Plant**

## Example Device: ISRU Propellant Production Plant

**status**: Active

**manufacturer**: NASA / Commercial Partners

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Mars Direct ISRU Unit #1 - Jezero | User Friendly name |

**type**: ISRU Propellant Plant



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ISRU-Plant-Jezero-1",
  "status" : "active",
  "manufacturer" : "NASA / Commercial Partners",
  "deviceName" : [
    {
      "name" : "Mars Direct ISRU Unit #1 - Jezero",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs",
        "code" : "isruPlant"
      }
    ],
    "text" : "ISRU Propellant Plant"
  }
}

```
