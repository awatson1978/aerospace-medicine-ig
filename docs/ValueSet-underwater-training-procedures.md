# Underwater Training Procedures - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater Training Procedures**

## ValueSet: Underwater Training Procedures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/underwater-training-procedures | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:UnderwaterTrainingProcedures |

 
Procedures and activities conducted during underwater training 

 **References** 

* [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md)

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
  "id" : "underwater-training-procedures",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/underwater-training-procedures",
  "version" : "0.5.1",
  "name" : "UnderwaterTrainingProcedures",
  "title" : "Underwater Training Procedures",
  "status" : "draft",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Procedures and activities conducted during underwater training",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "182813001",
            "display" : "Training activity"
          },
          {
            "code" : "LA6165-9",
            "display" : "EVA simulation"
          },
          {
            "code" : "LA6166-7",
            "display" : "Tool manipulation training"
          },
          {
            "code" : "LA6167-5",
            "display" : "Emergency egress training"
          },
          {
            "code" : "LA6168-3",
            "display" : "Communication training"
          },
          {
            "code" : "LA6169-1",
            "display" : "Crew coordination training"
          },
          {
            "code" : "LA6170-9",
            "display" : "Equipment familiarization"
          }
        ]
      }
    ]
  }
}

```
