# Operational Status Code System - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Operational Status Code System**

## CodeSystem: Operational Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/operational-status-cs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:OperationalStatusCS |

 
Operational status codes for facilities and vehicles 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OperationalStatusVS](ValueSet-operational-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "operational-status-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/operational-status-cs",
  "version" : "0.5.8",
  "name" : "OperationalStatusCS",
  "title" : "Operational Status Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-02T11:11:20-06:00",
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
