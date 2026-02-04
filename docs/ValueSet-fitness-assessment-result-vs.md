# Fitness Assessment Results - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fitness Assessment Results**

## ValueSet: Fitness Assessment Results 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/fitness-assessment-result-vs | *Version*:0.5.9 |
| Active as of 2026-02-04 | *Computable Name*:FitnessAssessmentResultVS |

 
Value set for fitness test termination criteria and outcomes. 

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
  "id" : "fitness-assessment-result-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/fitness-assessment-result-vs",
  "version" : "0.5.9",
  "name" : "FitnessAssessmentResultVS",
  "title" : "Fitness Assessment Results",
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
  "description" : "Value set for fitness test termination criteria and outcomes.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "255594003",
            "display" : "Complete"
          },
          {
            "code" : "397943006",
            "display" : "Planned"
          },
          {
            "code" : "410524007",
            "display" : "Stopped before completion"
          },
          {
            "code" : "84229001",
            "display" : "Fatigue"
          },
          {
            "code" : "22253000",
            "display" : "Pain"
          },
          {
            "code" : "271870002",
            "display" : "Orthostatic hypotension"
          }
        ]
      }
    ]
  }
}

```
