# Circadian Rhythm Assessment Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Rhythm Assessment Code System**

## CodeSystem: Circadian Rhythm Assessment Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CircadianAssessmentCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Parameters for circadian rhythm assessment in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CircadianAssessmentVS](ValueSet-circadian-assessment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "circadian-assessment-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
  "version" : "0.7.0",
  "name" : "CircadianAssessmentCS",
  "title" : "Circadian Rhythm Assessment Code System",
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
  "description" : "Parameters for circadian rhythm assessment in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
