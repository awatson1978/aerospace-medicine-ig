# Spaceflight Anemia Panel - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spaceflight Anemia Panel**

## Resource Profile: Spaceflight Anemia Panel 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/spaceflight-anemia-panel | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceflightAnemiaPanel |

 
Panel of hematological markers for spaceflight-associated anemia assessment 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/spaceflight-anemia-panel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-spaceflight-anemia-panel.csv), [Excel](StructureDefinition-spaceflight-anemia-panel.xlsx), [Schematron](StructureDefinition-spaceflight-anemia-panel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "spaceflight-anemia-panel",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/spaceflight-anemia-panel",
  "version" : "0.6.0",
  "name" : "SpaceflightAnemiaPanel",
  "title" : "Spaceflight Anemia Panel",
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
  "description" : "Panel of hematological markers for spaceflight-associated anemia assessment",
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
        "short" : "Spaceflight anemia panel",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "24360-1",
              "display" : "Hemoglobin and Hematocrit panel"
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
        "id" : "Observation.component:hemoglobin",
        "path" : "Observation.component",
        "sliceName" : "hemoglobin",
        "short" : "Hemoglobin concentration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:hemoglobin.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "718-7",
              "display" : "Hemoglobin [Mass/volume] in Blood"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:hemoglobin.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:hemoglobin.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:hemoglobin.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "g/dL"
      },
      {
        "id" : "Observation.component:hematocrit",
        "path" : "Observation.component",
        "sliceName" : "hematocrit",
        "short" : "Hematocrit percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:hematocrit.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "4544-3",
              "display" : "Hematocrit [Volume Fraction] of Blood by Automated count"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:hematocrit.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:hematocrit.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:hematocrit.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:reticulocyteCount",
        "path" : "Observation.component",
        "sliceName" : "reticulocyteCount",
        "short" : "Reticulocyte count",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:reticulocyteCount.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "17849-1",
              "display" : "Reticulocytes [#/volume] in Blood"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:reticulocyteCount.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:reticulocyteCount.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:reticulocyteCount.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "10*9/L"
      },
      {
        "id" : "Observation.component:haptoglobin",
        "path" : "Observation.component",
        "sliceName" : "haptoglobin",
        "short" : "Haptoglobin level (hemolysis marker)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:haptoglobin.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "4542-7",
              "display" : "Haptoglobin [Mass/volume] in Serum"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:haptoglobin.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:haptoglobin.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:haptoglobin.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mg/dL"
      },
      {
        "id" : "Observation.component:ldh",
        "path" : "Observation.component",
        "sliceName" : "ldh",
        "short" : "Lactate dehydrogenase (hemolysis marker)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ldh.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2532-0",
              "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ldh.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:ldh.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:ldh.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "U/L"
      },
      {
        "id" : "Observation.component:rbcMass",
        "path" : "Observation.component",
        "sliceName" : "rbcMass",
        "short" : "Total red blood cell mass",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:rbcMass.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-anemia-cs",
              "code" : "rbc-mass",
              "display" : "Red Blood Cell Mass"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:rbcMass.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:rbcMass.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:rbcMass.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mL"
      },
      {
        "id" : "Observation.component:coBreathTest",
        "path" : "Observation.component",
        "sliceName" : "coBreathTest",
        "short" : "CO breath test for RBC destruction rate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:coBreathTest.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/space-anemia-cs",
              "code" : "co-breath-test",
              "display" : "CO Breath Test"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:coBreathTest.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:coBreathTest.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:coBreathTest.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "[ppm]"
      }
    ]
  }
}

```
