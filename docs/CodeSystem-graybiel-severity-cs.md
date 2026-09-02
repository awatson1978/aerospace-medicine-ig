# Graybiel Motion Sickness Severity Scale - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Graybiel Motion Sickness Severity Scale**

## CodeSystem: Graybiel Motion Sickness Severity Scale (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/graybiel-severity-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:GraybielSeverityCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Modified Graybiel scale for grading motion sickness severity in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GraybielSeverityVS](ValueSet-graybiel-severity-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "graybiel-severity-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/graybiel-severity-cs",
  "version" : "0.7.0",
  "name" : "GraybielSeverityCS",
  "title" : "Graybiel Motion Sickness Severity Scale",
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
  "description" : "Modified Graybiel scale for grading motion sickness severity in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
