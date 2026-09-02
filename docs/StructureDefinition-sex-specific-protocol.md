# Sex-Specific Protocol - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sex-Specific Protocol**

## Extension: Sex-Specific Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/sex-specific-protocol | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SexSpecificProtocol |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Indicates sex-specific adaptations to the BFRT protocol based on known differences in vascular and musculoskeletal response

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BFRT Activity Definition](StructureDefinition-bfrt-activity-definition.md) and [BFRT Care Plan](StructureDefinition-bfrt-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/sex-specific-protocol)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sex-specific-protocol.csv), [Excel](StructureDefinition-sex-specific-protocol.xlsx), [Schematron](StructureDefinition-sex-specific-protocol.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sex-specific-protocol",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/sex-specific-protocol",
  "version" : "0.7.0",
  "name" : "SexSpecificProtocol",
  "title" : "Sex-Specific Protocol",
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
  "description" : "Indicates sex-specific adaptations to the BFRT protocol based on known differences in vascular and musculoskeletal response",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "CarePlan"
    },
    {
      "type" : "element",
      "expression" : "ActivityDefinition"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Sex-Specific Protocol",
        "definition" : "Indicates sex-specific adaptations to the BFRT protocol based on known differences in vascular and musculoskeletal response"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/sex-specific-protocol"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Sex-specific protocol adaptation",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
