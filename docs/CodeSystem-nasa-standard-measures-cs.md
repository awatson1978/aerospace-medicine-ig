# NASA Spaceflight Standard Measures Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Spaceflight Standard Measures Code System**

## CodeSystem: NASA Spaceflight Standard Measures Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-standard-measures-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NASAStandardMeasuresCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Standardized assessments from the NASA Spaceflight Standard Measures program 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAStandardMeasuresVS](ValueSet-nasa-standard-measures-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-standard-measures-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-standard-measures-cs",
  "version" : "0.7.0",
  "name" : "NASAStandardMeasuresCS",
  "title" : "NASA Spaceflight Standard Measures Code System",
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
  "description" : "Standardized assessments from the NASA Spaceflight Standard Measures program",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
