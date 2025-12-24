# Isolation Syndrome Factor Code System - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Isolation Syndrome Factor Code System**

## CodeSystem: Isolation Syndrome Factor Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:IsolationSyndromeFactorCS |

 
Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IsolationSyndromeFactorsVS](ValueSet-isolation-syndrome-factors-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "isolation-syndrome-factor-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs",
  "version" : "0.4.2",
  "name" : "IsolationSyndromeFactorCS",
  "title" : "Isolation Syndrome Factor Code System",
  "status" : "active",
  "date" : "2025-12-24T13:59:08-07:00",
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
