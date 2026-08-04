# Space Specimen Type Value Set - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Specimen Type Value Set**

## ValueSet: Space Specimen Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-specimen-type-vs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceSpecimenTypeVS |

 
Specimen types collected during spaceflight 

 **References** 

* [Space Specimen Collection](StructureDefinition-space-specimen-collection.md)
* [Spaceflight Specimen](StructureDefinition-spaceflight-specimen.md)

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
  "id" : "space-specimen-type-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-specimen-type-vs",
  "version" : "0.6.2",
  "name" : "SpaceSpecimenTypeVS",
  "title" : "Space Specimen Type Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Specimen types collected during spaceflight",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-specimen-type-cs"
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "119297000",
            "display" : "Blood specimen"
          },
          {
            "code" : "119364003",
            "display" : "Serum specimen"
          },
          {
            "code" : "122575003",
            "display" : "Urine specimen"
          },
          {
            "code" : "119342007",
            "display" : "Saliva specimen"
          }
        ]
      }
    ]
  }
}

```
