# Complication Monitoring - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Complication Monitoring**

## Extension: Complication Monitoring 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/complication-monitoring | *Version*:0.5.9 |
| Draft as of 2026-02-04 | *Computable Name*:ComplicationMonitoring |

Monitoring for treatment complications

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md) and [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/complication-monitoring)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-complication-monitoring.csv), [Excel](StructureDefinition-complication-monitoring.xlsx), [Schematron](StructureDefinition-complication-monitoring.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "complication-monitoring",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/complication-monitoring",
  "version" : "0.5.9",
  "name" : "ComplicationMonitoring",
  "title" : "Complication Monitoring",
  "status" : "draft",
  "date" : "2026-02-04T10:26:00-06:00",
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
  "description" : "Monitoring for treatment complications",
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
        "short" : "Complication Monitoring",
        "definition" : "Monitoring for treatment complications"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/complication-monitoring"
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
