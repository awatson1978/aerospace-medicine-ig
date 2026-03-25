# MRID Flight Duration Requirement - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Flight Duration Requirement**

## Extension: MRID Flight Duration Requirement 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mrid-flight-duration | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:MRIDFlightDuration |

Indicates the flight duration requirements for this medical requirement (e.g., 'All flights', '>= 30 days', '>= 180 days')

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mrid-flight-duration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mrid-flight-duration.csv), [Excel](StructureDefinition-mrid-flight-duration.xlsx), [Schematron](StructureDefinition-mrid-flight-duration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mrid-flight-duration",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-flight-duration",
  "version" : "0.5.12",
  "name" : "MRIDFlightDuration",
  "title" : "MRID Flight Duration Requirement",
  "status" : "active",
  "date" : "2026-03-25T00:24:16-05:00",
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
  "description" : "Indicates the flight duration requirements for this medical requirement (e.g., 'All flights', '>= 30 days', '>= 180 days')",
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
      "expression" : "Questionnaire"
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
        "short" : "MRID Flight Duration Requirement",
        "definition" : "Indicates the flight duration requirements for this medical requirement (e.g., 'All flights', '>= 30 days', '>= 180 days')"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-flight-duration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
