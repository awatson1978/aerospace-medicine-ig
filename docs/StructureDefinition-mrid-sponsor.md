# MRID Sponsor - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Sponsor**

## Extension: MRID Sponsor 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mrid-sponsor | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:MRIDSponsor |

The NASA organizational sponsor responsible for the medical requirement

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MRID Questionnaire Profile](StructureDefinition-mrid-questionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mrid-sponsor)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mrid-sponsor.csv), [Excel](StructureDefinition-mrid-sponsor.xlsx), [Schematron](StructureDefinition-mrid-sponsor.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mrid-sponsor",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-sponsor",
  "version" : "0.5.12",
  "name" : "MRIDSponsor",
  "title" : "MRID Sponsor",
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
  "description" : "The NASA organizational sponsor responsible for the medical requirement",
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
        "short" : "MRID Sponsor",
        "definition" : "The NASA organizational sponsor responsible for the medical requirement"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-sponsor"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/nasa-mrid-sponsor-vs"
        }
      }
    ]
  }
}

```
