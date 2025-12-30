# Hyperbaric Chamber Configuration - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Configuration**

## Extension: Hyperbaric Chamber Configuration 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/chamber-configuration | *Version*:0.5.2 |
| Draft as of 2025-12-29 | *Computable Name*:ChamberConfiguration |

Configuration and setup of the hyperbaric chamber

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/chamber-configuration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-chamber-configuration.csv), [Excel](StructureDefinition-chamber-configuration.xlsx), [Schematron](StructureDefinition-chamber-configuration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "chamber-configuration",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/chamber-configuration",
  "version" : "0.5.2",
  "name" : "ChamberConfiguration",
  "title" : "Hyperbaric Chamber Configuration",
  "status" : "draft",
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "Configuration and setup of the hyperbaric chamber",
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
        "short" : "Hyperbaric Chamber Configuration",
        "definition" : "Configuration and setup of the hyperbaric chamber"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/chamber-configuration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
          }
        ]
      }
    ]
  }
}

```
