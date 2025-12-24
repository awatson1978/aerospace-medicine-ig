# Neutral Buoyancy Training Activities - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Training Activities**

## ValueSet: Neutral Buoyancy Training Activities 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/neutral-buoyancy-training-activities | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:NeutralBuoyancyTrainingActivities |

 
Types of training activities conducted in neutral buoyancy environments 

 **References** 

* [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

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
  "id" : "neutral-buoyancy-training-activities",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/neutral-buoyancy-training-activities",
  "version" : "0.4.2",
  "name" : "NeutralBuoyancyTrainingActivities",
  "title" : "Neutral Buoyancy Training Activities",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Types of training activities conducted in neutral buoyancy environments",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "eva-simulation"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "tool-manipulation"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "emergency-egress"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "crew-coordination"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "equipment-familiarization"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "habitat-construction"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "scientific-sampling"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/neutral-buoyancy-training-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "maintenance-repair"
          }
        ]
      }
    ]
  }
}

```
