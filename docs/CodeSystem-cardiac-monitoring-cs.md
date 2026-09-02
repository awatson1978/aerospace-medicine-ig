# Cardiac Monitoring Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cardiac Monitoring Code System**

## CodeSystem: Cardiac Monitoring Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cardiac-monitoring-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CardiacMonitoringCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Cardiac monitoring parameters for spaceflight ECG assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CardiacMonitoringVS](ValueSet-cardiac-monitoring-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cardiac-monitoring-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cardiac-monitoring-cs",
  "version" : "0.7.0",
  "name" : "CardiacMonitoringCS",
  "title" : "Cardiac Monitoring Code System",
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
  "description" : "Cardiac monitoring parameters for spaceflight ECG assessment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
