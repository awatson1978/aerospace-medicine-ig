# ARCHeR Actigraphy Observation - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ARCHeR Actigraphy Observation**

## Resource Profile: ARCHeR Actigraphy Observation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/archer-actigraphy-observation | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ARCHeRActigraphyObservation |

 
Actigraphy observation from the Actigraphy for Circadian Health during Exploration Research (ARCHeR) investigation 

**Usages:**

* Examples for this Profile: [Observation/ARCHeR-Actigraphy-FD5](Observation-ARCHeR-Actigraphy-FD5.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/archer-actigraphy-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-archer-actigraphy-observation.csv), [Excel](StructureDefinition-archer-actigraphy-observation.xlsx), [Schematron](StructureDefinition-archer-actigraphy-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "archer-actigraphy-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/archer-actigraphy-observation",
  "version" : "0.6.0",
  "name" : "ARCHeRActigraphyObservation",
  "title" : "ARCHeR Actigraphy Observation",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Actigraphy observation from the Actigraphy for Circadian Health during Exploration Research (ARCHeR) investigation",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:missionContext",
        "path" : "Observation.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:missionPhase",
        "path" : "Observation.extension",
        "sliceName" : "missionPhase",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "ARCHeR actigraphy monitoring",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "129006008",
              "display" : "Activity monitoring"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Wearable actigraph device",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:restActivityRhythm",
        "path" : "Observation.component",
        "sliceName" : "restActivityRhythm",
        "short" : "Rest-activity rhythm stability",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:restActivityRhythm.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs",
              "code" : "interdaily-stability",
              "display" : "Interdaily Stability (IS)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:restActivityRhythm.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:restActivityRhythm.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:restActivityRhythm.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "1"
      },
      {
        "id" : "Observation.component:circadianPeriod",
        "path" : "Observation.component",
        "sliceName" : "circadianPeriod",
        "short" : "Endogenous circadian period",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:circadianPeriod.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/circadian-assessment-cs",
              "code" : "circadian-period",
              "display" : "Circadian Period (Tau)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:circadianPeriod.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:circadianPeriod.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:circadianPeriod.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "h"
      },
      {
        "id" : "Observation.component:sleepWakeTiming",
        "path" : "Observation.component",
        "sliceName" : "sleepWakeTiming",
        "short" : "Sleep-wake cycle timing",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sleepWakeTiming.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sleep-architecture-cs",
              "code" : "total-sleep-time",
              "display" : "Total Sleep Time (TST)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sleepWakeTiming.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sleepWakeTiming.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:sleepWakeTiming.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      }
    ]
  }
}

```
