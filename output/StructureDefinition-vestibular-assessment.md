# Vestibular Function Assessment - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vestibular Function Assessment**

## Extension: Vestibular Function Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/vestibular-assessment | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:VestibularAssessment |

Assessment of inner ear and balance function

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/vestibular-assessment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-vestibular-assessment.csv), [Excel](StructureDefinition-vestibular-assessment.xlsx), [Schematron](StructureDefinition-vestibular-assessment.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "vestibular-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/vestibular-assessment",
  "version" : "0.4.2",
  "name" : "VestibularAssessment",
  "title" : "Vestibular Function Assessment",
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
  "description" : "Assessment of inner ear and balance function",
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
        "short" : "Vestibular Function Assessment",
        "definition" : "Assessment of inner ear and balance function"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/vestibular-assessment"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      }
    ]
  }
}

```
