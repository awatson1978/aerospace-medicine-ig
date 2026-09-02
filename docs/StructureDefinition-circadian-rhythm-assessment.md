# Circadian Rhythm Assessment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Rhythm Assessment**

## Resource Profile: Circadian Rhythm Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/circadian-rhythm-assessment | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CircadianRhythmAssessment |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Assessment of circadian rhythm parameters during spaceflight 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/circadian-rhythm-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-circadian-rhythm-assessment.csv), [Excel](StructureDefinition-circadian-rhythm-assessment.xlsx), [Schematron](StructureDefinition-circadian-rhythm-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "circadian-rhythm-assessment",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/circadian-rhythm-assessment",
  "version" : "0.7.0",
  "name" : "CircadianRhythmAssessment",
  "title" : "Circadian Rhythm Assessment",
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
  "description" : "Assessment of circadian rhythm parameters during spaceflight",
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
        "short" : "Circadian rhythm assessment",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "30920001",
              "display" : "Circadian rhythm"
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
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
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
        "id" : "Observation.component:melatoninOnset",
        "path" : "Observation.component",
        "sliceName" : "melatoninOnset",
        "short" : "Dim light melatonin onset time",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:melatoninOnset.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
              "code" : "melatonin-onset",
              "display" : "Dim Light Melatonin Onset (DLMO)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:melatoninOnset.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Observation.component:coreTempNadir",
        "path" : "Observation.component",
        "sliceName" : "coreTempNadir",
        "short" : "Timing of core body temperature minimum",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:coreTempNadir.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
              "code" : "core-temp-nadir",
              "display" : "Core Body Temperature Nadir"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:coreTempNadir.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "Observation.component:circadianPeriod",
        "path" : "Observation.component",
        "sliceName" : "circadianPeriod",
        "short" : "Endogenous circadian period in hours",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:circadianPeriod.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
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
        "id" : "Observation.component:phaseShift",
        "path" : "Observation.component",
        "sliceName" : "phaseShift",
        "short" : "Phase shift in hours (positive = delay, negative = advance)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:phaseShift.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
              "code" : "phase-shift",
              "display" : "Phase Shift"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:phaseShift.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:phaseShift.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:phaseShift.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "h"
      }
    ]
  }
}

```
