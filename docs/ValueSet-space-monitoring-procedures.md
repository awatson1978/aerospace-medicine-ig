# Space Monitoring Procedures - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Monitoring Procedures**

## ValueSet: Space Monitoring Procedures (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-monitoring-procedures | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceMonitoringProceduresValueSet |

 
Monitoring procedures relevant to human spaceflight, including vital signs monitoring and physiological monitoring 

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
  "id" : "space-monitoring-procedures",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-monitoring-procedures",
  "version" : "0.5.6",
  "name" : "SpaceMonitoringProceduresValueSet",
  "title" : "Space Monitoring Procedures",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Monitoring procedures relevant to human spaceflight, including vital signs monitoring and physiological monitoring",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "33581006",
            "display" : "Monitoring patient vital signs by nurse"
          },
          {
            "code" : "34667007",
            "display" : "Special care of neurological patient, with neurological vital signs"
          },
          {
            "code" : "82856007",
            "display" : "Taking neurologic vital signs"
          },
          {
            "code" : "118227000",
            "display" : "Vital signs finding"
          },
          {
            "code" : "46680005",
            "display" : "Vital signs"
          },
          {
            "code" : "72970002",
            "display" : "Normal vital signs"
          },
          {
            "code" : "252793002",
            "display" : "Intraoperative neurophysiological monitoring"
          },
          {
            "code" : "281691001",
            "display" : "Physiological monitoring regimes"
          },
          {
            "code" : "304493006",
            "display" : "Multisystem physiological monitoring regimes"
          },
          {
            "code" : "16830007",
            "display" : "Visual acuity testing"
          },
          {
            "code" : "16860002",
            "display" : "Vestibular function test with observation and evaluation by physician"
          },
          {
            "code" : "2982008",
            "display" : "Monitoring of blood pressure"
          },
          {
            "code" : "12569007",
            "display" : "Biofeedback, regulation of blood pressure"
          }
        ]
      }
    ]
  }
}

```
