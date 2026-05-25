# Bone Density Method Value Set - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bone Density Method Value Set**

## ValueSet: Bone Density Method Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/bone-density-method-vs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BoneDensityMethodVS |

 
Methods for BMD measurement 

 **References** 

* [Bone Density Observation](StructureDefinition-bone-density-observation.md)

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
  "id" : "bone-density-method-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/bone-density-method-vs",
  "version" : "0.6.0",
  "name" : "BoneDensityMethodVS",
  "title" : "Bone Density Method Value Set",
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
  "description" : "Methods for BMD measurement",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/bone-density-method-cs"
      }
    ]
  }
}

```
