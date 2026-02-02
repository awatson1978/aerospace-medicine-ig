# NASA Medical Hardware - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Hardware**

## ValueSet: NASA Medical Hardware 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/nasa-medical-hardware-vs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:NASAMedicalHardwareVS |

 
Complete value set for all NASA medical hardware. 

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
  "id" : "nasa-medical-hardware-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/nasa-medical-hardware-vs",
  "version" : "0.5.8",
  "name" : "NASAMedicalHardwareVS",
  "title" : "NASA Medical Hardware",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-02T11:11:20-06:00",
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
  "description" : "Complete value set for all NASA medical hardware.",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs"
      }
    ]
  }
}

```
