# MRID Launch Context Type CodeSystem - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Launch Context Type CodeSystem**

## CodeSystem: MRID Launch Context Type CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/mrid-launch-context-type-cs | *Version*:0.5.9 |
| Active as of 2026-02-04 | *Computable Name*:MRIDLaunchContextTypeCS |

 
FHIR resource types for launch context 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MRIDLaunchContextTypeVS](ValueSet-mrid-launch-context-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mrid-launch-context-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/mrid-launch-context-type-cs",
  "version" : "0.5.9",
  "name" : "MRIDLaunchContextTypeCS",
  "title" : "MRID Launch Context Type CodeSystem",
  "status" : "active",
  "date" : "2026-02-04T10:26:00-06:00",
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
  "description" : "FHIR resource types for launch context",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "Patient",
      "display" : "Patient",
      "definition" : "Patient resource type"
    },
    {
      "code" : "Encounter",
      "display" : "Encounter",
      "definition" : "Encounter resource type"
    },
    {
      "code" : "Practitioner",
      "display" : "Practitioner",
      "definition" : "Practitioner resource type"
    }
  ]
}

```
