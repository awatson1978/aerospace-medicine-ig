# Neutral Buoyancy Training Session - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Training Session**

## Resource Profile: Neutral Buoyancy Training Session 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-session | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:NeutralBuoyancySession |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Training session in a neutral buoyancy facility for EVA simulation, including communication systems, safety protocols, regulatory compliance and environmental conditions 

**Usages:**

* Derived from this Profile: [Underwater EVA Simulation](StructureDefinition-underwater-eva-simulation.md)
* Examples for this Profile: [Procedure/ExampleNeutralBuoyancySession](Procedure-ExampleNeutralBuoyancySession.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/neutral-buoyancy-session)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-neutral-buoyancy-session.csv), [Excel](StructureDefinition-neutral-buoyancy-session.xlsx), [Schematron](StructureDefinition-neutral-buoyancy-session.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "neutral-buoyancy-session",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-session",
  "version" : "0.7.0",
  "name" : "NeutralBuoyancySession",
  "title" : "Neutral Buoyancy Training Session",
  "status" : "draft",
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
  "description" : "Training session in a neutral buoyancy facility for EVA simulation, including communication systems, safety protocols, regulatory compliance and environmental conditions",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:sessionDuration",
        "path" : "Procedure.extension",
        "sliceName" : "sessionDuration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/session-duration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:maximumDepth",
        "path" : "Procedure.extension",
        "sliceName" : "maximumDepth",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/maximum-depth"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:trainingObjectives",
        "path" : "Procedure.extension",
        "sliceName" : "trainingObjectives",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/training-objectives"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:taskMetrics",
        "path" : "Procedure.extension",
        "sliceName" : "taskMetrics",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/task-completion-metrics"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:commSystems",
        "path" : "Procedure.extension",
        "sliceName" : "commSystems",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/communication-systems"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:safetyProtocols",
        "path" : "Procedure.extension",
        "sliceName" : "safetyProtocols",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/safety-protocols"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:compliance",
        "path" : "Procedure.extension",
        "sliceName" : "compliance",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/regulatory-compliance"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:environmental",
        "path" : "Procedure.extension",
        "sliceName" : "environmental",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/environmental-conditions"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/neutral-buoyancy-training-activities-vs"
        }
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/astronaut"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.performed[x]:performedDateTime",
        "path" : "Procedure.performed[x]",
        "sliceName" : "performedDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-facility"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.bodySite",
        "path" : "Procedure.bodySite",
        "max" : "0"
      }
    ]
  }
}

```
