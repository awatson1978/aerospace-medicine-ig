# Underwater Communication Systems - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater Communication Systems**

## ValueSet: Underwater Communication Systems 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/underwater-communication-systems | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:UnderwaterCommunicationSystems |

 
Communication systems used in underwater training operations 

 **References** 

* [Underwater Communication System](StructureDefinition-underwater-communication-system.md)

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
  "id" : "underwater-communication-systems",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/underwater-communication-systems",
  "version" : "0.5.6",
  "name" : "UnderwaterCommunicationSystems",
  "title" : "Underwater Communication Systems",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Communication systems used in underwater training operations",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "hardwire-comm"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "through-water-comm"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "surface-comm"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "inter-diver-comm"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "full-face-mask"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "bone-conduction"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "pneumatic-comm"
          }
        ]
      }
    ]
  }
}

```
