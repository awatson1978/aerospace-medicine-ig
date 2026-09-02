# Space Adverse Event - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Adverse Event**

## Resource Profile: Space Adverse Event 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-adverse-event | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceAdverseEvent |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Adverse events from medications or procedures during spaceflight 

**Usages:**

* Examples for this Profile: [AdverseEvent/Urinary-Retention-Post-Promethazine](AdverseEvent-Urinary-Retention-Post-Promethazine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-adverse-event)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-adverse-event.csv), [Excel](StructureDefinition-space-adverse-event.xlsx), [Schematron](StructureDefinition-space-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-adverse-event",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-adverse-event",
  "version" : "0.7.0",
  "name" : "SpaceAdverseEvent",
  "title" : "Space Adverse Event",
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
  "description" : "Adverse events from medications or procedures during spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AdverseEvent",
        "path" : "AdverseEvent"
      },
      {
        "id" : "AdverseEvent.extension",
        "path" : "AdverseEvent.extension",
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
        "id" : "AdverseEvent.extension:missionContext",
        "path" : "AdverseEvent.extension",
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
        "id" : "AdverseEvent.extension:flightDay",
        "path" : "AdverseEvent.extension",
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
        "id" : "AdverseEvent.event",
        "path" : "AdverseEvent.event",
        "short" : "Type of adverse event",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/space-adverse-event-vs"
        }
      },
      {
        "id" : "AdverseEvent.subject",
        "path" : "AdverseEvent.subject",
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
        "id" : "AdverseEvent.date",
        "path" : "AdverseEvent.date",
        "mustSupport" : true
      },
      {
        "id" : "AdverseEvent.seriousness",
        "path" : "AdverseEvent.seriousness",
        "short" : "Seriousness classification",
        "mustSupport" : true
      },
      {
        "id" : "AdverseEvent.outcome",
        "path" : "AdverseEvent.outcome",
        "short" : "Outcome of adverse event",
        "mustSupport" : true
      },
      {
        "id" : "AdverseEvent.suspectEntity",
        "path" : "AdverseEvent.suspectEntity",
        "mustSupport" : true
      },
      {
        "id" : "AdverseEvent.suspectEntity.instance",
        "path" : "AdverseEvent.suspectEntity.instance",
        "short" : "Suspected causal medication or procedure",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Medication",
              "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
              "http://hl7.org/fhir/StructureDefinition/Procedure"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
