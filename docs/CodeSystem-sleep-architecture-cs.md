# Sleep Architecture Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Architecture Code System**

## CodeSystem: Sleep Architecture Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/sleep-architecture-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SleepArchitectureCS |

 
Sleep architecture parameters measured during spaceflight sleep studies 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SleepArchitectureVS](ValueSet-sleep-architecture-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sleep-architecture-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/sleep-architecture-cs",
  "version" : "0.6.0",
  "name" : "SleepArchitectureCS",
  "title" : "Sleep Architecture Code System",
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
  "description" : "Sleep architecture parameters measured during spaceflight sleep studies",
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
