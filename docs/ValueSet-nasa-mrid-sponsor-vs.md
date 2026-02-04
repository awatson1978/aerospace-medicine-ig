# NASA MRID Sponsor Organizations - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA MRID Sponsor Organizations**

## ValueSet: NASA MRID Sponsor Organizations 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/nasa-mrid-sponsor-vs | *Version*:0.5.9 |
| Active as of 2026-02-04 | *Computable Name*:NASAMRIDSponsorVS |

 
Value set for NASA MRID sponsor organizations. 

 **References** 

* [MRID Sponsor](StructureDefinition-mrid-sponsor.md)

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
  "id" : "nasa-mrid-sponsor-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/nasa-mrid-sponsor-vs",
  "version" : "0.5.9",
  "name" : "NASAMRIDSponsorVS",
  "title" : "NASA MRID Sponsor Organizations",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-04T10:26:00-06:00",
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
  "description" : "Value set for NASA MRID sponsor organizations.",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs"
      }
    ]
  }
}

```
