# Total Decompression Time - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Total Decompression Time**

## Extension: Total Decompression Time 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/total-decompression-time | *Version*:0.5.3 |
| Draft as of 2025-12-29 | *Computable Name*:TotalDecompressionTime |

Total time required for decompression including all stops

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Decompression Protocol](StructureDefinition-decompression-protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/total-decompression-time)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-total-decompression-time.csv), [Excel](StructureDefinition-total-decompression-time.xlsx), [Schematron](StructureDefinition-total-decompression-time.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "total-decompression-time",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/total-decompression-time",
  "version" : "0.5.3",
  "name" : "TotalDecompressionTime",
  "title" : "Total Decompression Time",
  "status" : "draft",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Total time required for decompression including all stops",
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
        "short" : "Total Decompression Time",
        "definition" : "Total time required for decompression including all stops"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/total-decompression-time"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      }
    ]
  }
}

```
