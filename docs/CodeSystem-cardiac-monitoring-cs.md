# Cardiac Monitoring Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cardiac Monitoring Code System**

## CodeSystem: Cardiac Monitoring Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:CardiacMonitoringCS |

 
Cardiac monitoring parameters for spaceflight ECG assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CardiacMonitoringVS](ValueSet-cardiac-monitoring-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cardiac-monitoring-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/cardiac-monitoring-cs",
  "version" : "0.6.0",
  "name" : "CardiacMonitoringCS",
  "title" : "Cardiac Monitoring Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Cardiac monitoring parameters for spaceflight ECG assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "qt-interval",
      "display" : "QT Interval",
      "definition" : "QT interval duration on ECG"
    },
    {
      "code" : "qtc-interval",
      "display" : "Corrected QT Interval (QTc)",
      "definition" : "Rate-corrected QT interval"
    },
    {
      "code" : "pr-interval",
      "display" : "PR Interval",
      "definition" : "PR interval duration on ECG"
    },
    {
      "code" : "qrs-duration",
      "display" : "QRS Duration",
      "definition" : "QRS complex duration on ECG"
    },
    {
      "code" : "arrhythmia-classification",
      "display" : "Arrhythmia Classification",
      "definition" : "Classification of detected cardiac arrhythmia"
    }
  ]
}

```
