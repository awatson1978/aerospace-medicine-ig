# NASA Postflight Schedule Offsets - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Postflight Schedule Offsets**

## ValueSet: NASA Postflight Schedule Offsets 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/nasa-postflight-offset-vs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:NASAPostflightOffsetVS |

 
Value set for R-plus postflight schedule offsets. 

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
  "id" : "nasa-postflight-offset-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/nasa-postflight-offset-vs",
  "version" : "0.5.10",
  "name" : "NASAPostflightOffsetVS",
  "title" : "NASA Postflight Schedule Offsets",
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
  "description" : "Value set for R-plus postflight schedule offsets.",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
        "concept" : [
          {
            "code" : "R-0"
          },
          {
            "code" : "R-3d"
          },
          {
            "code" : "R-5d"
          },
          {
            "code" : "R-7d"
          },
          {
            "code" : "R-14d"
          },
          {
            "code" : "R-30d"
          },
          {
            "code" : "R-45d"
          },
          {
            "code" : "R-60d"
          }
        ]
      }
    ]
  }
}

```
