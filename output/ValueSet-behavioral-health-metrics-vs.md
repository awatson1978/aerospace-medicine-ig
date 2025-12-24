# Behavioral Health Metrics Value Set - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behavioral Health Metrics Value Set**

## ValueSet: Behavioral Health Metrics Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/behavioral-health-metrics-vs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:BehavioralHealthMetricsVS |

 
Key behavioral health state metrics used in aerospace behavioral health monitoring. 

 **References** 

* [Behavioral Health State](StructureDefinition-behavioral-health-state.md)
* [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

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
  "id" : "behavioral-health-metrics-vs",
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/behavioral-health-metrics-vs",
  "version" : "0.4.2",
  "name" : "BehavioralHealthMetricsVS",
  "title" : "Behavioral Health Metrics Value Set",
  "status" : "active",
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Key behavioral health state metrics used in aerospace behavioral health monitoring.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "concept" : [
          {
            "code" : "mood-level"
          },
          {
            "code" : "anxiety-level"
          },
          {
            "code" : "irritability-score"
          },
          {
            "code" : "sleep-quality"
          },
          {
            "code" : "cognitive-readiness"
          }
        ]
      }
    ]
  }
}

```
