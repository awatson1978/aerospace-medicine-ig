# Space Adverse Event Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Adverse Event Code System**

## CodeSystem: Space Adverse Event Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-adverse-event-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceAdverseEventCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Adverse events associated with antiemetic and countermeasure medications in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceAdverseEventVS](ValueSet-space-adverse-event-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-adverse-event-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-adverse-event-cs",
  "version" : "0.7.0",
  "name" : "SpaceAdverseEventCS",
  "title" : "Space Adverse Event Code System",
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
  "description" : "Adverse events associated with antiemetic and countermeasure medications in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
