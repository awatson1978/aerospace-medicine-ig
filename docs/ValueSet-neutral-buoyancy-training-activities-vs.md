# Neutral Buoyancy Training Activities - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Training Activities**

## ValueSet: Neutral Buoyancy Training Activities (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/neutral-buoyancy-training-activities-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NeutralBuoyancyTrainingActivities |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of training activities conducted in neutral buoyancy environments 

 **References** 

* [Neutral Buoyancy Training Session](StructureDefinition-neutral-buoyancy-session.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "neutral-buoyancy-training-activities-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/neutral-buoyancy-training-activities-vs",
  "version" : "0.7.0",
  "name" : "NeutralBuoyancyTrainingActivities",
  "title" : "Neutral Buoyancy Training Activities",
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
  "description" : "Types of training activities conducted in neutral buoyancy environments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "eva-simulation"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "tool-manipulation"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "emergency-egress"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "crew-coordination"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "equipment-familiarization"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "habitat-construction"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "scientific-sampling"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "maintenance-repair"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "182813001",
            "display" : "Training activity"
          }
        ]
      }
    ]
  }
}

```
