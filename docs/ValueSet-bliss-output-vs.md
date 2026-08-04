# BLiSS Output Value Set - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BLiSS Output Value Set**

## ValueSet: BLiSS Output Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/bliss-output-vs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:BLiSSOutputVS |

 
Bioregenerative life support output types 

 **References** 

* [BLiSS Resource Output](StructureDefinition-bliss-resource-output.md)

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
  "id" : "bliss-output-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/bliss-output-vs",
  "version" : "0.6.2",
  "name" : "BLiSSOutputVS",
  "title" : "BLiSS Output Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Bioregenerative life support output types",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/bliss-output-cs"
      }
    ]
  }
}

```
