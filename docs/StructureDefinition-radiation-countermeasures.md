# Radiation Countermeasures - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Countermeasures**

## Extension: Radiation Countermeasures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/radiation-countermeasures | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:RadiationCountermeasures |

Protective measures taken during radiation exposure

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radiation-countermeasures)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radiation-countermeasures.csv), [Excel](StructureDefinition-radiation-countermeasures.xlsx), [Schematron](StructureDefinition-radiation-countermeasures.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radiation-countermeasures",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/radiation-countermeasures",
  "version" : "0.5.6",
  "name" : "RadiationCountermeasures",
  "title" : "Radiation Countermeasures",
  "status" : "draft",
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Protective measures taken during radiation exposure",
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
      "expression" : "Observation"
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
        "short" : "Radiation Countermeasures",
        "definition" : "Protective measures taken during radiation exposure"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/radiation-countermeasures"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/radiation-countermeasures-vs"
        }
      }
    ]
  }
}

```
