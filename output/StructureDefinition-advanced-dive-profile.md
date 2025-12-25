# Advanced Dive Profile - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Advanced Dive Profile**

## Resource Profile: Advanced Dive Profile 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/advanced-dive-profile | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:AdvancedDiveProfile |

 
Comprehensive dive profile with enhanced data collection and regulatory compliance 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/advanced-dive-profile)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-advanced-dive-profile.csv), [Excel](StructureDefinition-advanced-dive-profile.xlsx), [Schematron](StructureDefinition-advanced-dive-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "advanced-dive-profile",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/advanced-dive-profile",
  "version" : "0.4.2",
  "name" : "AdvancedDiveProfile",
  "title" : "Advanced Dive Profile",
  "status" : "draft",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Comprehensive dive profile with enhanced data collection and regulatory compliance",
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
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "dive-profile",
              "display" : "Dive Profile"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/DivingEquipment"
            ]
          }
        ]
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
        "id" : "Observation.component:maximumDepth",
        "path" : "Observation.component",
        "sliceName" : "maximumDepth",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:maximumDepth.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "maximum-depth"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:maximumDepth.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:maximumDepth.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:maximumDepth.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "m"
      },
      {
        "id" : "Observation.component:bottomTime",
        "path" : "Observation.component",
        "sliceName" : "bottomTime",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:bottomTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "bottom-time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:bottomTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:bottomTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:bottomTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:surfaceInterval",
        "path" : "Observation.component",
        "sliceName" : "surfaceInterval",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:surfaceInterval.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "surface-interval"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:surfaceInterval.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:surfaceInterval.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:surfaceInterval.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "min"
      },
      {
        "id" : "Observation.component:ascentRate",
        "path" : "Observation.component",
        "sliceName" : "ascentRate",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:ascentRate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "ascent-rate"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ascentRate.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:ascentRate.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:ascentRate.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "m/min"
      },
      {
        "id" : "Observation.component:waterTemperature",
        "path" : "Observation.component",
        "sliceName" : "waterTemperature",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:waterTemperature.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "water-temperature"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:waterTemperature.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:waterTemperature.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:waterTemperature.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "Cel"
      },
      {
        "id" : "Observation.component:visibility",
        "path" : "Observation.component",
        "sliceName" : "visibility",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:visibility.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "visibility"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:visibility.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:visibility.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:visibility.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "m"
      },
      {
        "id" : "Observation.component:nitrogenLoading",
        "path" : "Observation.component",
        "sliceName" : "nitrogenLoading",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nitrogenLoading.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "nitrogen-loading"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:nitrogenLoading.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:nitrogenLoading.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:nitrogenLoading.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:breathingGasMixture",
        "path" : "Observation.component",
        "sliceName" : "breathingGasMixture",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:breathingGasMixture.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "breathing-gas"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:breathingGasMixture.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:decompressionObligation",
        "path" : "Observation.component",
        "sliceName" : "decompressionObligation",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:decompressionObligation.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "decompression-obligation"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:decompressionObligation.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Observation.component:emergencyProcedures",
        "path" : "Observation.component",
        "sliceName" : "emergencyProcedures",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:emergencyProcedures.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs",
              "code" : "emergency-procedures"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:emergencyProcedures.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:communicationLog",
        "path" : "Observation.component",
        "sliceName" : "communicationLog",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:communicationLog.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "communication-log"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:communicationLog.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
