# Decompression Sickness - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Sickness**

## Resource Profile: Decompression Sickness 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/decompression-sickness | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:DecompressionSickness |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Decompression sickness occurring during diving or altitude training 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/decompression-sickness)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-decompression-sickness.csv), [Excel](StructureDefinition-decompression-sickness.xlsx), [Schematron](StructureDefinition-decompression-sickness.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "decompression-sickness",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/decompression-sickness",
  "version" : "0.7.0",
  "name" : "DecompressionSickness",
  "title" : "Decompression Sickness",
  "status" : "draft",
  "date" : "2026-09-02T13:24:45-05:00",
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
  "description" : "Decompression sickness occurring during diving or altitude training",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
  "type" : "Condition",
  "baseDefinition" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.severity",
        "path" : "Condition.severity",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "37347000",
              "display" : "Caisson disease"
            }
          ]
        }
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "mustSupport" : true
      },
      {
        "id" : "Condition.evidence",
        "path" : "Condition.evidence",
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
        "id" : "Condition.evidence:diveProfile",
        "path" : "Condition.evidence",
        "sliceName" : "diveProfile",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Condition.evidence:diveProfile.code",
        "path" : "Condition.evidence.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/diving-medicine-cs",
              "code" : "dive-profile",
              "display" : "Dive Profile"
            }
          ]
        }
      },
      {
        "id" : "Condition.evidence:diveProfile.detail",
        "path" : "Condition.evidence.detail",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/dive-profile"
            ]
          }
        ]
      },
      {
        "id" : "Condition.evidence:symptoms",
        "path" : "Condition.evidence",
        "sliceName" : "symptoms",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Condition.evidence:symptoms.code",
        "path" : "Condition.evidence.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "418799008",
              "display" : "Symptom"
            }
          ]
        }
      },
      {
        "id" : "Condition.evidence:symptoms.detail",
        "path" : "Condition.evidence.detail",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      },
      {
        "id" : "Condition.evidence:treatment",
        "path" : "Condition.evidence",
        "sliceName" : "treatment",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Condition.evidence:treatment.code",
        "path" : "Condition.evidence.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "276239002",
              "display" : "Therapy"
            }
          ]
        }
      },
      {
        "id" : "Condition.evidence:treatment.detail",
        "path" : "Condition.evidence.detail",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
          }
        ]
      }
    ]
  }
}

```
