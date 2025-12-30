# ISRU Production Log - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Production Log**

## Resource Profile: ISRU Production Log 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/isru-production-log | *Version*:0.5.4 |
| Active as of 2025-12-29 | *Computable Name*:ISRUProductionLog |

 
Tracking ISRU propellant production (CH4/O2) for Mars return journey 

**Usages:**

* Examples for this Profile: [Observation/ISRU-Production-Sol210](Observation-ISRU-Production-Sol210.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/isru-production-log)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-isru-production-log.csv), [Excel](StructureDefinition-isru-production-log.xlsx), [Schematron](StructureDefinition-isru-production-log.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "isru-production-log",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/isru-production-log",
  "version" : "0.5.4",
  "name" : "ISRUProductionLog",
  "title" : "ISRU Production Log",
  "status" : "active",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Tracking ISRU propellant production (CH4/O2) for Mars return journey",
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
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:operational",
        "path" : "Observation.category",
        "sliceName" : "operational",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:operational.coding.system",
        "path" : "Observation.category.coding.system",
        "patternUri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/observation-category-aerospace"
      },
      {
        "id" : "Observation.category:operational.coding.code",
        "path" : "Observation.category.coding.code",
        "patternCode" : "operational"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.text",
        "path" : "Observation.code.text",
        "patternString" : "ISRU Propellant Production"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Mass of propellant produced (kg CH4 or O2)",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/ucum-bodyweight"
        }
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "ISRU plant device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
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
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:reactorStatus",
        "path" : "Observation.component",
        "sliceName" : "reactorStatus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:reactorStatus.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Reactor Status"
      },
      {
        "id" : "Observation.component:reactorStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Observation.component:powerConsumption",
        "path" : "Observation.component",
        "sliceName" : "powerConsumption",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:powerConsumption.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Power Consumption"
      },
      {
        "id" : "Observation.component:powerConsumption.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:powerConsumption.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:powerConsumption.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "kW"
      }
    ]
  }
}

```
