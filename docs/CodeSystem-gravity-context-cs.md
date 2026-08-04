# Gravity Context Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gravity Context Code System**

## CodeSystem: Gravity Context Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:GravityContextCS |

 
Gravitational environment contexts for observations and procedures 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GravityContextVS](ValueSet-gravity-context-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "gravity-context-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
  "version" : "0.6.2",
  "name" : "GravityContextCS",
  "title" : "Gravity Context Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Gravitational environment contexts for observations and procedures",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "earth-1g",
      "display" : "Earth Standard Gravity (1g)",
      "definition" : "Standard Earth gravity at approximately 9.81 m/s²"
    },
    {
      "code" : "microgravity",
      "display" : "Microgravity",
      "definition" : "Near-weightless conditions in orbital free-fall, typically 10⁻³ to 10⁻⁶ g"
    },
    {
      "code" : "lunar-gravity",
      "display" : "Lunar Gravity (1/6g)",
      "definition" : "Lunar surface gravity at approximately 1.62 m/s²"
    },
    {
      "code" : "mars-gravity",
      "display" : "Mars Gravity (3/8g)",
      "definition" : "Mars surface gravity at approximately 3.72 m/s²"
    },
    {
      "code" : "partial-gravity",
      "display" : "Partial Gravity",
      "definition" : "Partial gravity environment not otherwise specified"
    },
    {
      "code" : "hypergravity",
      "display" : "Hypergravity",
      "definition" : "Greater than 1g, as experienced during launch, re-entry, or centrifuge"
    },
    {
      "code" : "simulated-microgravity-hdt",
      "display" : "Simulated Microgravity (Head-Down Tilt)",
      "definition" : "Head-down tilt bed rest used to simulate microgravity effects"
    }
  ]
}

```
