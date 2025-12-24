# Hyperbaric Chamber Capabilities - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Capabilities**

## CodeSystem: Hyperbaric Chamber Capabilities 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-capabilities-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:HyperbaricCapabilitiesCS |

 
Capabilities and services available in hyperbaric chambers 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HyperbaricCapabilitiesVS](ValueSet-hyperbaric-capabilities-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hyperbaric-capabilities-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-capabilities-cs",
  "version" : "0.4.2",
  "name" : "HyperbaricCapabilitiesCS",
  "title" : "Hyperbaric Chamber Capabilities",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Capabilities and services available in hyperbaric chambers",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "decompression-treatment",
      "display" : "Decompression Sickness Treatment"
    },
    {
      "code" : "wound-healing",
      "display" : "Wound Healing Therapy"
    },
    {
      "code" : "carbon-monoxide-treatment",
      "display" : "Carbon Monoxide Poisoning Treatment"
    },
    {
      "code" : "emergency-treatment",
      "display" : "Emergency Hyperbaric Treatment"
    },
    {
      "code" : "research",
      "display" : "Research and Training"
    },
    {
      "code" : "multi-patient",
      "display" : "Multi-Patient Capability"
    },
    {
      "code" : "critical-care",
      "display" : "Critical Care Monitoring"
    }
  ]
}

```
