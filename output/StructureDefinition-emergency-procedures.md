# Emergency Procedures - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Procedures**

## Extension: Emergency Procedures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/emergency-procedures | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:EmergencyProcedures |

Emergency decompression procedures if applicable

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Decompression Protocol](StructureDefinition-decompression-protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/emergency-procedures)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-emergency-procedures.csv), [Excel](StructureDefinition-emergency-procedures.xlsx), [Schematron](StructureDefinition-emergency-procedures.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "emergency-procedures",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/emergency-procedures",
  "version" : "0.4.2",
  "name" : "EmergencyProcedures",
  "title" : "Emergency Procedures",
  "status" : "draft",
  "date" : "2025-12-24T12:48:12-07:00",
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
  "description" : "Emergency decompression procedures if applicable",
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
        "short" : "Emergency Procedures",
        "definition" : "Emergency decompression procedures if applicable"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/emergency-procedures"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
          }
        ]
      }
    ]
  }
}

```
