# Sleep Loss and Hypoxia Effects - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Loss and Hypoxia Effects**

## ValueSet: Sleep Loss and Hypoxia Effects 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SleepLossHypoxiaEffect | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SleepLossHypoxiaEffect |

 
Concepts related to the physiological and cognitive effects of sleep loss and hypoxia. 

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
  "id" : "SleepLossHypoxiaEffect",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SleepLossHypoxiaEffect",
  "version" : "0.5.5",
  "name" : "SleepLossHypoxiaEffect",
  "title" : "Sleep Loss and Hypoxia Effects",
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
  "description" : "Concepts related to the physiological and cognitive effects of sleep loss and hypoxia.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "86636006",
            "display" : "Sleep"
          },
          {
            "code" : "30869003",
            "display" : "Hypoxia"
          },
          {
            "code" : "246612009",
            "display" : "General visual responses"
          },
          {
            "code" : "30920001",
            "display" : "Circadian rhythm"
          },
          {
            "code" : "80216008",
            "display" : "Cognitive impairment"
          },
          {
            "code" : "113257007",
            "display" : "Cardiovascular system"
          },
          {
            "code" : "20139000",
            "display" : "Respiratory system"
          },
          {
            "code" : "104847001",
            "display" : "Oxygen saturation measurement"
          },
          {
            "code" : "284032008",
            "display" : "Oxygenation monitoring"
          },
          {
            "code" : "4452006",
            "display" : "Adaptation"
          },
          {
            "code" : "21979002",
            "display" : "Homeostasis"
          }
        ]
      }
    ]
  }
}

```
