# Behavioral Health State - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behavioral Health State**

## Resource Profile: Behavioral Health State 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/behavioral-health-state | *Version*:0.5.1 |
| Active as of 2025-12-29 | *Computable Name*:BehavioralHealthState |

 
Point-in-time behavioral and psychological state assessment for aerospace missions. 

**Usages:**

* Examples for this Profile: [Observation/ISS-AnxietyAssessment-PreEVA](Observation-ISS-AnxietyAssessment-PreEVA.md), [Observation/ISS-CognitiveReadiness-PostAnomaly](Observation-ISS-CognitiveReadiness-PostAnomaly.md) and [Observation/ISS-MoodAssessment-Week12](Observation-ISS-MoodAssessment-Week12.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/behavioral-health-state)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-behavioral-health-state.csv), [Excel](StructureDefinition-behavioral-health-state.xlsx), [Schematron](StructureDefinition-behavioral-health-state.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "behavioral-health-state",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/behavioral-health-state",
  "version" : "0.5.1",
  "name" : "BehavioralHealthState",
  "title" : "Behavioral Health State",
  "status" : "active",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Point-in-time behavioral and psychological state assessment for aerospace missions.",
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
        "id" : "Observation.category",
        "path" : "Observation.category",
        "min" : 1
      },
      {
        "id" : "Observation.category.coding",
        "path" : "Observation.category.coding",
        "min" : 1
      },
      {
        "id" : "Observation.category.coding.system",
        "path" : "Observation.category.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.category.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "55467-8"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/behavioral-health-metrics-vs"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1
      },
      {
        "id" : "Observation.subject.reference",
        "path" : "Observation.subject.reference",
        "min" : 1
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
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
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:cortisol",
        "path" : "Observation.component",
        "sliceName" : "cortisol",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:cortisol.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
              "code" : "cortisol-ugdl"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:cortisol.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:cortisol.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "µg/dL"
      },
      {
        "id" : "Observation.component:hrv",
        "path" : "Observation.component",
        "sliceName" : "hrv",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:hrv.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
              "code" : "hrv-ms"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:hrv.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:hrv.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "ms"
      },
      {
        "id" : "Observation.component:sleep-efficiency",
        "path" : "Observation.component",
        "sliceName" : "sleep-efficiency",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sleep-efficiency.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
              "code" : "sleep-efficiency-pct"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sleep-efficiency.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sleep-efficiency.value[x].unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "%"
      }
    ]
  }
}

```
