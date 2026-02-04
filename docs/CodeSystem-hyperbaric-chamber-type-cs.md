# Hyperbaric Chamber Types - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Types**

## CodeSystem: Hyperbaric Chamber Types 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-chamber-type-cs | *Version*:0.5.9 |
| Active as of 2026-02-04 | *Computable Name*:HyperbaricChamberTypeCS |

 
Types of hyperbaric chambers 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HyperbaricChamberTypeVS](ValueSet-hyperbaric-chamber-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hyperbaric-chamber-type-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-chamber-type-cs",
  "version" : "0.5.9",
  "name" : "HyperbaricChamberTypeCS",
  "title" : "Hyperbaric Chamber Types",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Types of hyperbaric chambers",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "monoplace",
      "display" : "Monoplace Chamber"
    },
    {
      "code" : "multiplace",
      "display" : "Multiplace Chamber"
    },
    {
      "code" : "portable",
      "display" : "Portable Chamber"
    },
    {
      "code" : "research",
      "display" : "Research Chamber"
    },
    {
      "code" : "veterinary",
      "display" : "Veterinary Chamber"
    }
  ]
}

```
