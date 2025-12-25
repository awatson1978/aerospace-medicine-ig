# Space Radiation Risks ValueSet - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Risks ValueSet**

## ValueSet: Space Radiation Risks ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SpaceRadiationRisksVS | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceRadiationRisksVS |

 
Concepts relevant to space radiation risks and associated health concerns identified from Artemis I mission data. 

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
  "id" : "SpaceRadiationRisksVS",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SpaceRadiationRisksVS",
  "version" : "0.4.2",
  "name" : "SpaceRadiationRisksVS",
  "title" : "Space Radiation Risks ValueSet",
  "status" : "draft",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Concepts relevant to space radiation risks and associated health concerns identified from Artemis I mission data.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "138899005",
            "display" : "H/O: radiation exposure"
          },
          {
            "code" : "95722004",
            "display" : "Bilateral cataracts"
          },
          {
            "code" : "229040007",
            "display" : "radiation absorbed dose"
          }
        ]
      }
    ]
  }
}

```
