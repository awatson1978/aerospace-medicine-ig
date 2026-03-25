# MRID Frequency - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Frequency**

## Extension: MRID Frequency 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mrid-frequency | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:MRIDFrequency |

How often this medical requirement applies (e.g., 'Every ISS Increment', 'Annual', 'Per mission')

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mrid-frequency)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mrid-frequency.csv), [Excel](StructureDefinition-mrid-frequency.xlsx), [Schematron](StructureDefinition-mrid-frequency.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mrid-frequency",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-frequency",
  "version" : "0.5.12",
  "name" : "MRIDFrequency",
  "title" : "MRID Frequency",
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
  "description" : "How often this medical requirement applies (e.g., 'Every ISS Increment', 'Annual', 'Per mission')",
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
        "short" : "MRID Frequency",
        "definition" : "How often this medical requirement applies (e.g., 'Every ISS Increment', 'Annual', 'Per mission')"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-frequency"
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
