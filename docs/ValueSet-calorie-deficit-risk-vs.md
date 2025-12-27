# Calorie Deficit Risk Levels - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Calorie Deficit Risk Levels**

## ValueSet: Calorie Deficit Risk Levels 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/calorie-deficit-risk-vs | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:CalorieDeficitRiskVS |

 
Risk categorization for caloric deficits 

 **References** 

* [Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md)

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
  "id" : "calorie-deficit-risk-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/calorie-deficit-risk-vs",
  "version" : "0.5.0",
  "name" : "CalorieDeficitRiskVS",
  "title" : "Calorie Deficit Risk Levels",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Risk categorization for caloric deficits",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/calorie-deficit-risk-cs"
      }
    ]
  }
}

```
