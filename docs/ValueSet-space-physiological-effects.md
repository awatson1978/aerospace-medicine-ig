# Space Physiological Effects - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Physiological Effects**

## ValueSet: Space Physiological Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-physiological-effects | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SpacePhysiologicalEffectsValueSet |

 
Physiological effects and conditions relevant to human spaceflight, including motion sickness, bone loss, muscle atrophy, and sleep disorders 

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
  "id" : "space-physiological-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-physiological-effects",
  "version" : "0.5.1",
  "name" : "SpacePhysiologicalEffectsValueSet",
  "title" : "Space Physiological Effects",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Physiological effects and conditions relevant to human spaceflight, including motion sickness, bone loss, muscle atrophy, and sleep disorders",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "37031009",
            "display" : "Motion sickness"
          },
          {
            "code" : "88092000",
            "display" : "Muscle atrophy"
          },
          {
            "code" : "156721007",
            "display" : "Disuse muscle atrophy"
          },
          {
            "code" : "240129002",
            "display" : "Disuse muscle atrophy"
          },
          {
            "code" : "109706009",
            "display" : "Alveolar bone loss"
          },
          {
            "code" : "109709002",
            "display" : "Horizontal alveolar bone loss"
          },
          {
            "code" : "109710007",
            "display" : "Vertical alveolar bone loss"
          },
          {
            "code" : "28651003",
            "display" : "Orthostatic hypotension"
          },
          {
            "code" : "84438001",
            "display" : "Idiopathic orthostatic hypotension"
          },
          {
            "code" : "75181005",
            "display" : "Chronic orthostatic hypotension"
          },
          {
            "code" : "40031005",
            "display" : "Visual impairment"
          },
          {
            "code" : "39898005",
            "display" : "Sleep disorder"
          },
          {
            "code" : "111489007",
            "display" : "Breathing-related sleep disorder"
          },
          {
            "code" : "30920001",
            "display" : "Circadian rhythm"
          },
          {
            "code" : "15976004",
            "display" : "Abnormal circadian rhythm"
          },
          {
            "code" : "3745000",
            "display" : "Circadian rhythm sleep disorder"
          },
          {
            "code" : "271794005",
            "display" : "Circadian dysregulation"
          },
          {
            "code" : "62577008",
            "display" : "Insomnia"
          },
          {
            "code" : "30869003",
            "display" : "Hypoxia"
          },
          {
            "code" : "238158000",
            "display" : "Hyperoxia"
          },
          {
            "code" : "250844005",
            "display" : "Intracranial pressure"
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
            "code" : "16986008",
            "display" : "Back pain"
          },
          {
            "code" : "78441005",
            "display" : "Osteopenia"
          },
          {
            "code" : "64859006",
            "display" : "Osteoporosis"
          },
          {
            "code" : "16046003",
            "display" : "Muscle stiffness"
          }
        ]
      }
    ]
  }
}

```
