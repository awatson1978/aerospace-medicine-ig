# Communication Delay - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Delay**

## Extension: Communication Delay 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:CommunicationDelay |

Earth-Mars light-time delay for data transmission context

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Autonomous Medical Encounter](StructureDefinition-autonomous-medical-encounter.md) and [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md)
* Examples for this Extension: [Encounter/Emergency-Appendicitis-Sol189](Encounter-Emergency-Appendicitis-Sol189.md) and [Procedure/MarsEVA-Sol147](Procedure-MarsEVA-Sol147.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/communication-delay)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-communication-delay.csv), [Excel](StructureDefinition-communication-delay.xlsx), [Schematron](StructureDefinition-communication-delay.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "communication-delay",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay",
  "version" : "0.5.5",
  "name" : "CommunicationDelay",
  "title" : "Communication Delay",
  "status" : "active",
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
  "description" : "Earth-Mars light-time delay for data transmission context",
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
    },
    {
      "type" : "element",
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "Encounter"
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
        "short" : "Communication Delay",
        "definition" : "Earth-Mars light-time delay for data transmission context"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "min"
      }
    ]
  }
}

```
