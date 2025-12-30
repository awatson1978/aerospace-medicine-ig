# Safety Stop Compliance - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Safety Stop Compliance**

## Extension: Safety Stop Compliance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/safety-stop-compliance | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SafetyStopCompliance |

Compliance with required safety stops during ascent

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Decompression Protocol](StructureDefinition-decompression-protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/safety-stop-compliance)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-safety-stop-compliance.csv), [Excel](StructureDefinition-safety-stop-compliance.xlsx), [Schematron](StructureDefinition-safety-stop-compliance.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "safety-stop-compliance",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/safety-stop-compliance",
  "version" : "0.5.5",
  "name" : "SafetyStopCompliance",
  "title" : "Safety Stop Compliance",
  "status" : "draft",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Compliance with required safety stops during ascent",
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
        "short" : "Safety Stop Compliance",
        "definition" : "Compliance with required safety stops during ascent"
      },
      {
        "id" : "Extension.extension:depth",
        "path" : "Extension.extension",
        "sliceName" : "depth",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:depth.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:depth.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "depth"
      },
      {
        "id" : "Extension.extension:depth.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:duration",
        "path" : "Extension.extension",
        "sliceName" : "duration",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:duration.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:duration.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "duration"
      },
      {
        "id" : "Extension.extension:duration.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      },
      {
        "id" : "Extension.extension:completed",
        "path" : "Extension.extension",
        "sliceName" : "completed",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:completed.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:completed.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "completed"
      },
      {
        "id" : "Extension.extension:completed.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/safety-stop-compliance"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
