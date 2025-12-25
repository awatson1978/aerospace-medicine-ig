# Decompression Algorithm Used - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Algorithm Used**

## Extension: Decompression Algorithm Used 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/decompression-algorithm | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DecompressionAlgorithm |

The specific decompression algorithm or table used

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Decompression Protocol](StructureDefinition-decompression-protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/decompression-algorithm)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-decompression-algorithm.csv), [Excel](StructureDefinition-decompression-algorithm.xlsx), [Schematron](StructureDefinition-decompression-algorithm.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "decompression-algorithm",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/decompression-algorithm",
  "version" : "0.4.2",
  "name" : "DecompressionAlgorithm",
  "title" : "Decompression Algorithm Used",
  "status" : "draft",
  "date" : "2025-12-24T17:35:27-07:00",
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
  "description" : "The specific decompression algorithm or table used",
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
        "short" : "Decompression Algorithm Used",
        "definition" : "The specific decompression algorithm or table used"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/decompression-algorithm"
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
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/decompression-procedures"
        }
      }
    ]
  }
}

```
