# Behavioral Biomarker Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behavioral Biomarker Code System**

## CodeSystem: Behavioral Biomarker Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/behavioral-biomarker-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BehavioralBiomarkerCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Codes for physiologic and digital biomarkers related to behavioral health and stress. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CognitivePerformanceIndicatorsVS](ValueSet-cognitive-performance-indicators-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "behavioral-biomarker-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/behavioral-biomarker-cs",
  "version" : "0.7.0",
  "name" : "BehavioralBiomarkerCS",
  "title" : "Behavioral Biomarker Code System",
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
  "description" : "Codes for physiologic and digital biomarkers related to behavioral health and stress.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "sleep-efficiency-pct",
      "display" : "Sleep efficiency (%)",
      "definition" : "Percentage of time in bed spent asleep."
    },
    {
      "code" : "awakenings-count",
      "display" : "Nocturnal awakenings (count)",
      "definition" : "Number of awakenings during sleep period."
    },
    {
      "code" : "speech-stress-index",
      "display" : "Speech stress index",
      "definition" : "Derived metric from speech prosody indicating stress level."
    },
    {
      "code" : "activity-level",
      "display" : "Activity level",
      "definition" : "Gross motor activity level from accelerometry."
    },
    {
      "code" : "reaction-time-ms",
      "display" : "Reaction time (ms)",
      "definition" : "Reaction time in milliseconds from vigilance or cognitive tests."
    }
  ]
}

```
