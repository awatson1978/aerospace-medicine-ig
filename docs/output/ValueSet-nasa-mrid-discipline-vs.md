# NASA MRID Medical Disciplines - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA MRID Medical Disciplines**

## ValueSet: NASA MRID Medical Disciplines 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/nasa-mrid-discipline-vs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:NASAMRIDDisciplineVS |

 
Value set for NASA MRID medical disciplines. 

 **References** 

* [MRID Discipline](StructureDefinition-mrid-discipline.md)

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
  "id" : "nasa-mrid-discipline-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/nasa-mrid-discipline-vs",
  "version" : "0.5.10",
  "name" : "NASAMRIDDisciplineVS",
  "title" : "NASA MRID Medical Disciplines",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Value set for NASA MRID medical disciplines.",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs"
      }
    ]
  }
}

```
