# Space Omics Type Value Set - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Omics Type Value Set**

## ValueSet: Space Omics Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-omics-type-vs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceOmicsTypeVS |

 
Multi-omics analysis types 

 **References** 

* [Multi-Omics Observation](StructureDefinition-multi-omics-observation.md)

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
  "id" : "space-omics-type-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-omics-type-vs",
  "version" : "0.6.0",
  "name" : "SpaceOmicsTypeVS",
  "title" : "Space Omics Type Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Multi-omics analysis types",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-omics-type-cs"
      }
    ]
  }
}

```
