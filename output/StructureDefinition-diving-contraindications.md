# Diving Medical Contraindications - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Medical Contraindications**

## Extension: Diving Medical Contraindications 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/diving-contraindications | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DivingContraindications |

Medical conditions that contraindicate diving

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/diving-contraindications)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diving-contraindications.csv), [Excel](StructureDefinition-diving-contraindications.xlsx), [Schematron](StructureDefinition-diving-contraindications.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diving-contraindications",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/diving-contraindications",
  "version" : "0.4.2",
  "name" : "DivingContraindications",
  "title" : "Diving Medical Contraindications",
  "status" : "draft",
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Medical conditions that contraindicate diving",
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
        "short" : "Diving Medical Contraindications",
        "definition" : "Medical conditions that contraindicate diving"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/diving-contraindications"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
          }
        ]
      }
    ]
  }
}

```
