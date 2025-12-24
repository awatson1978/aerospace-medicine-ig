# Harness Load - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Harness Load**

## Extension: Harness Load 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:HarnessLoad |

Percentage of body weight applied by harness during treadmill exercise

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md)
* Examples for this Extension: [Observation/ISS-T2-Run-Group-001](Observation-ISS-T2-Run-Group-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/harness-load)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-harness-load.csv), [Excel](StructureDefinition-harness-load.xlsx), [Schematron](StructureDefinition-harness-load.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "harness-load",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load",
  "version" : "0.4.2",
  "name" : "HarnessLoad",
  "title" : "Harness Load",
  "status" : "active",
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Percentage of body weight applied by harness during treadmill exercise",
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
        "short" : "Harness Load",
        "definition" : "Percentage of body weight applied by harness during treadmill exercise"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Percentage of 1-g body weight",
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
        "patternCode" : "%"
      }
    ]
  }
}

```
