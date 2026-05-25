# BLiSS Resource Output - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BLiSS Resource Output**

## Resource Profile: BLiSS Resource Output 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/bliss-resource-output | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BLiSSResourceOutput |

 
Observation of bioregenerative life support system resource output quantities and rates 

**Usages:**

* Examples for this Profile: [Observation/BLiSS-O2-Production-001](Observation-BLiSS-O2-Production-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/bliss-resource-output)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bliss-resource-output.csv), [Excel](StructureDefinition-bliss-resource-output.xlsx), [Schematron](StructureDefinition-bliss-resource-output.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bliss-resource-output",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/bliss-resource-output",
  "version" : "0.6.0",
  "name" : "BLiSSResourceOutput",
  "title" : "BLiSS Resource Output",
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
  "description" : "Observation of bioregenerative life support system resource output quantities and rates",
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
        "id" : "Observation.extension:gravityContext",
        "path" : "Observation.extension",
        "sliceName" : "gravityContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context"
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "BLiSS output type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/bliss-output-vs"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Habitat or bioreactor producing the output",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
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
        "id" : "Observation.component:outputQuantity",
        "path" : "Observation.component",
        "sliceName" : "outputQuantity",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:outputQuantity.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Output Quantity"
      },
      {
        "id" : "Observation.component:outputQuantity.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Total output quantity (kg, L, mol)",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:outputRate",
        "path" : "Observation.component",
        "sliceName" : "outputRate",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:outputRate.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Output Rate"
      },
      {
        "id" : "Observation.component:outputRate.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Production rate (per day or per cycle)",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:energyInput",
        "path" : "Observation.component",
        "sliceName" : "energyInput",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:energyInput.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Energy Input"
      },
      {
        "id" : "Observation.component:energyInput.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Energy input in kilowatts",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:energyInput.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:energyInput.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "kW"
      }
    ]
  }
}

```
