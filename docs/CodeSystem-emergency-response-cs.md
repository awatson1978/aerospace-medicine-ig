# Emergency Response Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Response Code System**

## CodeSystem: Emergency Response Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:EmergencyResponseCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Emergency response and evacuation options for spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EmergencyResponseVS](ValueSet-emergency-response-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "emergency-response-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs",
  "version" : "0.7.0",
  "name" : "EmergencyResponseCS",
  "title" : "Emergency Response Code System",
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
  "description" : "Emergency response and evacuation options for spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "crew-dragon-return",
      "display" : "Crew Dragon Return",
      "definition" : "Emergency return using SpaceX Crew Dragon vehicle"
    },
    {
      "code" : "soyuz-return",
      "display" : "Soyuz Return",
      "definition" : "Emergency return using Soyuz spacecraft"
    },
    {
      "code" : "orion-abort",
      "display" : "Orion Abort",
      "definition" : "Abort using Orion spacecraft launch abort system"
    },
    {
      "code" : "safe-haven",
      "display" : "Safe Haven",
      "definition" : "Shelter in designated safe haven module"
    },
    {
      "code" : "emergency-eva",
      "display" : "Emergency EVA",
      "definition" : "Emergency extravehicular activity for repair or transfer"
    },
    {
      "code" : "emergency-undock",
      "display" : "Emergency Undock",
      "definition" : "Emergency undocking from station or habitat"
    },
    {
      "code" : "crew-rescue-vehicle",
      "display" : "Crew Rescue Vehicle",
      "definition" : "Dedicated crew rescue vehicle deployment"
    }
  ]
}

```
