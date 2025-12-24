# Decompression Procedures - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Procedures**

## ValueSet: Decompression Procedures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/decompression-procedures | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DecompressionProcedures |

 
Standardized decompression procedures and protocols 

 **References** 

* [Decompression Algorithm Used](StructureDefinition-decompression-algorithm.md)
* [Decompression Protocol](StructureDefinition-decompression-protocol.md)
* [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)
* [Environmental Factors](StructureDefinition-environmental-factors.md)

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
  "id" : "decompression-procedures",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/decompression-procedures",
  "version" : "0.4.2",
  "name" : "DecompressionProcedures",
  "title" : "Decompression Procedures",
  "status" : "draft",
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
  "description" : "Standardized decompression procedures and protocols",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/decompression-protocol-cs"
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "44016006",
            "display" : "Decompression sickness"
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
