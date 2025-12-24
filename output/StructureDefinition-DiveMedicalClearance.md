# Dive Medical Clearance - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dive Medical Clearance**

## Resource Profile: Dive Medical Clearance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/DiveMedicalClearance | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DiveMedicalClearance |

 
Medical clearance examination for diving operations 

**Usages:**

* Examples for this Profile: [Procedure/ExampleDiveMedicalClearance](Procedure-ExampleDiveMedicalClearance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/DiveMedicalClearance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DiveMedicalClearance.csv), [Excel](StructureDefinition-DiveMedicalClearance.xlsx), [Schematron](StructureDefinition-DiveMedicalClearance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DiveMedicalClearance",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/DiveMedicalClearance",
  "version" : "0.4.2",
  "name" : "DiveMedicalClearance",
  "title" : "Dive Medical Clearance",
  "status" : "draft",
  "date" : "2025-12-24T12:48:12-07:00",
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
  "description" : "Medical clearance examination for diving operations",
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
        "id" : "Procedure.extension:pulmonaryFunction",
        "path" : "Procedure.extension",
        "sliceName" : "pulmonaryFunction",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/pulmonary-function"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:cardiovascularFitness",
        "path" : "Procedure.extension",
        "sliceName" : "cardiovascularFitness",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/cardiovascular-fitness"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:vestibularAssessment",
        "path" : "Procedure.extension",
        "sliceName" : "vestibularAssessment",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/vestibular-assessment"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:contraindications",
        "path" : "Procedure.extension",
        "sliceName" : "contraindications",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/diving-contraindications"
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
              "code" : "79492003",
              "display" : "Diving medical examination"
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
        "id" : "Procedure.outcome",
        "path" : "Procedure.outcome",
        "mustSupport" : true
      }
    ]
  }
}

```
