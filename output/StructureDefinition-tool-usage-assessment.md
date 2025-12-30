# Tool Usage Assessment - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tool Usage Assessment**

## Extension: Tool Usage Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/tool-usage-assessment | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:ToolUsageAssessment |

Assessment of tool manipulation and usage effectiveness

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Underwater EVA Simulation](StructureDefinition-UnderwaterEVASimulation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/tool-usage-assessment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tool-usage-assessment.csv), [Excel](StructureDefinition-tool-usage-assessment.xlsx), [Schematron](StructureDefinition-tool-usage-assessment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tool-usage-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/tool-usage-assessment",
  "version" : "0.5.5",
  "name" : "ToolUsageAssessment",
  "title" : "Tool Usage Assessment",
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
  "description" : "Assessment of tool manipulation and usage effectiveness",
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
      "expression" : "Element"
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
        "short" : "Tool Usage Assessment",
        "definition" : "Assessment of tool manipulation and usage effectiveness"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/tool-usage-assessment"
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
