# Hyperbaric Chamber Type - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Type**

## Extension: Hyperbaric Chamber Type 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/chamber-type | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:ChamberType |

Type of hyperbaric chamber (monoplace, multiplace, etc.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/chamber-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-chamber-type.csv), [Excel](StructureDefinition-chamber-type.xlsx), [Schematron](StructureDefinition-chamber-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "chamber-type",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/chamber-type",
  "version" : "0.4.2",
  "name" : "ChamberType",
  "title" : "Hyperbaric Chamber Type",
  "status" : "draft",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Type of hyperbaric chamber (monoplace, multiplace, etc.)",
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
      "expression" : "Location"
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
        "short" : "Hyperbaric Chamber Type",
        "definition" : "Type of hyperbaric chamber (monoplace, multiplace, etc.)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/chamber-type"
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
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/hyperbaric-chamber-type-vs"
        }
      }
    ]
  }
}

```
