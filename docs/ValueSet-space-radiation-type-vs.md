# Space Radiation Types - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Types**

## ValueSet: Space Radiation Types 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-radiation-type-vs | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceRadiationTypeVS |

 
Types of radiation encountered in space 

 **References** 

* [Space Radiation Type](StructureDefinition-radiation-type.md)

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
  "id" : "space-radiation-type-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-radiation-type-vs",
  "version" : "0.5.1",
  "name" : "SpaceRadiationTypeVS",
  "title" : "Space Radiation Types",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Types of radiation encountered in space",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-radiation-type-cs"
      }
    ]
  }
}

```
