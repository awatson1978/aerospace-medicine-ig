# Decompression Procedures - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Procedures**

## ValueSet: Decompression Procedures (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/decompression-procedures-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:DecompressionProcedures |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Standardized decompression procedures and protocols 

 **References** 

* [Decompression Algorithm Used](StructureDefinition-decompression-algorithm.md)
* [Decompression Protocol](StructureDefinition-decompression-protocol.md)
* [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)
* [Environmental Factors](StructureDefinition-environmental-factors.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "decompression-procedures-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/decompression-procedures-vs",
  "version" : "0.7.0",
  "name" : "DecompressionProcedures",
  "title" : "Decompression Procedures",
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
  "description" : "Standardized decompression procedures and protocols",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/decompression-protocol-cs"
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "37347000",
            "display" : "Caisson disease"
          },
          {
            "code" : "182813001",
            "display" : "Training activity"
          }
        ]
      }
    ]
  }
}

```
