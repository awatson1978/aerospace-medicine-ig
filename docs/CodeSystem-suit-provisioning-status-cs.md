# Suit Provisioning Status Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Suit Provisioning Status Code System**

## CodeSystem: Suit Provisioning Status Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/suit-provisioning-status-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SuitProvisioningStatusCS |

 
Provisioning and logistics status of EVA suit assets 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SuitProvisioningStatusVS](ValueSet-suit-provisioning-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "suit-provisioning-status-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/suit-provisioning-status-cs",
  "version" : "0.6.0",
  "name" : "SuitProvisioningStatusCS",
  "title" : "Suit Provisioning Status Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Provisioning and logistics status of EVA suit assets",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "pre-positioned",
      "display" : "Pre-positioned",
      "definition" : "Suit pre-positioned at destination before crew arrival"
    },
    {
      "code" : "in-transit",
      "display" : "In Transit",
      "definition" : "Suit in transit to destination"
    },
    {
      "code" : "deployed-primary",
      "display" : "Deployed - Primary",
      "definition" : "Suit deployed as primary EVA asset"
    },
    {
      "code" : "deployed-backup",
      "display" : "Deployed - Backup",
      "definition" : "Suit deployed as backup/contingency EVA asset"
    },
    {
      "code" : "maintenance-required",
      "display" : "Maintenance Required",
      "definition" : "Suit requires maintenance before next EVA"
    },
    {
      "code" : "end-of-life",
      "display" : "End of Life",
      "definition" : "Suit has exceeded operational life limit"
    }
  ]
}

```
