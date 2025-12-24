# Derived From Activity Group - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Derived From Activity Group**

## Extension: Derived From Activity Group 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/derived-from-group | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:DerivedFromGroup |

Links aggregated metrics to source activity group observations

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md)
* Examples for this Extension: [Observation/ISS-EVS-MinPerWeek-2025W23](Observation-ISS-EVS-MinPerWeek-2025W23.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/derived-from-group)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-derived-from-group.csv), [Excel](StructureDefinition-derived-from-group.xlsx), [Schematron](StructureDefinition-derived-from-group.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "derived-from-group",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/derived-from-group",
  "version" : "0.4.2",
  "name" : "DerivedFromGroup",
  "title" : "Derived From Activity Group",
  "status" : "active",
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Links aggregated metrics to source activity group observations",
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
        "short" : "Derived From Activity Group",
        "definition" : "Links aggregated metrics to source activity group observations"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/derived-from-group"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Source activity group observation",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      }
    ]
  }
}

```
