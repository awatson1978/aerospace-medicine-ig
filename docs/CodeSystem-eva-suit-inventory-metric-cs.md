# EVA Suit Inventory Metric Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Suit Inventory Metric Code System**

## CodeSystem: EVA Suit Inventory Metric Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:EVASuitInventoryMetricCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Component codes for EVA suit inventory and readiness observations 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eva-suit-inventory-metric-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/eva-suit-inventory-metric-cs",
  "version" : "0.7.0",
  "name" : "EVASuitInventoryMetricCS",
  "title" : "EVA Suit Inventory Metric Code System",
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
  "description" : "Component codes for EVA suit inventory and readiness observations",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "primary-suit-status",
      "display" : "Primary Suit Status"
    },
    {
      "code" : "backup-suit-status",
      "display" : "Backup Suit Status"
    },
    {
      "code" : "consumables-remaining",
      "display" : "Consumables Remaining",
      "definition" : "Remaining EVA consumables expressed as hours of EVA time"
    },
    {
      "code" : "next-maintenance-due",
      "display" : "Next Maintenance Due"
    }
  ]
}

```
