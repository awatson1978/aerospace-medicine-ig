# BFRT Activity Definition - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Activity Definition**

## Resource Profile: BFRT Activity Definition 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/bfrt-activity-definition | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:BFRTActivityDefinition |

 
Prescribed BFRT protocol defining exercise parameters, occlusion pressure targets, and sex-specific adaptations 

**Usages:**

* Examples for this Profile: [LowLoadBFRTProtocol](ActivityDefinition-BFRT-Protocol-LowLoad-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/bfrt-activity-definition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bfrt-activity-definition.csv), [Excel](StructureDefinition-bfrt-activity-definition.xlsx), [Schematron](StructureDefinition-bfrt-activity-definition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bfrt-activity-definition",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/bfrt-activity-definition",
  "version" : "0.6.2",
  "name" : "BFRTActivityDefinition",
  "title" : "BFRT Activity Definition",
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
  "description" : "Prescribed BFRT protocol defining exercise parameters, occlusion pressure targets, and sex-specific adaptations",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ActivityDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ActivityDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ActivityDefinition",
        "path" : "ActivityDefinition"
      },
      {
        "id" : "ActivityDefinition.extension",
        "path" : "ActivityDefinition.extension",
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
        "id" : "ActivityDefinition.extension:sexSpecificProtocol",
        "path" : "ActivityDefinition.extension",
        "sliceName" : "sexSpecificProtocol",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/sex-specific-protocol"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ActivityDefinition.name",
        "path" : "ActivityDefinition.name",
        "mustSupport" : true
      },
      {
        "id" : "ActivityDefinition.title",
        "path" : "ActivityDefinition.title",
        "mustSupport" : true
      },
      {
        "id" : "ActivityDefinition.status",
        "path" : "ActivityDefinition.status",
        "mustSupport" : true
      },
      {
        "id" : "ActivityDefinition.description",
        "path" : "ActivityDefinition.description",
        "short" : "Protocol description including sets, reps, load percentage",
        "mustSupport" : true
      },
      {
        "id" : "ActivityDefinition.code",
        "path" : "ActivityDefinition.code",
        "short" : "BFRT protocol type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/bfrt-protocol-vs"
        }
      },
      {
        "id" : "ActivityDefinition.dosage",
        "path" : "ActivityDefinition.dosage",
        "short" : "Exercise dosage parameters",
        "mustSupport" : true
      }
    ]
  }
}

```
