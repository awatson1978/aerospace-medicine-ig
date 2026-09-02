# Underwater Communication Systems - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater Communication Systems**

## ValueSet: Underwater Communication Systems (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/underwater-communication-systems-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:UnderwaterCommunicationSystems |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
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
  "id" : "underwater-communication-systems-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/underwater-communication-systems-vs",
  "version" : "0.7.0",
  "name" : "UnderwaterCommunicationSystems",
  "title" : "Underwater Communication Systems",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "hardwire-comm"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "through-water-comm"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "surface-comm"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "inter-diver-comm"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "full-face-mask"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "bone-conduction"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
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
