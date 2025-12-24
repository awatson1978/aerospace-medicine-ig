# Regulatory Compliance - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Regulatory Compliance**

## Extension: Regulatory Compliance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:RegulatoryCompliance |

Regulatory standards compliance during training session

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/regulatory-compliance)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-regulatory-compliance.csv), [Excel](StructureDefinition-regulatory-compliance.xlsx), [Schematron](StructureDefinition-regulatory-compliance.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "regulatory-compliance",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance",
  "version" : "0.4.2",
  "name" : "RegulatoryCompliance",
  "title" : "Regulatory Compliance",
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
  "description" : "Regulatory standards compliance during training session",
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
      "expression" : "Element"
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
        "short" : "Regulatory Compliance",
        "definition" : "Regulatory standards compliance during training session"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance-assessment"
            ]
          }
        ]
      }
    ]
  }
}

```
