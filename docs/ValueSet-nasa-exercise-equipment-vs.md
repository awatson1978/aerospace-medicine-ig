# NASA Exercise Equipment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Exercise Equipment**

## ValueSet: NASA Exercise Equipment (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/nasa-exercise-equipment-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NASAExerciseEquipmentVS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Value set for exercise and fitness assessment hardware. 

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
  "id" : "nasa-exercise-equipment-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/nasa-exercise-equipment-vs",
  "version" : "0.7.0",
  "name" : "NASAExerciseEquipmentVS",
  "title" : "NASA Exercise Equipment",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "description" : "Value set for exercise and fitness assessment hardware.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-medical-hardware-cs",
        "concept" : [
          {
            "code" : "t2-treadmill"
          },
          {
            "code" : "ared"
          },
          {
            "code" : "cevis"
          },
          {
            "code" : "quinton-treadmill"
          },
          {
            "code" : "cybex-leg-press"
          },
          {
            "code" : "hand-grip-dynamometer"
          },
          {
            "code" : "sit-reach-bench"
          },
          {
            "code" : "smith-bench"
          }
        ]
      }
    ]
  }
}

```
