# Cumulative Stress Burden - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cumulative Stress Burden**

## Resource Profile: Cumulative Stress Burden 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/cumulative-stress-burden | *Version*:0.5.1 |
| Active as of 2025-12-29 | *Computable Name*:CumulativeStressBurden |

 
Longitudinal, integrated measure of cumulative stress burden analogous to cumulative radiation dose. 

**Usages:**

* Examples for this Profile: [Observation/ISS-StressBurden-Day180](Observation-ISS-StressBurden-Day180.md) and [Observation/ISS-StressBurden-Day90](Observation-ISS-StressBurden-Day90.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/cumulative-stress-burden)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cumulative-stress-burden.csv), [Excel](StructureDefinition-cumulative-stress-burden.xlsx), [Schematron](StructureDefinition-cumulative-stress-burden.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cumulative-stress-burden",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/cumulative-stress-burden",
  "version" : "0.5.1",
  "name" : "CumulativeStressBurden",
  "title" : "Cumulative Stress Burden",
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
  "description" : "Longitudinal, integrated measure of cumulative stress burden analogous to cumulative radiation dose.",
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
        ]
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs"
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "cumulative-stress"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
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
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "min" : 1,
        "patternString" : "stress units"
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
        "id" : "Observation.component:emotional",
        "path" : "Observation.component",
        "sliceName" : "emotional",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:emotional.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "mood-level"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:emotional.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:cognitive",
        "path" : "Observation.component",
        "sliceName" : "cognitive",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:cognitive.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "cognitive-readiness"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:cognitive.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:social",
        "path" : "Observation.component",
        "sliceName" : "social",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:social.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "social-connectedness"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:social.value[x]",
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
