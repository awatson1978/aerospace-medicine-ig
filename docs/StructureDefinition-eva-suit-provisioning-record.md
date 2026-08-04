# EVA Suit Provisioning Record - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Suit Provisioning Record**

## Resource Profile: EVA Suit Provisioning Record 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/eva-suit-provisioning-record | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:EVASuitProvisioningRecord |

 
Logistics record for EVA suit provisioning, delivery, and positioning 

**Usages:**

* Examples for this Profile: [SupplyDelivery/ArtemisIII-SuitProvisioning-001](SupplyDelivery-ArtemisIII-SuitProvisioning-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/eva-suit-provisioning-record)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eva-suit-provisioning-record.csv), [Excel](StructureDefinition-eva-suit-provisioning-record.xlsx), [Schematron](StructureDefinition-eva-suit-provisioning-record.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eva-suit-provisioning-record",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/eva-suit-provisioning-record",
  "version" : "0.6.2",
  "name" : "EVASuitProvisioningRecord",
  "title" : "EVA Suit Provisioning Record",
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
  "description" : "Logistics record for EVA suit provisioning, delivery, and positioning",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "SupplyDelivery",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SupplyDelivery",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "SupplyDelivery",
        "path" : "SupplyDelivery"
      },
      {
        "id" : "SupplyDelivery.extension",
        "path" : "SupplyDelivery.extension",
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
        "id" : "SupplyDelivery.extension:missionContext",
        "path" : "SupplyDelivery.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.status",
        "path" : "SupplyDelivery.status",
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.type",
        "path" : "SupplyDelivery.type",
        "short" : "Supply delivery type",
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.suppliedItem",
        "path" : "SupplyDelivery.suppliedItem",
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.suppliedItem.quantity",
        "path" : "SupplyDelivery.suppliedItem.quantity",
        "short" : "Number of suits provisioned",
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.suppliedItem.item[x]",
        "path" : "SupplyDelivery.suppliedItem.item[x]",
        "short" : "Reference to xEVAS suit definition",
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.occurrence[x]",
        "path" : "SupplyDelivery.occurrence[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "SupplyDelivery.occurrence[x]:occurrenceDateTime",
        "path" : "SupplyDelivery.occurrence[x]",
        "sliceName" : "occurrenceDateTime",
        "short" : "Date of provisioning action",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "SupplyDelivery.destination",
        "path" : "SupplyDelivery.destination",
        "short" : "Destination (ISS, Gateway, lunar surface)",
        "mustSupport" : true
      }
    ]
  }
}

```
