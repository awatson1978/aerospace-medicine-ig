# SANS Assessment - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SANS Assessment**

## Resource Profile: SANS Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/sans-assessment | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SANSAssessment |

 
Spaceflight-Associated Neuro-ocular Syndrome assessment including OCT, OCT-A, and clinical findings 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/sans-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sans-assessment.csv), [Excel](StructureDefinition-sans-assessment.xlsx), [Schematron](StructureDefinition-sans-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sans-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/sans-assessment",
  "version" : "0.6.2",
  "name" : "SANSAssessment",
  "title" : "SANS Assessment",
  "status" : "active",
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
  "description" : "Spaceflight-Associated Neuro-ocular Syndrome assessment including OCT, OCT-A, and clinical findings",
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
        "short" : "SANS assessment",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-visual-effects-cs",
              "code" : "sans",
              "display" : "Spaceflight-Associated Neuro-ocular Syndrome"
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
        "id" : "Observation.component:opticDiscEdema",
        "path" : "Observation.component",
        "sliceName" : "opticDiscEdema",
        "short" : "Frisen grade of optic disc edema (0-5)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:opticDiscEdema.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "optic-disc-edema-grade",
              "display" : "Optic Disc Edema Grade"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:opticDiscEdema.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Observation.component:globeFlattening",
        "path" : "Observation.component",
        "sliceName" : "globeFlattening",
        "short" : "Globe flattening present/absent or measurement",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:globeFlattening.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "globe-flattening",
              "display" : "Globe Flattening"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:globeFlattening.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:choroidalFolds",
        "path" : "Observation.component",
        "sliceName" : "choroidalFolds",
        "short" : "Choroidal folds presence and severity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:choroidalFolds.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "choroidal-folds-present",
              "display" : "Choroidal Folds"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:choroidalFolds.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:icpEstimate",
        "path" : "Observation.component",
        "sliceName" : "icpEstimate",
        "short" : "Estimated intracranial pressure in mmHg",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:icpEstimate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "icp-estimate",
              "display" : "Intracranial Pressure Estimate"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:icpEstimate.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:icpEstimate.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:icpEstimate.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mm[Hg]"
      },
      {
        "id" : "Observation.component:retinalVesselDensity",
        "path" : "Observation.component",
        "sliceName" : "retinalVesselDensity",
        "short" : "Retinal vessel density from OCT-A (%)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:retinalVesselDensity.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "retinal-vessel-density",
              "display" : "Retinal Vessel Density"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:retinalVesselDensity.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:retinalVesselDensity.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:retinalVesselDensity.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:rnflThickness",
        "path" : "Observation.component",
        "sliceName" : "rnflThickness",
        "short" : "RNFL thickness in micrometers",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rnflThickness.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/sans-assessment-cs",
              "code" : "rnfl-thickness",
              "display" : "RNFL Thickness"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:rnflThickness.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:rnflThickness.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:rnflThickness.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "um"
      }
    ]
  }
}

```
