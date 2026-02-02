# MRID Questionnaire Profile - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Questionnaire Profile**

## Resource Profile: MRID Questionnaire Profile 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mrid-questionnaire | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:MRIDQuestionnaire |

 
Profile for NASA Medical Requirements Integration Document (MRID) questionnaires. This profile standardizes the structure and metadata for MEDB (Medical Evaluation Document Baseline) and MR (Medical Requirements) documents translated to FHIR Questionnaire resources for structured data capture. 
All MRID questionnaires follow a standard structure with groups for: 
* Medical Requirements Overview (MRID metadata)
* Preflight Training
* Preflight Activities
* In-Flight Activities
* Postflight Activities
* Data Delivery
* Domain-Specific Results (e.g., radiation doses, ECG findings)
* Postflight Debrief
 
The profile supports SDC-compatible extensions for: 
* Launch context (astronaut/patient reference)
* Observation extraction from QuestionnaireResponse
 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mrid-questionnaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mrid-questionnaire.csv), [Excel](StructureDefinition-mrid-questionnaire.xlsx), [Schematron](StructureDefinition-mrid-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mrid-questionnaire",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-questionnaire",
  "version" : "0.5.8",
  "name" : "MRIDQuestionnaire",
  "title" : "MRID Questionnaire Profile",
  "status" : "active",
  "date" : "2026-02-02T11:11:20-06:00",
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
  "description" : "Profile for NASA Medical Requirements Integration Document (MRID) questionnaires.\nThis profile standardizes the structure and metadata for MEDB (Medical Evaluation\nDocument Baseline) and MR (Medical Requirements) documents translated to FHIR\nQuestionnaire resources for structured data capture.\n\nAll MRID questionnaires follow a standard structure with groups for:\n- Medical Requirements Overview (MRID metadata)\n- Preflight Training\n- Preflight Activities\n- In-Flight Activities\n- Postflight Activities\n- Data Delivery\n- Domain-Specific Results (e.g., radiation doses, ECG findings)\n- Postflight Debrief\n\nThe profile supports SDC-compatible extensions for:\n- Launch context (astronaut/patient reference)\n- Observation extraction from QuestionnaireResponse",
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Questionnaire",
        "path" : "Questionnaire"
      },
      {
        "id" : "Questionnaire.extension",
        "path" : "Questionnaire.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 3
      },
      {
        "id" : "Questionnaire.extension:sponsor",
        "path" : "Questionnaire.extension",
        "sliceName" : "sponsor",
        "short" : "NASA organizational sponsor for this medical requirement",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mrid-sponsor"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.extension:discipline",
        "path" : "Questionnaire.extension",
        "sliceName" : "discipline",
        "short" : "Medical discipline category",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mrid-discipline"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.extension:documentNumber",
        "path" : "Questionnaire.extension",
        "sliceName" : "documentNumber",
        "short" : "MRID document identifier (e.g., MEDB 3.1, MR004L)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mrid-document-number"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.extension:launchContext",
        "path" : "Questionnaire.extension",
        "sliceName" : "launchContext",
        "short" : "Context for pre-populating questionnaire (typically Patient reference)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mrid-launch-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.url",
        "path" : "Questionnaire.url",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.version",
        "path" : "Questionnaire.version",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.name",
        "path" : "Questionnaire.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.title",
        "path" : "Questionnaire.title",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.status",
        "path" : "Questionnaire.status",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.date",
        "path" : "Questionnaire.date",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.publisher",
        "path" : "Questionnaire.publisher",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.description",
        "path" : "Questionnaire.description",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.purpose",
        "path" : "Questionnaire.purpose",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.copyright",
        "path" : "Questionnaire.copyright",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.linkId",
        "path" : "Questionnaire.item.linkId",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.code",
        "path" : "Questionnaire.item.code",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.text",
        "path" : "Questionnaire.item.text",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.type",
        "path" : "Questionnaire.item.type",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.enableWhen",
        "path" : "Questionnaire.item.enableWhen",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.required",
        "path" : "Questionnaire.item.required",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.repeats",
        "path" : "Questionnaire.item.repeats",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.readOnly",
        "path" : "Questionnaire.item.readOnly",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.answerOption",
        "path" : "Questionnaire.item.answerOption",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.initial",
        "path" : "Questionnaire.item.initial",
        "mustSupport" : true
      },
      {
        "id" : "Questionnaire.item.item",
        "path" : "Questionnaire.item.item",
        "mustSupport" : true
      }
    ]
  }
}

```
