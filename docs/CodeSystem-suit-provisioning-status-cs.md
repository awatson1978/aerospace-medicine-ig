# Suit Provisioning Status Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Suit Provisioning Status Code System**

## CodeSystem: Suit Provisioning Status Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/suit-provisioning-status-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SuitProvisioningStatusCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Provisioning and logistics status of EVA suit assets 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SuitProvisioningStatusVS](ValueSet-suit-provisioning-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "suit-provisioning-status-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/suit-provisioning-status-cs",
  "version" : "0.7.0",
  "name" : "SuitProvisioningStatusCS",
  "title" : "Suit Provisioning Status Code System",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
