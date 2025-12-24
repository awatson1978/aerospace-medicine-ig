# Maximum Training Depth - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maximum Training Depth**

## Extension: Maximum Training Depth 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/maximum-depth | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:MaximumDepth |

Maximum depth reached during training session

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md) and [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/maximum-depth)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-maximum-depth.csv), [Excel](StructureDefinition-maximum-depth.xlsx), [Schematron](StructureDefinition-maximum-depth.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "maximum-depth",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/maximum-depth",
  "version" : "0.4.2",
  "name" : "MaximumDepth",
  "title" : "Maximum Training Depth",
  "status" : "draft",
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Maximum depth reached during training session",
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
        "short" : "Maximum Training Depth",
        "definition" : "Maximum depth reached during training session"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/maximum-depth"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].unit",
        "path" : "Extension.value[x].unit",
        "patternString" : "m"
      }
    ]
  }
}

```
