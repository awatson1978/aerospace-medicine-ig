# Aerospace Behavioral State Code System - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aerospace Behavioral State Code System**

## CodeSystem: Aerospace Behavioral State Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:AerospaceBehavioralStateCS |

 
Codes describing behavioral and psychological state parameters in aerospace missions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BehavioralHealthMetricsVS](ValueSet-behavioral-health-metrics-vs.md)
* [CognitivePerformanceIndicatorsVS](ValueSet-cognitive-performance-indicators-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "aerospace-behavioral-state-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
  "version" : "0.5.6",
  "name" : "AerospaceBehavioralStateCS",
  "title" : "Aerospace Behavioral State Code System",
  "status" : "active",
  "date" : "2025-12-30T19:11:20-07:00",
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
  "description" : "Codes describing behavioral and psychological state parameters in aerospace missions.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "mood-level",
      "display" : "Mood level",
      "definition" : "Numeric or ordinal scoring of current mood (e.g., -3 to +3)."
    },
    {
      "code" : "anxiety-level",
      "display" : "Anxiety level",
      "definition" : "Numeric or ordinal scoring of current anxiety state."
    },
    {
      "code" : "irritability-score",
      "display" : "Irritability score",
      "definition" : "Behavioral metric representing irritability and frustration."
    },
    {
      "code" : "conflict-index",
      "display" : "Conflict index",
      "definition" : "Estimated probability or degree of interpersonal conflict risk."
    },
    {
      "code" : "coping-capacity",
      "display" : "Coping capacity",
      "definition" : "Perceived ability to cope with mission demands and stressors."
    },
    {
      "code" : "cumulative-stress",
      "display" : "Cumulative stress burden",
      "definition" : "Integrated measure of stress load over a defined mission interval."
    },
    {
      "code" : "social-connectedness",
      "display" : "Social connectedness",
      "definition" : "Degree of perceived social support and connectedness with crew and ground."
    },
    {
      "code" : "sleep-quality",
      "display" : "Sleep quality",
      "definition" : "Subjective or composite index of sleep quality."
    },
    {
      "code" : "cognitive-readiness",
      "display" : "Cognitive readiness",
      "definition" : "Readiness for complex decision-making and EVA or critical operations."
    }
  ]
}

```
