# Hyperbaric Chamber Capabilities - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Capabilities**

## Extension: Hyperbaric Chamber Capabilities 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-capabilities | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:HyperbaricCapabilities |

Specific capabilities of the hyperbaric chamber

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/hyperbaric-capabilities)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hyperbaric-capabilities.csv), [Excel](StructureDefinition-hyperbaric-capabilities.xlsx), [Schematron](StructureDefinition-hyperbaric-capabilities.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hyperbaric-capabilities",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-capabilities",
  "version" : "0.5.1",
  "name" : "HyperbaricCapabilities",
  "title" : "Hyperbaric Chamber Capabilities",
  "status" : "draft",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Specific capabilities of the hyperbaric chamber",
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
        "short" : "Hyperbaric Chamber Capabilities",
        "definition" : "Specific capabilities of the hyperbaric chamber"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-capabilities"
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
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/hyperbaric-capabilities-vs"
        }
      }
    ]
  }
}

```
