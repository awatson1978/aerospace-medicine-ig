# Communication Latency - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Latency**

## Extension: Communication Latency 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/communication-latency | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:CommunicationLatency |

One-way signal latency for telemedicine encounters, complementing the Mars-specific CommunicationDelay extension with general-purpose latency tracking

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Telemedicine Consult Request](StructureDefinition-telemedicine-consult-request.md) and [Telemedicine Encounter](StructureDefinition-telemedicine-encounter.md)
* Examples for this Extension: [Encounter/Telemedicine-StoreForward-001](Encounter-Telemedicine-StoreForward-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/communication-latency)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-communication-latency.csv), [Excel](StructureDefinition-communication-latency.xlsx), [Schematron](StructureDefinition-communication-latency.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "communication-latency",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/communication-latency",
  "version" : "0.6.2",
  "name" : "CommunicationLatency",
  "title" : "Communication Latency",
  "status" : "active",
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "One-way signal latency for telemedicine encounters, complementing the Mars-specific CommunicationDelay extension with general-purpose latency tracking",
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
      "expression" : "Encounter"
    },
    {
      "type" : "element",
      "expression" : "CommunicationRequest"
    },
    {
      "type" : "element",
      "expression" : "ServiceRequest"
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
        "short" : "Communication Latency",
        "definition" : "One-way signal latency for telemedicine encounters, complementing the Mars-specific CommunicationDelay extension with general-purpose latency tracking"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/communication-latency"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "One-way communication latency in seconds",
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
        "patternCode" : "s"
      }
    ]
  }
}

```
