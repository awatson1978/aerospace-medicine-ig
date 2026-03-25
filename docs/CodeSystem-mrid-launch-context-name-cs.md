# MRID Launch Context Name CodeSystem - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Launch Context Name CodeSystem**

## CodeSystem: MRID Launch Context Name CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/mrid-launch-context-name-cs | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:MRIDLaunchContextNameCS |

 
Names for launch context variables 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MRIDLaunchContextNameVS](ValueSet-mrid-launch-context-name-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mrid-launch-context-name-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/mrid-launch-context-name-cs",
  "version" : "0.5.12",
  "name" : "MRIDLaunchContextNameCS",
  "title" : "MRID Launch Context Name CodeSystem",
  "status" : "active",
  "date" : "2026-03-25T00:24:16-05:00",
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
  "description" : "Names for launch context variables",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "patient",
      "display" : "Patient",
      "definition" : "The astronaut/crewmember subject"
    },
    {
      "code" : "encounter",
      "display" : "Encounter",
      "definition" : "The mission or medical encounter"
    },
    {
      "code" : "user",
      "display" : "User",
      "definition" : "The user completing the questionnaire"
    }
  ]
}

```
