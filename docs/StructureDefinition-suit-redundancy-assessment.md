# Suit Redundancy Assessment - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Suit Redundancy Assessment**

## Resource Profile: Suit Redundancy Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/suit-redundancy-assessment | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SuitRedundancyAssessment |

 
Assessment of EVA suit redundancy status, consumables remaining, and maintenance schedule 

**Usages:**

* Examples for this Profile: [Observation/SuitRedundancy-Assessment-001](Observation-SuitRedundancy-Assessment-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/suit-redundancy-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-suit-redundancy-assessment.csv), [Excel](StructureDefinition-suit-redundancy-assessment.xlsx), [Schematron](StructureDefinition-suit-redundancy-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "suit-redundancy-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/suit-redundancy-assessment",
  "version" : "0.6.2",
  "name" : "SuitRedundancyAssessment",
  "title" : "Suit Redundancy Assessment",
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
  "description" : "Assessment of EVA suit redundancy status, consumables remaining, and maintenance schedule",
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Suit redundancy assessment",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Mission or vehicle being assessed",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
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
        "id" : "Observation.component:primarySuitStatus",
        "path" : "Observation.component",
        "sliceName" : "primarySuitStatus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:primarySuitStatus.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Primary Suit Status"
      },
      {
        "id" : "Observation.component:primarySuitStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Current status of primary EVA suit",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/suit-provisioning-status-vs"
        }
      },
      {
        "id" : "Observation.component:backupSuitStatus",
        "path" : "Observation.component",
        "sliceName" : "backupSuitStatus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:backupSuitStatus.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Backup Suit Status"
      },
      {
        "id" : "Observation.component:backupSuitStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Current status of backup EVA suit",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/suit-provisioning-status-vs"
        }
      },
      {
        "id" : "Observation.component:consumablesRemaining",
        "path" : "Observation.component",
        "sliceName" : "consumablesRemaining",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:consumablesRemaining.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Consumables Remaining"
      },
      {
        "id" : "Observation.component:consumablesRemaining.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Remaining consumables in EVA-hours",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:consumablesRemaining.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:consumablesRemaining.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "h"
      },
      {
        "id" : "Observation.component:nextMaintenanceDue",
        "path" : "Observation.component",
        "sliceName" : "nextMaintenanceDue",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:nextMaintenanceDue.code.text",
        "path" : "Observation.component.code.text",
        "patternString" : "Next Maintenance Due"
      },
      {
        "id" : "Observation.component:nextMaintenanceDue.value[x]",
        "path" : "Observation.component.value[x]",
        "short" : "Date next maintenance is due",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
