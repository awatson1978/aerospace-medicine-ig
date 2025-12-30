# Hyperbaric Treatment - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Treatment**

## Resource Profile: Hyperbaric Treatment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/HyperbaricTreatment | *Version*:0.5.4 |
| Draft as of 2025-12-29 | *Computable Name*:HyperbaricTreatment |

 
Hyperbaric oxygen therapy or chamber treatment 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/HyperbaricTreatment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HyperbaricTreatment.csv), [Excel](StructureDefinition-HyperbaricTreatment.xlsx), [Schematron](StructureDefinition-HyperbaricTreatment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HyperbaricTreatment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/HyperbaricTreatment",
  "version" : "0.5.4",
  "name" : "HyperbaricTreatment",
  "title" : "Hyperbaric Treatment",
  "status" : "draft",
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
  "description" : "Hyperbaric oxygen therapy or chamber treatment",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:treatmentTable",
        "path" : "Procedure.extension",
        "sliceName" : "treatmentTable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/treatment-table"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:maximumPressure",
        "path" : "Procedure.extension",
        "sliceName" : "maximumPressure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:treatmentDuration",
        "path" : "Procedure.extension",
        "sliceName" : "treatmentDuration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/treatment-duration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:oxygenConcentration",
        "path" : "Procedure.extension",
        "sliceName" : "oxygenConcentration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:complications",
        "path" : "Procedure.extension",
        "sliceName" : "complications",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/complication-monitoring"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "18678007",
              "display" : "Hyperbaric oxygen therapy"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
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
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.performed[x]:performedDateTime",
        "path" : "Procedure.performed[x]",
        "sliceName" : "performedDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber"
            ]
          }
        ]
      }
    ]
  }
}

```
