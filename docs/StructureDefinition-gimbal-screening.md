# Gimbal Screening - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gimbal Screening**

## Resource Profile: Gimbal Screening 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gimbal-screening | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:GimbalScreening |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Screening protocol for Multi Axis Gimbal training device. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/gimbal-screening)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gimbal-screening.csv), [Excel](StructureDefinition-gimbal-screening.xlsx), [Schematron](StructureDefinition-gimbal-screening.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gimbal-screening",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gimbal-screening",
  "version" : "0.7.0",
  "name" : "GimbalScreening",
  "title" : "Gimbal Screening",
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
  "description" : "Screening protocol for Multi Axis Gimbal training device.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "document"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource.resolve()"
            }
          ],
          "description" : "Slice based on the entry.resource pattern",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Bundle.entry:contraindicatedConditions",
        "path" : "Bundle.entry",
        "sliceName" : "contraindicatedConditions",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:contraindicatedConditions.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition"
          }
        ]
      },
      {
        "id" : "Bundle.entry:contraindicatedProcedures",
        "path" : "Bundle.entry",
        "sliceName" : "contraindicatedProcedures",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:contraindicatedProcedures.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Procedure"
          }
        ]
      },
      {
        "id" : "Bundle.entry:contraindicatedMedications",
        "path" : "Bundle.entry",
        "sliceName" : "contraindicatedMedications",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:contraindicatedMedications.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Medication"
          }
        ]
      },
      {
        "id" : "Bundle.entry:contraindicatedObservations",
        "path" : "Bundle.entry",
        "sliceName" : "contraindicatedObservations",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:contraindicatedObservations.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation"
          }
        ]
      }
    ]
  }
}

```
