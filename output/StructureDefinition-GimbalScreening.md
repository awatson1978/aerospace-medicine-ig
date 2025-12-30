# Gimbal Screening - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gimbal Screening**

## Resource Profile: Gimbal Screening 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/GimbalScreening | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:GimbalScreening |

 
Screening protocol for Multi Axis Gimbal training device. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/GimbalScreening)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-GimbalScreening.csv), [Excel](StructureDefinition-GimbalScreening.xlsx), [Schematron](StructureDefinition-GimbalScreening.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "GimbalScreening",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/GimbalScreening",
  "version" : "0.5.5",
  "name" : "GimbalScreening",
  "title" : "Gimbal Screening",
  "status" : "draft",
  "date" : "2025-12-30T10:45:53-07:00",
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
