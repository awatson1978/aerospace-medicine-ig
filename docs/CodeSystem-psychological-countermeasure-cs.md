# Psychological Countermeasure Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Psychological Countermeasure Code System**

## CodeSystem: Psychological Countermeasure Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/psychological-countermeasure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:PsychologicalCountermeasureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Codes for psychological countermeasure interventions in aerospace missions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StressCountermeasuresVS](ValueSet-stress-countermeasures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "psychological-countermeasure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/psychological-countermeasure-cs",
  "version" : "0.7.0",
  "name" : "PsychologicalCountermeasureCS",
  "title" : "Psychological Countermeasure Code System",
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
  "description" : "Codes for psychological countermeasure interventions in aerospace missions.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "cbt-session",
      "display" : "Cognitive behavioral therapy session",
      "definition" : "Formal CBT or counseling session (in-person or telemedicine)."
    },
    {
      "code" : "supportive-counseling",
      "display" : "Supportive counseling",
      "definition" : "Non-directive supportive conversation with behavioral health personnel."
    },
    {
      "code" : "exercise-countermeasure",
      "display" : "Exercise countermeasure",
      "definition" : "Physical exercise targeting stress reduction or mood improvement."
    },
    {
      "code" : "bright-light-therapy",
      "display" : "Bright light therapy",
      "definition" : "Timed bright light exposure to stabilize circadian rhythms."
    },
    {
      "code" : "guided-meditation",
      "display" : "Guided meditation",
      "definition" : "Structured mindfulness or meditation session."
    },
    {
      "code" : "crew-debrief",
      "display" : "Crew debrief",
      "definition" : "Guided crew-level debrief to process events and conflict."
    },
    {
      "code" : "sleep-hygiene-coaching",
      "display" : "Sleep hygiene coaching",
      "definition" : "Behavioral intervention to improve sleep habits."
    },
    {
      "code" : "pharmacologic-anxiolytic",
      "display" : "Pharmacologic anxiolytic",
      "definition" : "Medication used to reduce acute anxiety."
    },
    {
      "code" : "pharmacologic-sedative",
      "display" : "Pharmacologic sedative",
      "definition" : "Medication used to promote sleep."
    },
    {
      "code" : "vr-relaxation",
      "display" : "VR relaxation protocol",
      "definition" : "Immersive virtual environment for relaxation or mood support."
    }
  ]
}

```
