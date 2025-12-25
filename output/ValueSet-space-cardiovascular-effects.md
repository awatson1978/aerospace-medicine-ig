# Space Cardiovascular Effects - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Cardiovascular Effects**

## ValueSet: Space Cardiovascular Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-cardiovascular-effects | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceCardiovascularEffectsValueSet |

 
Cardiovascular effects and conditions relevant to human spaceflight, including orthostatic intolerance, heart rate changes, and blood pressure 

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
  "id" : "space-cardiovascular-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-cardiovascular-effects",
  "version" : "0.4.2",
  "name" : "SpaceCardiovascularEffectsValueSet",
  "title" : "Space Cardiovascular Effects",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Cardiovascular effects and conditions relevant to human spaceflight, including orthostatic intolerance, heart rate changes, and blood pressure",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "28651003",
            "display" : "Orthostatic hypotension"
          },
          {
            "code" : "75181005",
            "display" : "Chronic orthostatic hypotension"
          },
          {
            "code" : "84438001",
            "display" : "Idiopathic orthostatic hypotension"
          },
          {
            "code" : "230664009",
            "display" : "Sympathotonic orthostatic hypotension"
          },
          {
            "code" : "80042002",
            "display" : "Heart rate"
          },
          {
            "code" : "28352003",
            "display" : "Irregular heart rate"
          },
          {
            "code" : "2004005",
            "display" : "Normal blood pressure"
          },
          {
            "code" : "12763006",
            "display" : "Decreased blood pressure, not hypotension"
          },
          {
            "code" : "12929001",
            "display" : "Normal systolic blood pressure"
          },
          {
            "code" : "3424008",
            "display" : "Tachycardia"
          },
          {
            "code" : "6456007",
            "display" : "Supraventricular tachycardia"
          },
          {
            "code" : "17594002",
            "display" : "Fetal bradycardia affecting management of mother"
          },
          {
            "code" : "29894000",
            "display" : "Vagal bradycardia"
          },
          {
            "code" : "6285003",
            "display" : "Tachyarrhythmia"
          },
          {
            "code" : "17366009",
            "display" : "Atrial arrhythmia"
          }
        ]
      }
    ]
  }
}

```
