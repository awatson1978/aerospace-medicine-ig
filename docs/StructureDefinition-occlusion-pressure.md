# Occlusion Pressure - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Occlusion Pressure**

## Extension: Occlusion Pressure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/occlusion-pressure | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:OcclusionPressure |

Applied limb occlusion pressure during blood flow restriction training

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BFRT Procedure](StructureDefinition-bfrt-procedure.md)
* Examples for this Extension: [Procedure/BFRT-LowerBody-Session-001](Procedure-BFRT-LowerBody-Session-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/occlusion-pressure)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-occlusion-pressure.csv), [Excel](StructureDefinition-occlusion-pressure.xlsx), [Schematron](StructureDefinition-occlusion-pressure.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "occlusion-pressure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/occlusion-pressure",
  "version" : "0.6.0",
  "name" : "OcclusionPressure",
  "title" : "Occlusion Pressure",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Applied limb occlusion pressure during blood flow restriction training",
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
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "Observation"
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
        "short" : "Occlusion Pressure",
        "definition" : "Applied limb occlusion pressure during blood flow restriction training"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/occlusion-pressure"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Occlusion pressure in mmHg",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "mm[Hg]"
      }
    ]
  }
}

```
