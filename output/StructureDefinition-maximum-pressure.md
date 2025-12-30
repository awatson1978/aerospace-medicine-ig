# Maximum Operating Pressure - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maximum Operating Pressure**

## Extension: Maximum Operating Pressure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:MaximumPressure |

Maximum pressure the chamber can safely operate at

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md), [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md) and [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/maximum-pressure)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-maximum-pressure.csv), [Excel](StructureDefinition-maximum-pressure.xlsx), [Schematron](StructureDefinition-maximum-pressure.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "maximum-pressure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure",
  "version" : "0.5.5",
  "name" : "MaximumPressure",
  "title" : "Maximum Operating Pressure",
  "status" : "draft",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "Maximum pressure the chamber can safely operate at",
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
        "short" : "Maximum Operating Pressure",
        "definition" : "Maximum pressure the chamber can safely operate at"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure"
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
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "atm"
      }
    ]
  }
}

```
