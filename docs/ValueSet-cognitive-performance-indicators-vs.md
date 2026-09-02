# Cognitive Performance Indicators Value Set - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cognitive Performance Indicators Value Set**

## ValueSet: Cognitive Performance Indicators Value Set (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/cognitive-performance-indicators-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CognitivePerformanceIndicatorsVS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Cognitive and vigilance performance indicators relevant to operational readiness. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "cognitive-performance-indicators-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/cognitive-performance-indicators-vs",
  "version" : "0.7.0",
  "name" : "CognitivePerformanceIndicatorsVS",
  "title" : "Cognitive Performance Indicators Value Set",
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
  "description" : "Cognitive and vigilance performance indicators relevant to operational readiness.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/behavioral-biomarker-cs",
        "concept" : [
          {
            "code" : "reaction-time-ms"
          },
          {
            "code" : "activity-level"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "80404-7",
            "display" : "R-R interval.standard deviation (Heart rate variability)"
          }
        ]
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
        "concept" : [
          {
            "code" : "cognitive-readiness"
          }
        ]
      }
    ]
  }
}

```
