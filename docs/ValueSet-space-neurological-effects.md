# Space Neurological Effects - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Neurological Effects**

## ValueSet: Space Neurological Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-neurological-effects | *Version*:0.5.0 |
| Draft as of 2025-12-25 | *Computable Name*:SpaceNeurologicalEffectsValueSet |

 
Neurological effects relevant to human spaceflight, including vestibular conditions, motion sickness, and intracranial pressure changes 

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
  "id" : "space-neurological-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-neurological-effects",
  "version" : "0.5.0",
  "name" : "SpaceNeurologicalEffectsValueSet",
  "title" : "Space Neurological Effects",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Neurological effects relevant to human spaceflight, including vestibular conditions, motion sickness, and intracranial pressure changes",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "246001",
            "display" : "Lateral vestibular nucleus"
          },
          {
            "code" : "3931001",
            "display" : "Vestibular window"
          },
          {
            "code" : "16860002",
            "display" : "Vestibular function test with observation and evaluation by physician"
          },
          {
            "code" : "8535002",
            "display" : "Cochleovestibular active Ménière's disease"
          },
          {
            "code" : "37031009",
            "display" : "Motion sickness"
          },
          {
            "code" : "3170006",
            "display" : "Papilledema associated with increased intracranial pressure"
          },
          {
            "code" : "11692000",
            "display" : "Normal intracranial pressure"
          },
          {
            "code" : "28073009",
            "display" : "Increased intracranial pressure"
          },
          {
            "code" : "57964004",
            "display" : "Decreased intracranial pressure"
          },
          {
            "code" : "12738006",
            "display" : "Brain"
          },
          {
            "code" : "68267002",
            "display" : "Benign intracranial hypertension"
          },
          {
            "code" : "3235001",
            "display" : "Disorder of balance"
          },
          {
            "code" : "10904000",
            "display" : "Orthostatic body position"
          }
        ]
      }
    ]
  }
}

```
