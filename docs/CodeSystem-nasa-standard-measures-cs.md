# NASA Spaceflight Standard Measures Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Spaceflight Standard Measures Code System**

## CodeSystem: NASA Spaceflight Standard Measures Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-standard-measures-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:NASAStandardMeasuresCS |

 
Standardized assessments from the NASA Spaceflight Standard Measures program 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAStandardMeasuresVS](ValueSet-nasa-standard-measures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-standard-measures-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-standard-measures-cs",
  "version" : "0.6.2",
  "name" : "NASAStandardMeasuresCS",
  "title" : "NASA Spaceflight Standard Measures Code System",
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
  "description" : "Standardized assessments from the NASA Spaceflight Standard Measures program",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "functional-task-test",
      "display" : "Functional Task Test",
      "definition" : "Standardized battery of functional tasks assessing sensorimotor performance"
    },
    {
      "code" : "field-test",
      "display" : "Field Test",
      "definition" : "Timed obstacle course for post-flight functional assessment"
    },
    {
      "code" : "grip-strength",
      "display" : "Grip Strength",
      "definition" : "Isometric hand grip dynamometry"
    },
    {
      "code" : "tandem-walk",
      "display" : "Tandem Walk",
      "definition" : "Heel-to-toe walking balance assessment"
    },
    {
      "code" : "visual-acuity-flight",
      "display" : "In-flight Visual Acuity",
      "definition" : "Visual acuity testing during spaceflight"
    },
    {
      "code" : "orthostatic-test",
      "display" : "Orthostatic Tolerance Test",
      "definition" : "Tilt test or stand test for orthostatic assessment"
    },
    {
      "code" : "body-composition",
      "display" : "Body Composition",
      "definition" : "DXA or bioimpedance body composition analysis"
    }
  ]
}

```
