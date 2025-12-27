# Barotrauma Assessment - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Barotrauma Assessment**

## Resource Profile: Barotrauma Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/BarotraumaAssessment | *Version*:0.5.0 |
| Draft as of 2025-12-25 | *Computable Name*:BarotraumaAssessment |

 
Assessment of pressure-related injuries (barotrauma) 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/BarotraumaAssessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BarotraumaAssessment.csv), [Excel](StructureDefinition-BarotraumaAssessment.xlsx), [Schematron](StructureDefinition-BarotraumaAssessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BarotraumaAssessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/BarotraumaAssessment",
  "version" : "0.5.0",
  "name" : "BarotraumaAssessment",
  "title" : "Barotrauma Assessment",
  "status" : "draft",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Assessment of pressure-related injuries (barotrauma)",
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
              "system" : "http://snomed.info/sct",
              "code" : "49532004",
              "display" : "Barotrauma"
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
        "type" : [
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
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:earBarotrauma",
        "path" : "Observation.component",
        "sliceName" : "earBarotrauma",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:earBarotrauma.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "49532004",
              "display" : "Ear barotrauma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:earBarotrauma.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:pulmonaryBarotrauma",
        "path" : "Observation.component",
        "sliceName" : "pulmonaryBarotrauma",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:pulmonaryBarotrauma.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "123672002",
              "display" : "Pulmonary barotrauma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:pulmonaryBarotrauma.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:sinusBarotrauma",
        "path" : "Observation.component",
        "sliceName" : "sinusBarotrauma",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:sinusBarotrauma.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "LA6163-4",
              "display" : "Sinus barotrauma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sinusBarotrauma.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:dentalBarotrauma",
        "path" : "Observation.component",
        "sliceName" : "dentalBarotrauma",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:dentalBarotrauma.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "LA6164-2",
              "display" : "Dental barotrauma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:dentalBarotrauma.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
