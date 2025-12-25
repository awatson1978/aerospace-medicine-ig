# Dive Profile - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dive Profile**

## Resource Profile: Dive Profile 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/DiveProfile | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DiveProfile |

 
Comprehensive dive profile including depth, time, and environmental data 

**Usages:**

* Refer to this Profile: [Decompression Sickness](StructureDefinition-DecompressionSickness.md)
* Examples for this Profile: [Observation/ExampleDiveProfile](Observation-ExampleDiveProfile.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/DiveProfile)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiveProfile.csv), [Excel](StructureDefinition-DiveProfile.xlsx), [Schematron](StructureDefinition-DiveProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiveProfile",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/DiveProfile",
  "version" : "0.4.2",
  "name" : "DiveProfile",
  "title" : "Dive Profile",
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
  "description" : "Comprehensive dive profile including depth, time, and environmental data",
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
              "system" : "http://loinc.org",
              "code" : "LA6156-8",
              "display" : "Dive profile"
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
              "system" : "http://loinc.org",
              "code" : "33747-0",
              "display" : "Maximum depth"
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
        "id" : "Observation.component:maximumDepth.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "m"
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
              "system" : "http://loinc.org",
              "code" : "LA6157-6",
              "display" : "Bottom time"
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
        "id" : "Observation.component:bottomTime.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "min"
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
              "system" : "http://loinc.org",
              "code" : "LA6158-4",
              "display" : "Surface interval"
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
        "id" : "Observation.component:surfaceInterval.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "min"
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
              "system" : "http://loinc.org",
              "code" : "LA6159-2",
              "display" : "Ascent rate"
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
        "id" : "Observation.component:ascentRate.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "m/min"
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
              "system" : "http://loinc.org",
              "code" : "33746-2",
              "display" : "Water temperature"
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
        "id" : "Observation.component:waterTemperature.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "Cel"
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
              "system" : "http://loinc.org",
              "code" : "LA6160-0",
              "display" : "Underwater visibility"
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
        "id" : "Observation.component:visibility.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "m"
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
              "system" : "http://loinc.org",
              "code" : "LA6161-8",
              "display" : "Nitrogen tissue loading"
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
      }
    ]
  }
}

```
