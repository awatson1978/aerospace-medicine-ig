# Graybiel Motion Sickness Severity Scale - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Graybiel Motion Sickness Severity Scale**

## CodeSystem: Graybiel Motion Sickness Severity Scale 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/graybiel-severity-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:GraybielSeverityCS |

 
Modified Graybiel scale for grading motion sickness severity in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GraybielSeverityVS](ValueSet-graybiel-severity-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "graybiel-severity-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/graybiel-severity-cs",
  "version" : "0.6.2",
  "name" : "GraybielSeverityCS",
  "title" : "Graybiel Motion Sickness Severity Scale",
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
  "description" : "Modified Graybiel scale for grading motion sickness severity in spaceflight",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "grade-0",
      "display" : "Grade 0 - No Symptoms",
      "definition" : "No motion sickness symptoms present"
    },
    {
      "code" : "grade-1",
      "display" : "Grade I-A - Mild Malaise",
      "definition" : "Mild discomfort, epigastric awareness, no nausea"
    },
    {
      "code" : "grade-2",
      "display" : "Grade II-S - Moderate Malaise",
      "definition" : "Moderate symptoms including nausea, pallor, cold sweating"
    },
    {
      "code" : "grade-3",
      "display" : "Grade III-S - Severe Malaise",
      "definition" : "Severe nausea and retching without emesis"
    },
    {
      "code" : "frank-sickness",
      "display" : "Frank Sickness",
      "definition" : "Emesis with significant operational impact"
    }
  ]
}

```
