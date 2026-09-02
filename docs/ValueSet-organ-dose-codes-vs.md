# Organ-Specific Dose Codes - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organ-Specific Dose Codes**

## ValueSet: Organ-Specific Dose Codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/organ-dose-codes-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:OrganDoseCodesVS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Codes for organ-specific radiation dose measurements (bone marrow, lens of eye, skin, CNS, thyroid, gonads, lung, GI tract, whole body). 

 **References** 

* [Space Radiation Exposure](StructureDefinition-space-radiation-exposure.md)

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
  "id" : "organ-dose-codes-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/organ-dose-codes-vs",
  "version" : "0.7.0",
  "name" : "OrganDoseCodesVS",
  "title" : "Organ-Specific Dose Codes",
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
  "description" : "Codes for organ-specific radiation dose measurements (bone marrow, lens of eye, skin, CNS, thyroid, gonads, lung, GI tract, whole body).",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
        "concept" : [
          {
            "code" : "bone-marrow-dose"
          },
          {
            "code" : "eye-lens-dose"
          },
          {
            "code" : "skin-dose"
          },
          {
            "code" : "cns-dose"
          },
          {
            "code" : "thyroid-dose"
          },
          {
            "code" : "gonad-dose"
          },
          {
            "code" : "lung-dose"
          },
          {
            "code" : "gi-tract-dose"
          },
          {
            "code" : "whole-body-dose"
          }
        ]
      }
    ]
  }
}

```
