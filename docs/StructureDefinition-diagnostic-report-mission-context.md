# Mission Context for Diagnostic Reports - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Context for Diagnostic Reports**

## Extension: Mission Context for Diagnostic Reports 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/diagnostic-report-mission-context | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:DiagnosticReportMissionContext |

Links diagnostic reports to specific space missions

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Metabolic Risk Summary](StructureDefinition-metabolic-risk-summary.md) and [Space Radiation Exposure Summary (Fixed)](StructureDefinition-space-radiation-summary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/diagnostic-report-mission-context)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diagnostic-report-mission-context.csv), [Excel](StructureDefinition-diagnostic-report-mission-context.xlsx), [Schematron](StructureDefinition-diagnostic-report-mission-context.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diagnostic-report-mission-context",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/diagnostic-report-mission-context",
  "version" : "0.5.5",
  "name" : "DiagnosticReportMissionContext",
  "title" : "Mission Context for Diagnostic Reports",
  "status" : "draft",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Links diagnostic reports to specific space missions",
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
      "expression" : "DiagnosticReport"
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
        "short" : "Mission Context for Diagnostic Reports",
        "definition" : "Links diagnostic reports to specific space missions"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/diagnostic-report-mission-context"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Reference to the space mission encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter"]
          }
        ]
      }
    ]
  }
}

```
