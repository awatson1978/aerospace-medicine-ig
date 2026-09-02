# Mission Context for Diagnostic Reports - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Context for Diagnostic Reports**

## Extension: Mission Context for Diagnostic Reports 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diagnostic-report-mission-context | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:DiagnosticReportMissionContext |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Links diagnostic reports to specific space missions

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Metabolic Risk Summary](StructureDefinition-metabolic-risk-summary.md), [Space CGM Summary Report](StructureDefinition-space-cgm-summary.md), [Space Point-of-Care Ultrasound (POCUS)](StructureDefinition-space-pocus.md) and [Space Radiation Exposure Summary](StructureDefinition-space-radiation-summary.md)
* Examples for this Extension: [DiagnosticReport/CGM-Summary-14Day](DiagnosticReport-CGM-Summary-14Day.md) and [DiagnosticReport/space-radiation-summary-example](DiagnosticReport-space-radiation-summary-example.md)

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
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diagnostic-report-mission-context",
  "version" : "0.7.0",
  "name" : "DiagnosticReportMissionContext",
  "title" : "Mission Context for Diagnostic Reports",
  "status" : "draft",
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diagnostic-report-mission-context"
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
