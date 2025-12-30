# Space Suit Configuration - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Suit Configuration**

## Extension: Space Suit Configuration 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/suit-configuration | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SuitConfiguration |

Configuration of space suit simulator used in training

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Underwater EVA Simulation](StructureDefinition-UnderwaterEVASimulation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/suit-configuration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-suit-configuration.csv), [Excel](StructureDefinition-suit-configuration.xlsx), [Schematron](StructureDefinition-suit-configuration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "suit-configuration",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/suit-configuration",
  "version" : "0.5.1",
  "name" : "SuitConfiguration",
  "title" : "Space Suit Configuration",
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
  "description" : "Configuration of space suit simulator used in training",
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
        "short" : "Space Suit Configuration",
        "definition" : "Configuration of space suit simulator used in training"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/suit-configuration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment"
            ]
          }
        ]
      }
    ]
  }
}

```
