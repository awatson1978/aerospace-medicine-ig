# Space Motion Sickness Condition - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Motion Sickness Condition**

## Resource Profile: Space Motion Sickness Condition 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-motion-sickness-condition | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceMotionSicknessCondition |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Diagnosis and tracking of space motion sickness, terrestrial re-entry motion sickness, and related vestibular disorders 

**Usages:**

* Refer to this Profile: [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md) and [Antiemetic Care Plan](StructureDefinition-antiemetic-care-plan.md)
* Examples for this Profile: [Condition/SMS-Episode-FD2](Condition-SMS-Episode-FD2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-motion-sickness-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-motion-sickness-condition.csv), [Excel](StructureDefinition-space-motion-sickness-condition.xlsx), [Schematron](StructureDefinition-space-motion-sickness-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-motion-sickness-condition",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-motion-sickness-condition",
  "version" : "0.7.0",
  "name" : "SpaceMotionSicknessCondition",
  "title" : "Space Motion Sickness Condition",
  "status" : "active",
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
  "description" : "Diagnosis and tracking of space motion sickness, terrestrial re-entry motion sickness, and related vestibular disorders",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.extension:missionContext",
        "path" : "Condition.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.extension:gravityContext",
        "path" : "Condition.extension",
        "sliceName" : "gravityContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.extension:flightDay",
        "path" : "Condition.extension",
        "sliceName" : "flightDay",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.severity",
        "path" : "Condition.severity",
        "short" : "Graybiel severity grade",
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/graybiel-severity-vs"
        }
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "short" : "Type of space motion sickness (SMS, TRMS, mal de debarquement)",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/space-motion-sickness-vs"
        }
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "short" : "Onset date/time, ideally mission day",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.abatement[x]",
        "path" : "Condition.abatement[x]",
        "short" : "Resolution date/time",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.stage",
        "path" : "Condition.stage",
        "short" : "Progression stages including nausea severity",
        "mustSupport" : true
      }
    ]
  }
}

```
