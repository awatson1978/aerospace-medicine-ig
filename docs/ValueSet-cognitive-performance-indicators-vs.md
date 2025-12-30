# Cognitive Performance Indicators Value Set - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cognitive Performance Indicators Value Set**

## ValueSet: Cognitive Performance Indicators Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/cognitive-performance-indicators-vs | *Version*:0.5.1 |
| Active as of 2025-12-29 | *Computable Name*:CognitivePerformanceIndicatorsVS |

 
Cognitive and vigilance performance indicators relevant to operational readiness. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

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
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/cognitive-performance-indicators-vs",
  "version" : "0.5.1",
  "name" : "CognitivePerformanceIndicatorsVS",
  "title" : "Cognitive Performance Indicators Value Set",
  "status" : "active",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
        "concept" : [
          {
            "code" : "reaction-time-ms"
          },
          {
            "code" : "hrv-ms"
          },
          {
            "code" : "activity-level"
          }
        ]
      },
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
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
