# Muscle Stiffness - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Muscle Stiffness**

## ValueSet: Muscle Stiffness 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/MuscleStiffnessAndSpaceHealth | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:MuscleStiffnessAndSpaceHealth |

 
Concepts related to muscle stiffness and health in the context of spaceflight and Earth-based applications. 

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
  "id" : "MuscleStiffnessAndSpaceHealth",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/MuscleStiffnessAndSpaceHealth",
  "version" : "0.4.2",
  "name" : "MuscleStiffnessAndSpaceHealth",
  "title" : "Muscle Stiffness",
  "status" : "draft",
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Concepts related to muscle stiffness and health in the context of spaceflight and Earth-based applications.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "16046003",
            "display" : "Muscle stiffness"
          },
          {
            "code" : "249919003",
            "display" : "Muscle stiffness"
          },
          {
            "code" : "162411004",
            "display" : "C/O: stiffness"
          },
          {
            "code" : "181696007",
            "display" : "Tibialis anterior"
          }
        ]
      }
    ]
  }
}

```
