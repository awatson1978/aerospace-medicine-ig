# Space Exercise Modality Value Set - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Modality Value Set**

## ValueSet: Space Exercise Modality Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/space-exercise-modality-vs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:SpaceExerciseModalityVS |

 
Permitted space exercise modalities, derived from the Space Exercise Modality Code System. 

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
  "id" : "space-exercise-modality-vs",
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/space-exercise-modality-vs",
  "version" : "0.4.2",
  "name" : "SpaceExerciseModalityVS",
  "title" : "Space Exercise Modality Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Permitted space exercise modalities, derived from the Space Exercise Modality Code System.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs"
      }
    ]
  }
}

```
