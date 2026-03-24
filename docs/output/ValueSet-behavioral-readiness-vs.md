# Behavioral Readiness Assessment - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behavioral Readiness Assessment**

## ValueSet: Behavioral Readiness Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/behavioral-readiness-vs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:BehavioralReadinessVS |

 
Value set for behavioral/psychological flight readiness outcomes. 

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
  "id" : "behavioral-readiness-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/behavioral-readiness-vs",
  "version" : "0.5.10",
  "name" : "BehavioralReadinessVS",
  "title" : "Behavioral Readiness Assessment",
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
  "description" : "Value set for behavioral/psychological flight readiness outcomes.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "17621005",
            "display" : "Normal"
          },
          {
            "code" : "263654008",
            "display" : "Abnormal"
          },
          {
            "code" : "260385009",
            "display" : "Negative"
          },
          {
            "code" : "10828004",
            "display" : "Positive"
          }
        ]
      }
    ]
  }
}

```
