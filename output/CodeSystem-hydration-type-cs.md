# Hydration Product Types - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hydration Product Types**

## CodeSystem: Hydration Product Types 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/hydration-type-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:HydrationTypeCS |

 
Types of hydration products used in space 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HydrationTypeVS](ValueSet-hydration-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hydration-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/hydration-type-cs",
  "version" : "0.4.2",
  "name" : "HydrationTypeCS",
  "title" : "Hydration Product Types",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Types of hydration products used in space",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "potable-water",
      "display" : "Potable Water"
    },
    {
      "code" : "recycled-water",
      "display" : "Recycled Water"
    },
    {
      "code" : "ors",
      "display" : "Oral Rehydration Solution"
    },
    {
      "code" : "electrolyte-packet",
      "display" : "Electrolyte Packet"
    },
    {
      "code" : "iv-saline",
      "display" : "IV Saline"
    },
    {
      "code" : "sports-drink",
      "display" : "Sports Drink Mix"
    },
    {
      "code" : "tea-coffee",
      "display" : "Tea/Coffee Beverage"
    }
  ]
}

```
