# Stress Countermeasures Value Set - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stress Countermeasures Value Set**

## ValueSet: Stress Countermeasures Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/stress-countermeasures-vs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:StressCountermeasuresVS |

 
Standardized set of psychological countermeasures used to mitigate stress and support mental health. 

 **References** 

* [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

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
  "id" : "stress-countermeasures-vs",
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/stress-countermeasures-vs",
  "version" : "0.5.5",
  "name" : "StressCountermeasuresVS",
  "title" : "Stress Countermeasures Value Set",
  "status" : "active",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "Standardized set of psychological countermeasures used to mitigate stress and support mental health.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/psychological-countermeasure-cs"
      }
    ]
  }
}

```
