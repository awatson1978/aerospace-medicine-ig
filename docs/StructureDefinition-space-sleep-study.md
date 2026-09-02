# Space Sleep Study Observation - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Sleep Study Observation**

## Resource Profile: Space Sleep Study Observation 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-sleep-study | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceSleepStudy |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Sleep architecture observation during spaceflight including PSG and actigraphy-derived measures 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-sleep-study)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-sleep-study.csv), [Excel](StructureDefinition-space-sleep-study.xlsx), [Schematron](StructureDefinition-space-sleep-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-sleep-study",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-sleep-study",
  "version" : "0.7.0",
  "name" : "SpaceSleepStudy",
  "title" : "Space Sleep Study Observation",
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
  "description" : "Sleep architecture observation during spaceflight including PSG and actigraphy-derived measures",
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:flightDay",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:gravityContext",
        "path" : "Observation.extension",
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
        "short" : "Sleep study panel",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "28634-4",
              "display" : "Sleep study"
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "Sleep recording period",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
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
        "id" : "Observation.component:totalSleepTime",
        "path" : "Observation.component",
        "sliceName" : "totalSleepTime",
        "short" : "Total sleep time in minutes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:totalSleepTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "total-sleep-time",
              "display" : "Total Sleep Time (TST)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:totalSleepTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:sleepEfficiency",
        "path" : "Observation.component",
        "sliceName" : "sleepEfficiency",
        "short" : "Sleep efficiency percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sleepEfficiency.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "sleep-efficiency",
              "display" : "Sleep Efficiency"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sleepEfficiency.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sleepEfficiency.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:sleepEfficiency.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:sleepOnsetLatency",
        "path" : "Observation.component",
        "sliceName" : "sleepOnsetLatency",
        "short" : "Time to fall asleep in minutes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sleepOnsetLatency.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "sleep-onset-latency",
              "display" : "Sleep Onset Latency (SOL)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sleepOnsetLatency.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sleepOnsetLatency.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:sleepOnsetLatency.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:waso",
        "path" : "Observation.component",
        "sliceName" : "waso",
        "short" : "Wake time after sleep onset in minutes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:waso.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "waso",
              "display" : "Wake After Sleep Onset (WASO)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:waso.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:waso.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:waso.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:remLatency",
        "path" : "Observation.component",
        "sliceName" : "remLatency",
        "short" : "Time to first REM period in minutes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:remLatency.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "rem-latency",
              "display" : "REM Latency"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:remLatency.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:remLatency.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:remLatency.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:n1Pct",
        "path" : "Observation.component",
        "sliceName" : "n1Pct",
        "short" : "N1 light sleep percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:n1Pct.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "n1-pct",
              "display" : "N1 Sleep Percentage"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:n1Pct.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:n1Pct.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:n1Pct.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:n2Pct",
        "path" : "Observation.component",
        "sliceName" : "n2Pct",
        "short" : "N2 sleep percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:n2Pct.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "n2-pct",
              "display" : "N2 Sleep Percentage"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:n2Pct.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:n2Pct.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:n2Pct.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:n3Pct",
        "path" : "Observation.component",
        "sliceName" : "n3Pct",
        "short" : "N3/slow-wave sleep percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:n3Pct.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "n3-pct",
              "display" : "N3/SWS Sleep Percentage"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:n3Pct.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:n3Pct.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:n3Pct.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:remPct",
        "path" : "Observation.component",
        "sliceName" : "remPct",
        "short" : "REM sleep percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:remPct.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
              "code" : "rem-pct",
              "display" : "REM Sleep Percentage"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:remPct.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:remPct.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:remPct.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      }
    ]
  }
}

```
