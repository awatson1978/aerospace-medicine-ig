# Space Adverse Event Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Adverse Event Code System**

## CodeSystem: Space Adverse Event Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-adverse-event-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceAdverseEventCS |

 
Adverse events associated with antiemetic and countermeasure medications in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceAdverseEventVS](ValueSet-space-adverse-event-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-adverse-event-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-adverse-event-cs",
  "version" : "0.6.2",
  "name" : "SpaceAdverseEventCS",
  "title" : "Space Adverse Event Code System",
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
  "description" : "Adverse events associated with antiemetic and countermeasure medications in spaceflight",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "urinary-retention",
      "display" : "Urinary Retention",
      "definition" : "Inability to void bladder, common side effect of promethazine and scopolamine"
    },
    {
      "code" : "excessive-sedation",
      "display" : "Excessive Sedation",
      "definition" : "Sedation impairing crew performance, common with promethazine IM"
    },
    {
      "code" : "extrapyramidal",
      "display" : "Extrapyramidal Symptoms",
      "definition" : "Dystonia, akathisia, or other movement disorders from antiemetic use"
    },
    {
      "code" : "qt-prolongation",
      "display" : "QT Prolongation",
      "definition" : "Cardiac QT interval prolongation associated with ondansetron or promethazine"
    },
    {
      "code" : "dry-mouth",
      "display" : "Dry Mouth (Xerostomia)",
      "definition" : "Anticholinergic dry mouth from scopolamine or promethazine"
    },
    {
      "code" : "blurred-vision",
      "display" : "Blurred Vision",
      "definition" : "Visual disturbance from anticholinergic effects"
    }
  ]
}

```
