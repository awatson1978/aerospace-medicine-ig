# Operational Status Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Operational Status Code System**

## CodeSystem: Operational Status Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/operational-status-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:OperationalStatusCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Operational status codes for facilities and vehicles 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OperationalStatusVS](ValueSet-operational-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "operational-status-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/operational-status-cs",
  "version" : "0.7.0",
  "name" : "OperationalStatusCS",
  "title" : "Operational Status Code System",
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
  "description" : "Operational status codes for facilities and vehicles",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "active",
      "display" : "Active and operational",
      "definition" : "The facility or vehicle is currently active and operational"
    },
    {
      "code" : "maintenance",
      "display" : "Under maintenance",
      "definition" : "The facility or vehicle is temporarily offline for maintenance"
    },
    {
      "code" : "standby",
      "display" : "Standby/ready state",
      "definition" : "The facility or vehicle is in standby mode, ready for activation"
    },
    {
      "code" : "inactive",
      "display" : "Inactive/offline",
      "definition" : "The facility or vehicle is inactive or offline"
    },
    {
      "code" : "decommissioned",
      "display" : "Permanently decommissioned",
      "definition" : "The facility or vehicle has been permanently decommissioned"
    },
    {
      "code" : "construction",
      "display" : "Under construction",
      "definition" : "The facility or vehicle is currently under construction"
    },
    {
      "code" : "planning",
      "display" : "In planning phase",
      "definition" : "The facility or vehicle is in the planning phase"
    }
  ]
}

```
