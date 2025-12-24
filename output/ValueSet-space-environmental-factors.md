# Space Environmental Factors - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Environmental Factors**

## ValueSet: Space Environmental Factors (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-environmental-factors | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceEnvironmentalFactorsValueSet |

 
Environmental factors relevant to human spaceflight, including weightlessness, radiation, isolation, and decompression 

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
  "id" : "space-environmental-factors",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-environmental-factors",
  "version" : "0.4.2",
  "name" : "SpaceEnvironmentalFactorsValueSet",
  "title" : "Space Environmental Factors",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Environmental factors relevant to human spaceflight, including weightlessness, radiation, isolation, and decompression",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "37247000",
            "display" : "Weightlessness"
          },
          {
            "code" : "212989002",
            "display" : "Weightlessness"
          },
          {
            "code" : "242028000",
            "display" : "Weightlessness"
          },
          {
            "code" : "46316000",
            "display" : "Cosmic radiation"
          },
          {
            "code" : "242796004",
            "display" : "Exposure to cosmic radiation"
          },
          {
            "code" : "138899005",
            "display" : "H/O: radiation exposure"
          },
          {
            "code" : "148459003",
            "display" : "Radiation exposure screening"
          },
          {
            "code" : "16197009",
            "display" : "Social isolation"
          },
          {
            "code" : "64441002",
            "display" : "Social isolation"
          },
          {
            "code" : "19842001",
            "display" : "Isolation after contact with infectious disease"
          },
          {
            "code" : "44532001",
            "display" : "Barotrauma"
          },
          {
            "code" : "49252004",
            "display" : "Otitic barotrauma"
          },
          {
            "code" : "123672002",
            "display" : "Pulmonary barotrauma"
          },
          {
            "code" : "33499000",
            "display" : "Oxygen toxicity"
          },
          {
            "code" : "78427001",
            "display" : "Occupational noise exposure"
          },
          {
            "code" : "44016006",
            "display" : "Decompression sickness"
          },
          {
            "code" : "89684003",
            "display" : "Decompression sickness"
          },
          {
            "code" : "5770003",
            "display" : "Decompression injury"
          }
        ]
      }
    ]
  }
}

```
