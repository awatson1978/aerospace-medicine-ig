# MRID Launch Context Type - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Launch Context Type**

## ValueSet: MRID Launch Context Type 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/mrid-launch-context-type-vs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:MRIDLaunchContextTypeVS |

 
FHIR resource types for launch context in MRID questionnaires 

 **References** 

* [MRID Launch Context](StructureDefinition-mrid-launch-context.md)

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
  "id" : "mrid-launch-context-type-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/mrid-launch-context-type-vs",
  "version" : "0.5.10",
  "name" : "MRIDLaunchContextTypeVS",
  "title" : "MRID Launch Context Type",
  "status" : "active",
  "date" : "2026-03-12T10:22:25-05:00",
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
  "description" : "FHIR resource types for launch context in MRID questionnaires",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/mrid-launch-context-type-cs"
      }
    ]
  }
}

```
