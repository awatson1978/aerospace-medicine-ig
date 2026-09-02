# Hyperbaric Chamber Capabilities - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Capabilities**

## CodeSystem: Hyperbaric Chamber Capabilities (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hyperbaric-capabilities-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:HyperbaricCapabilitiesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Capabilities and services available in hyperbaric chambers 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HyperbaricCapabilitiesVS](ValueSet-hyperbaric-capabilities-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hyperbaric-capabilities-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hyperbaric-capabilities-cs",
  "version" : "0.7.0",
  "name" : "HyperbaricCapabilitiesCS",
  "title" : "Hyperbaric Chamber Capabilities",
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
  "description" : "Capabilities and services available in hyperbaric chambers",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
