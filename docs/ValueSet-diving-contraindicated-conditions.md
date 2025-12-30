# Diving Medical Contraindications - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Medical Contraindications**

## ValueSet: Diving Medical Contraindications 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/diving-contraindicated-conditions | *Version*:0.5.3 |
| Draft as of 2025-12-29 | *Computable Name*:DivingContraindicatedConditions |

 
Medical conditions that contraindicate diving activities 

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
  "id" : "diving-contraindicated-conditions",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/diving-contraindicated-conditions",
  "version" : "0.5.3",
  "name" : "DivingContraindicatedConditions",
  "title" : "Diving Medical Contraindications",
  "status" : "draft",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Medical conditions that contraindicate diving activities",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "49436004",
            "display" : "Atrial fibrillation"
          },
          {
            "code" : "195967001",
            "display" : "Asthma"
          },
          {
            "code" : "84757009",
            "display" : "Epilepsy"
          },
          {
            "code" : "230690007",
            "display" : "Cerebrovascular accident"
          },
          {
            "code" : "19887002",
            "display" : "Claustrophobia"
          },
          {
            "code" : "77386006",
            "display" : "Pregnancy"
          },
          {
            "code" : "38341003",
            "display" : "Hypertensive disorder"
          },
          {
            "code" : "73211009",
            "display" : "Diabetes mellitus"
          },
          {
            "code" : "44016006",
            "display" : "Decompression sickness"
          },
          {
            "code" : "49532004",
            "display" : "Barotrauma"
          },
          {
            "code" : "233604007",
            "display" : "Pneumothorax"
          },
          {
            "code" : "128238001",
            "display" : "Chronic heart disease"
          }
        ]
      }
    ]
  }
}

```
