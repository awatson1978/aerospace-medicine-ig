# Sleep Architecture Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Architecture Code System**

## CodeSystem: Sleep Architecture Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SleepArchitectureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Sleep architecture parameters measured during spaceflight sleep studies 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SleepArchitectureVS](ValueSet-sleep-architecture-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sleep-architecture-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
  "version" : "0.7.0",
  "name" : "SleepArchitectureCS",
  "title" : "Sleep Architecture Code System",
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
  "description" : "Sleep architecture parameters measured during spaceflight sleep studies",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "total-sleep-time",
      "display" : "Total Sleep Time (TST)",
      "definition" : "Total time spent asleep during the recording period"
    },
    {
      "code" : "sleep-efficiency",
      "display" : "Sleep Efficiency",
      "definition" : "Percentage of time in bed spent asleep"
    },
    {
      "code" : "sleep-onset-latency",
      "display" : "Sleep Onset Latency (SOL)",
      "definition" : "Time from lights-off to first epoch of sleep"
    },
    {
      "code" : "waso",
      "display" : "Wake After Sleep Onset (WASO)",
      "definition" : "Total wake time after initial sleep onset"
    },
    {
      "code" : "rem-latency",
      "display" : "REM Latency",
      "definition" : "Time from sleep onset to first REM period"
    },
    {
      "code" : "n1-pct",
      "display" : "N1 Sleep Percentage",
      "definition" : "Percentage of total sleep time in stage N1 (light sleep)"
    },
    {
      "code" : "n2-pct",
      "display" : "N2 Sleep Percentage",
      "definition" : "Percentage of total sleep time in stage N2"
    },
    {
      "code" : "n3-pct",
      "display" : "N3/SWS Sleep Percentage",
      "definition" : "Percentage of total sleep time in stage N3 slow-wave sleep"
    },
    {
      "code" : "rem-pct",
      "display" : "REM Sleep Percentage",
      "definition" : "Percentage of total sleep time in REM sleep"
    }
  ]
}

```
