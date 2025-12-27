# Hyperbaric Chamber - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber**

## Resource Profile: Hyperbaric Chamber 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:HyperbaricChamber |

 
A medical facility equipped with a hyperbaric chamber for pressurized treatment 

**Usages:**

* Refer to this Profile: [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md), [Decompression Protocol](StructureDefinition-decompression-protocol.md) and [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)
* Examples for this Profile: [Hyperbaric Medicine Center - Chamber 1](Location-ExampleHyperbaricChamber.md) and [NASA Hyperbaric Treatment Facility](Location-NASAHyperbaricFacility.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/hyperbaric-chamber)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hyperbaric-chamber.csv), [Excel](StructureDefinition-hyperbaric-chamber.xlsx), [Schematron](StructureDefinition-hyperbaric-chamber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hyperbaric-chamber",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber",
  "version" : "0.5.0",
  "name" : "HyperbaricChamber",
  "title" : "Hyperbaric Chamber",
  "status" : "active",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "A medical facility equipped with a hyperbaric chamber for pressurized treatment",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      },
      {
        "id" : "Location.extension",
        "path" : "Location.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Location.extension:capabilities",
        "path" : "Location.extension",
        "sliceName" : "capabilities",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-capabilities"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:maxPressure",
        "path" : "Location.extension",
        "sliceName" : "maxPressure",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:chamberType",
        "path" : "Location.extension",
        "sliceName" : "chamberType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/chamber-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:oxygenCapability",
        "path" : "Location.extension",
        "sliceName" : "oxygenCapability",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-capability"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.status",
        "path" : "Location.status",
        "mustSupport" : true
      },
      {
        "id" : "Location.operationalStatus",
        "path" : "Location.operationalStatus",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/operational-status-vs"
        }
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Location.description",
        "path" : "Location.description",
        "mustSupport" : true
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Location.type.coding.system",
        "path" : "Location.type.coding.system",
        "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
      },
      {
        "id" : "Location.type.coding.code",
        "path" : "Location.type.coding.code",
        "patternCode" : "HUSCS"
      },
      {
        "id" : "Location.physicalType",
        "path" : "Location.physicalType",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Location.physicalType.coding.system",
        "path" : "Location.physicalType.coding.system",
        "patternUri" : "http://terminology.hl7.org/CodeSystem/location-physical-type"
      },
      {
        "id" : "Location.physicalType.coding.code",
        "path" : "Location.physicalType.coding.code",
        "patternCode" : "ro"
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
        "mustSupport" : true
      },
      {
        "id" : "Location.partOf",
        "path" : "Location.partOf",
        "mustSupport" : true
      }
    ]
  }
}

```
