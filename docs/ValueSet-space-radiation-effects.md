# Space Radiation Effects - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Effects**

## ValueSet: Space Radiation Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-radiation-effects | *Version*:0.5.2 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceRadiationEffectsValueSet |

 
Radiation effects and conditions relevant to human spaceflight, including cosmic radiation, radiation sickness, and radiation injuries 

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
  "id" : "space-radiation-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-radiation-effects",
  "version" : "0.5.2",
  "name" : "SpaceRadiationEffectsValueSet",
  "title" : "Space Radiation Effects",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "Radiation effects and conditions relevant to human spaceflight, including cosmic radiation, radiation sickness, and radiation injuries",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "46316000",
            "display" : "Cosmic radiation"
          },
          {
            "code" : "242796004",
            "display" : "Exposure to cosmic radiation"
          },
          {
            "code" : "20558004",
            "display" : "Radiation sickness"
          },
          {
            "code" : "85983004",
            "display" : "Radiation sickness"
          },
          {
            "code" : "32215002",
            "display" : "Subacute radiation sickness"
          },
          {
            "code" : "45941008",
            "display" : "Chronic radiation sickness"
          },
          {
            "code" : "1791001",
            "display" : "Radiation injury with fibrosis"
          },
          {
            "code" : "22483007",
            "display" : "Radiation injury with inflammation"
          },
          {
            "code" : "30386001",
            "display" : "Radiation injury with necrosis"
          },
          {
            "code" : "81018009",
            "display" : "Radiation injury"
          },
          {
            "code" : "109301001",
            "display" : "Radiation injury of bone"
          },
          {
            "code" : "109953003",
            "display" : "Radiation injury of bone marrow"
          },
          {
            "code" : "123730007",
            "display" : "Acute radiation injury"
          },
          {
            "code" : "360002",
            "display" : "Acute radiation disease"
          },
          {
            "code" : "2966007",
            "display" : "Aplastic anemia secondary to radiation"
          },
          {
            "code" : "11804009",
            "display" : "Contact dermatitis due to solar radiation"
          }
        ]
      }
    ]
  }
}

```
