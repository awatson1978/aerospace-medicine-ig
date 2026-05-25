# Circadian Rhythm Assessment Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Rhythm Assessment Code System**

## CodeSystem: Circadian Rhythm Assessment Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/circadian-assessment-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:CircadianAssessmentCS |

 
Parameters for circadian rhythm assessment in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CircadianAssessmentVS](ValueSet-circadian-assessment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "circadian-assessment-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/circadian-assessment-cs",
  "version" : "0.6.0",
  "name" : "CircadianAssessmentCS",
  "title" : "Circadian Rhythm Assessment Code System",
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
  "description" : "Parameters for circadian rhythm assessment in spaceflight",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "melatonin-onset",
      "display" : "Dim Light Melatonin Onset (DLMO)",
      "definition" : "Time of melatonin rise under dim light conditions"
    },
    {
      "code" : "core-temp-nadir",
      "display" : "Core Body Temperature Nadir",
      "definition" : "Timing of circadian core body temperature minimum"
    },
    {
      "code" : "circadian-period",
      "display" : "Circadian Period (Tau)",
      "definition" : "Endogenous circadian period length"
    },
    {
      "code" : "phase-shift",
      "display" : "Phase Shift",
      "definition" : "Magnitude and direction of circadian phase shift"
    }
  ]
}

```
