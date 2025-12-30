# Brain and Neurologic Changes - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Brain and Neurologic Changes**

## ValueSet: Brain and Neurologic Changes 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SpaceTravelBrainChanges | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceTravelBrainChanges |

 
Concepts related to physiological and neurological changes from prolonged space travel. 

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
  "id" : "SpaceTravelBrainChanges",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SpaceTravelBrainChanges",
  "version" : "0.5.1",
  "name" : "SpaceTravelBrainChanges",
  "title" : "Brain and Neurologic Changes",
  "status" : "draft",
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
  "description" : "Concepts related to physiological and neurological changes from prolonged space travel.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "65124004",
            "display" : "Part of body puffy"
          },
          {
            "code" : "361533001",
            "display" : "Vestibular system"
          },
          {
            "code" : "68523003",
            "display" : "Cerebral white matter"
          },
          {
            "code" : "90545009",
            "display" : "Sensory perception"
          },
          {
            "code" : "37031009",
            "display" : "Motion sickness"
          },
          {
            "code" : "102957003",
            "display" : "Neuro-obs"
          },
          {
            "code" : "56246009",
            "display" : "Enlargement"
          },
          {
            "code" : "258450006",
            "display" : "CSF - Cerebrospinal fluid sample"
          },
          {
            "code" : "148269006",
            "display" : "Health education - exercise"
          }
        ]
      }
    ]
  }
}

```
