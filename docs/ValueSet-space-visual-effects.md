# Space Visual Effects - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Visual Effects**

## ValueSet: Space Visual Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-visual-effects | *Version*:0.5.2 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceVisualEffectsValueSet |

 
Visual and ocular effects relevant to human spaceflight, including visual impairment, optic nerve conditions, and intraocular pressure changes 

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
  "id" : "space-visual-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-visual-effects",
  "version" : "0.5.2",
  "name" : "SpaceVisualEffectsValueSet",
  "title" : "Space Visual Effects",
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
  "description" : "Visual and ocular effects relevant to human spaceflight, including visual impairment, optic nerve conditions, and intraocular pressure changes",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "40031005",
            "display" : "Visual impairment"
          },
          {
            "code" : "193703005",
            "display" : "Better eye: near total visual impairment, Lesser eye: total visual impairment"
          },
          {
            "code" : "193704004",
            "display" : "Better eye: near total visual impairment, Lesser eye: near total visual impairment"
          },
          {
            "code" : "18234004",
            "display" : "Optic nerve"
          },
          {
            "code" : "126968005",
            "display" : "Neoplasm of optic nerve"
          },
          {
            "code" : "14460007",
            "display" : "Hemorrhage in optic nerve sheaths"
          },
          {
            "code" : "23670006",
            "display" : "Decreased intraocular pressure"
          },
          {
            "code" : "24075007",
            "display" : "Abnormal intraocular pressure"
          },
          {
            "code" : "103274003",
            "display" : "Normal intraocular pressure with narrow cleft"
          },
          {
            "code" : "111526001",
            "display" : "Papilledema"
          },
          {
            "code" : "12184005",
            "display" : "Visual field defect"
          },
          {
            "code" : "33048000",
            "display" : "Peripheral visual field defect"
          },
          {
            "code" : "13164000",
            "display" : "Reduced visual acuity"
          },
          {
            "code" : "23986001",
            "display" : "Glaucoma"
          },
          {
            "code" : "81745001",
            "display" : "Eye"
          }
        ]
      }
    ]
  }
}

```
