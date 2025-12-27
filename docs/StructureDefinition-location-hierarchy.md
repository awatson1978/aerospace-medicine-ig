# Location Hierarchy - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location Hierarchy**

## Extension: Location Hierarchy 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/location-hierarchy | *Version*:0.5.0 |
| Draft as of 2025-12-25 | *Computable Name*:LocationHierarchy |

Hierarchical relationship between locations (parent/child)

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/location-hierarchy)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-location-hierarchy.csv), [Excel](StructureDefinition-location-hierarchy.xlsx), [Schematron](StructureDefinition-location-hierarchy.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "location-hierarchy",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/location-hierarchy",
  "version" : "0.5.0",
  "name" : "LocationHierarchy",
  "title" : "Location Hierarchy",
  "status" : "draft",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Hierarchical relationship between locations (parent/child)",
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
        "short" : "Location Hierarchy",
        "definition" : "Hierarchical relationship between locations (parent/child)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/location-hierarchy"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
          }
        ]
      }
    ]
  }
}

```
