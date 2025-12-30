# Gimbal Contraindications - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gimbal Contraindications**

## ValueSet: Gimbal Contraindications 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/GimbalContraindicatedConditions | *Version*:0.5.3 |
| Draft as of 2025-12-29 | *Computable Name*:GimbalContraindicatedConditions |

 
Contraindicated conditions for riding a multi-axis gimbal 

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
  "id" : "GimbalContraindicatedConditions",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/GimbalContraindicatedConditions",
  "version" : "0.5.3",
  "name" : "GimbalContraindicatedConditions",
  "title" : "Gimbal Contraindications",
  "status" : "draft",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Contraindicated conditions for riding a multi-axis gimbal",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "82271004",
            "display" : "Injury of head (disorder)"
          },
          {
            "code" : "90460009",
            "display" : "Injury of neck (disorder)"
          },
          {
            "code" : "712893003",
            "display" : "Traumatic or non-traumatic injury of back (disorder)"
          },
          {
            "code" : "404640003",
            "display" : "Dizziness (disorder)"
          },
          {
            "code" : "19887002",
            "display" : "Claustrophobia (finding)"
          },
          {
            "code" : "77386006",
            "display" : "Pregnancy (finding)"
          },
          {
            "code" : "225931003",
            "display" : "At risk of epileptic fits (finding)"
          },
          {
            "code" : "88610006",
            "display" : "Heart murmur (finding)"
          },
          {
            "code" : "34068001",
            "display" : "Heart valve replacement (procedure)"
          },
          {
            "code" : "1153637007",
            "display" : "Body height (observable entity)"
          }
        ]
      }
    ]
  }
}

```
