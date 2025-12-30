# Behavioral Biomarker Code System - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behavioral Biomarker Code System**

## CodeSystem: Behavioral Biomarker Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:BehavioralBiomarkerCS |

 
Codes for physiologic and digital biomarkers related to behavioral health and stress. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CognitivePerformanceIndicatorsVS](ValueSet-cognitive-performance-indicators-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "behavioral-biomarker-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
  "version" : "0.5.5",
  "name" : "BehavioralBiomarkerCS",
  "title" : "Behavioral Biomarker Code System",
  "status" : "active",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "cortisol-ugdl",
      "display" : "Cortisol (µg/dL)",
      "definition" : "Cortisol concentration used as a stress biomarker."
    },
    {
      "code" : "hrv-ms",
      "display" : "Heart rate variability (ms)",
      "definition" : "Root-mean-square or similar measure of HRV in milliseconds."
    },
    {
      "code" : "sleep-duration-h",
      "display" : "Sleep duration (hours)",
      "definition" : "Total nightly sleep duration in hours."
    },
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
