# Oxygen Delivery Capability - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oxygen Delivery Capability**

## Extension: Oxygen Delivery Capability 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/oxygen-capability | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:OxygenCapability |

Oxygen delivery capabilities of the chamber

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/oxygen-capability)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oxygen-capability.csv), [Excel](StructureDefinition-oxygen-capability.xlsx), [Schematron](StructureDefinition-oxygen-capability.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oxygen-capability",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-capability",
  "version" : "0.5.6",
  "name" : "OxygenCapability",
  "title" : "Oxygen Delivery Capability",
  "status" : "draft",
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Oxygen delivery capabilities of the chamber",
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
        "short" : "Oxygen Delivery Capability",
        "definition" : "Oxygen delivery capabilities of the chamber"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-capability"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
