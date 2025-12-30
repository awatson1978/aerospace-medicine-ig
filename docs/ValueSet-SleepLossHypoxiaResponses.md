# Sleep Loss and Hypoxia Responses - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Loss and Hypoxia Responses**

## ValueSet: Sleep Loss and Hypoxia Responses 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SleepLossHypoxiaResponses | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SleepLossHypoxiaResponses |

 
Concepts related to sleep deprivation and physiological/cognitive responses to systemic environmental hypoxia. 

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
  "id" : "SleepLossHypoxiaResponses",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SleepLossHypoxiaResponses",
  "version" : "0.5.5",
  "name" : "SleepLossHypoxiaResponses",
  "title" : "Sleep Loss and Hypoxia Responses",
  "status" : "draft",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Concepts related to sleep deprivation and physiological/cognitive responses to systemic environmental hypoxia.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "78590007",
            "display" : "Acute mountain sickness"
          },
          {
            "code" : "130989002",
            "display" : "Sleep deprivation"
          },
          {
            "code" : "30869003",
            "display" : "Hypoxia"
          },
          {
            "code" : "233707008",
            "display" : "High altitude pulmonary edema"
          },
          {
            "code" : "230762003",
            "display" : "High altitude cerebral edema"
          },
          {
            "code" : "23583003",
            "display" : "Inflammation"
          },
          {
            "code" : "50530005",
            "display" : "Cheyne-stokes breathing"
          },
          {
            "code" : "55235003",
            "display" : "CRP - C-reactive protein level"
          },
          {
            "code" : "15754000",
            "display" : "Interleukin-7"
          }
        ]
      }
    ]
  }
}

```
