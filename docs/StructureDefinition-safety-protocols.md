# Safety Protocols - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Safety Protocols**

## Extension: Safety Protocols 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/safety-protocols | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SafetyProtocols |

Safety protocols and procedures followed during training

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md) and [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/safety-protocols)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-safety-protocols.csv), [Excel](StructureDefinition-safety-protocols.xlsx), [Schematron](StructureDefinition-safety-protocols.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "safety-protocols",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/safety-protocols",
  "version" : "0.5.1",
  "name" : "SafetyProtocols",
  "title" : "Safety Protocols",
  "status" : "draft",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Safety protocols and procedures followed during training",
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
        "short" : "Safety Protocols",
        "definition" : "Safety protocols and procedures followed during training"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/safety-protocols"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/regulatory-standards"
        }
      }
    ]
  }
}

```
