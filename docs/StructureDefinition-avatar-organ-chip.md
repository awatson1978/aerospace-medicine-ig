# AVATAR Organ-on-Chip Device - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AVATAR Organ-on-Chip Device**

## Resource Profile: AVATAR Organ-on-Chip Device 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/avatar-organ-chip | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AVATAROrganChip |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Organ-on-chip (microphysiological system) device from the AVATAR investigation for tissue-chip-based monitoring in spaceflight 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/avatar-organ-chip)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-avatar-organ-chip.csv), [Excel](StructureDefinition-avatar-organ-chip.xlsx), [Schematron](StructureDefinition-avatar-organ-chip.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "avatar-organ-chip",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/avatar-organ-chip",
  "version" : "0.7.0",
  "name" : "AVATAROrganChip",
  "title" : "AVATAR Organ-on-Chip Device",
  "status" : "active",
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
  "description" : "Organ-on-chip (microphysiological system) device from the AVATAR investigation for tissue-chip-based monitoring in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.extension",
        "path" : "Device.extension",
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
        "id" : "Device.extension:missionContext",
        "path" : "Device.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "mustSupport" : true
      },
      {
        "id" : "Device.modelNumber",
        "path" : "Device.modelNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "short" : "Type of organ-on-chip system",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/organ-chip-type-vs"
        }
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Device.property:cellSource",
        "path" : "Device.property",
        "sliceName" : "cellSource",
        "short" : "Source of cells used in the chip",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:cellSource.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "4421005",
              "display" : "Cell structure"
            }
          ]
        }
      },
      {
        "id" : "Device.property:cultureDuration",
        "path" : "Device.property",
        "sliceName" : "cultureDuration",
        "short" : "Duration of cell culture exposure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:cultureDuration.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
              "code" : "exposure-duration",
              "display" : "Exposure Duration"
            }
          ]
        }
      }
    ]
  }
}

```
