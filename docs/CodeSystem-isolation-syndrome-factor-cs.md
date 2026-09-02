# Isolation Syndrome Factor Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Isolation Syndrome Factor Code System**

## CodeSystem: Isolation Syndrome Factor Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isolation-syndrome-factor-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:IsolationSyndromeFactorCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IsolationSyndromeFactorsVS](ValueSet-isolation-syndrome-factors-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "isolation-syndrome-factor-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isolation-syndrome-factor-cs",
  "version" : "0.7.0",
  "name" : "IsolationSyndromeFactorCS",
  "title" : "Isolation Syndrome Factor Code System",
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
  "description" : "Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "confinement",
      "display" : "Confinement",
      "definition" : "Small volume, limited privacy, constrained movement."
    },
    {
      "code" : "sensory-monotony",
      "display" : "Sensory monotony",
      "definition" : "Limited visual, auditory, and olfactory variety."
    },
    {
      "code" : "interpersonal-friction",
      "display" : "Interpersonal friction",
      "definition" : "Crew tension, conflict, or poor communication."
    },
    {
      "code" : "role-ambiguity",
      "display" : "Role ambiguity",
      "definition" : "Unclear or conflicting roles and responsibilities."
    },
    {
      "code" : "circadian-drift",
      "display" : "Circadian drift",
      "definition" : "Misalignment of sleep-wake cycle with operational schedule."
    },
    {
      "code" : "communications-latency",
      "display" : "Communications latency",
      "definition" : "Long delays to ground communication reducing perceived support."
    },
    {
      "code" : "emergency-history",
      "display" : "Emergency history",
      "definition" : "Recent anomalies or near-miss events increasing stress load."
    },
    {
      "code" : "workload-imbalance",
      "display" : "Workload imbalance",
      "definition" : "Unequal distribution of work or perceived unfairness."
    }
  ]
}

```
