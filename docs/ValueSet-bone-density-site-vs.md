# Bone Density Measurement Site Value Set - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bone Density Measurement Site Value Set**

## ValueSet: Bone Density Measurement Site Value Set (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/bone-density-site-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BoneDensitySiteVS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Anatomical sites for BMD measurement 

 **References** 

* [Bone Density Observation](StructureDefinition-bone-density-observation.md)

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
  "id" : "bone-density-site-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/bone-density-site-vs",
  "version" : "0.7.0",
  "name" : "BoneDensitySiteVS",
  "title" : "Bone Density Measurement Site Value Set",
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
  "description" : "Anatomical sites for BMD measurement",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "122496007",
            "display" : "Lumbar spine structure"
          },
          {
            "code" : "71341001",
            "display" : "Bone structure of femur"
          },
          {
            "code" : "29836001",
            "display" : "Hip region structure"
          },
          {
            "code" : "62413002",
            "display" : "Bone structure of radius"
          },
          {
            "code" : "12611008",
            "display" : "Bone structure of tibia"
          },
          {
            "code" : "80144004",
            "display" : "Calcaneus bone"
          }
        ]
      }
    ]
  }
}

```
