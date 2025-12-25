# Decompression Protocol - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Protocol**

## Resource Profile: Decompression Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/decompression-protocol | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DecompressionProtocol |

 
Standardized decompression procedures for diving operations and space analog training 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/decompression-protocol)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-decompression-protocol.csv), [Excel](StructureDefinition-decompression-protocol.xlsx), [Schematron](StructureDefinition-decompression-protocol.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "decompression-protocol",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/decompression-protocol",
  "version" : "0.4.2",
  "name" : "DecompressionProtocol",
  "title" : "Decompression Protocol",
  "status" : "draft",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Standardized decompression procedures for diving operations and space analog training",
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
        "id" : "Procedure.extension:algorithm",
        "path" : "Procedure.extension",
        "sliceName" : "algorithm",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/decompression-algorithm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:maxDepth",
        "path" : "Procedure.extension",
        "sliceName" : "maxDepth",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/maximum-depth-reached"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:decoTime",
        "path" : "Procedure.extension",
        "sliceName" : "decoTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/total-decompression-time"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:safetyStops",
        "path" : "Procedure.extension",
        "sliceName" : "safetyStops",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/safety-stop-compliance"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:environmental",
        "path" : "Procedure.extension",
        "sliceName" : "environmental",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/environmental-factors"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:emergency",
        "path" : "Procedure.extension",
        "sliceName" : "emergency",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/emergency-procedures"
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
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/decompression-procedures"
        }
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
              "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancyFacility",
              "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber"
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
