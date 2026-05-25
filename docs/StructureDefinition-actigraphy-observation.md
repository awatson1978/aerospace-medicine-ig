# Actigraphy Observation - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Actigraphy Observation**

## Resource Profile: Actigraphy Observation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/actigraphy-observation | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ActigraphyObservation |

 
Wrist actigraphy-derived sleep-wake and activity metrics during spaceflight 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/actigraphy-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-actigraphy-observation.csv), [Excel](StructureDefinition-actigraphy-observation.xlsx), [Schematron](StructureDefinition-actigraphy-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "actigraphy-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/actigraphy-observation",
  "version" : "0.6.0",
  "name" : "ActigraphyObservation",
  "title" : "Actigraphy Observation",
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
  "description" : "Wrist actigraphy-derived sleep-wake and activity metrics during spaceflight",
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
        "id" : "Observation.extension:flightDay",
        "path" : "Observation.extension",
        "sliceName" : "flightDay",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/flight-day"
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
        "short" : "Actigraphy metric type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/actigraphy-metric-vs"
        }
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
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
        "id" : "Observation.component:activityCount",
        "path" : "Observation.component",
        "sliceName" : "activityCount",
        "short" : "Raw activity count",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:activityCount.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs",
              "code" : "activity-count",
              "display" : "Activity Count"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:activityCount.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Observation.component:lightExposure",
        "path" : "Observation.component",
        "sliceName" : "lightExposure",
        "short" : "Light exposure level in lux",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:lightExposure.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "87700-2",
              "display" : "Light exposure level"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:lightExposure.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:lightExposure.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:lightExposure.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "[lx]"
      },
      {
        "id" : "Observation.component:restActivityRatio",
        "path" : "Observation.component",
        "sliceName" : "restActivityRatio",
        "short" : "Rest to activity ratio",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:restActivityRatio.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs",
              "code" : "rest-activity-ratio",
              "display" : "Rest-Activity Ratio"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:restActivityRatio.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:restActivityRatio.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:restActivityRatio.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "1"
      }
    ]
  }
}

```
