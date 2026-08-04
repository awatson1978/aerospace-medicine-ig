# Bone Density Measurement Site Value Set - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bone Density Measurement Site Value Set**

## ValueSet: Bone Density Measurement Site Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/bone-density-site-vs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:BoneDensitySiteVS |

 
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
  "url" : "https://mitre.org/fhir/space-health/ValueSet/bone-density-site-vs",
  "version" : "0.6.2",
  "name" : "BoneDensitySiteVS",
  "title" : "Bone Density Measurement Site Value Set",
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
  "description" : "Anatomical sites for BMD measurement",
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
