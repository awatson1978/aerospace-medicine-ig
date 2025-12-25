# Environmental Monitoring - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Environmental Monitoring**

## Resource Profile: Environmental Monitoring 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoring | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:EnvironmentalMonitoring |

 
Profile for environmental monitoring. 

**Usages:**

* Examples for this Profile: [Observation/Observation.Environmental-1](Observation-Observation.Environmental-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/EnvironmentalMonitoring)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EnvironmentalMonitoring.csv), [Excel](StructureDefinition-EnvironmentalMonitoring.xlsx), [Schematron](StructureDefinition-EnvironmentalMonitoring.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EnvironmentalMonitoring",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoring",
  "version" : "0.4.2",
  "name" : "EnvironmentalMonitoring",
  "title" : "Environmental Monitoring",
  "status" : "draft",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Profile for environmental monitoring.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      }
    ]
  }
}

```
