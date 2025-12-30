# Space Radiation Type Code System - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Type Code System**

## CodeSystem: Space Radiation Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-radiation-type-cs | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceRadiationTypeCS |

 
Types of radiation encountered in space environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceRadiationTypeVS](ValueSet-space-radiation-type-vs.md)
* [SpaceRadiationTypeVSComplete](ValueSet-space-radiation-type-vs-complete.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-radiation-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-radiation-type-cs",
  "version" : "0.5.6",
  "name" : "SpaceRadiationTypeCS",
  "title" : "Space Radiation Type Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Types of radiation encountered in space environments",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "gcr",
      "display" : "Galactic Cosmic Radiation"
    },
    {
      "code" : "spe",
      "display" : "Solar Particle Event"
    },
    {
      "code" : "trapped",
      "display" : "Trapped Radiation"
    },
    {
      "code" : "secondary",
      "display" : "Secondary Radiation"
    }
  ]
}

```
