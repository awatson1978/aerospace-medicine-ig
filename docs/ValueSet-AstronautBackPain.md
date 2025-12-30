# Back Pain and Space Travel - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Back Pain and Space Travel**

## ValueSet: Back Pain and Space Travel 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/AstronautBackPain | *Version*:0.5.4 |
| Draft as of 2025-12-29 | *Computable Name*:AstronautBackPain |

 
Back pain and associated conditions observed in astronauts and their potential terrestrial applications. 

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
  "id" : "AstronautBackPain",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/AstronautBackPain",
  "version" : "0.5.4",
  "name" : "AstronautBackPain",
  "title" : "Back Pain and Space Travel",
  "status" : "draft",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Back pain and associated conditions observed in astronauts and their potential terrestrial applications.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "16986008",
            "display" : "Pain in back"
          },
          {
            "code" : "46360000",
            "display" : "Abnormal curvature"
          },
          {
            "code" : "73589001",
            "display" : "Herniation of intervertebral disc"
          },
          {
            "code" : "229138000",
            "display" : "Back exercises"
          },
          {
            "code" : "229239004",
            "display" : "Neuromuscular stimulation"
          },
          {
            "code" : "82423001",
            "display" : "Chronic pain"
          }
        ]
      }
    ]
  }
}

```
