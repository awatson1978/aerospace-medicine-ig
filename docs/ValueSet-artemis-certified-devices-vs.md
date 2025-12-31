# Artemis Certified Devices - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Certified Devices**

## ValueSet: Artemis Certified Devices 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-certified-devices-vs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:ArtemisCertifiedDevicesVS |

 
Flight-qualified Artemis mission hardware 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "artemis-certified-devices-vs",
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-certified-devices-vs",
  "version" : "0.5.6",
  "name" : "ArtemisCertifiedDevicesVS",
  "title" : "Artemis Certified Devices",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T19:11:20-07:00",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "Flight-qualified Artemis mission hardware",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs"
      }
    ]
  }
}

```
