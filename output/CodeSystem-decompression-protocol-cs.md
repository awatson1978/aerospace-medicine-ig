# Decompression Protocols and Procedures - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Protocols and Procedures**

## CodeSystem: Decompression Protocols and Procedures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/decompression-protocol-cs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:DecompressionProtocolCS |

 
Standardized decompression protocols and safety procedures 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DecompressionProcedures](ValueSet-decompression-procedures.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "decompression-protocol-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/decompression-protocol-cs",
  "version" : "0.5.6",
  "name" : "DecompressionProtocolCS",
  "title" : "Decompression Protocols and Procedures",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Standardized decompression protocols and safety procedures",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 24,
  "concept" : [
    {
      "code" : "buhlmann-zh-l16c",
      "display" : "Bühlmann ZH-L16C",
      "definition" : "Bühlmann decompression algorithm"
    },
    {
      "code" : "rgbm",
      "display" : "Reduced Gradient Bubble Model",
      "definition" : "RGBM decompression algorithm"
    },
    {
      "code" : "vpm",
      "display" : "Varying Permeability Model",
      "definition" : "VPM decompression algorithm"
    },
    {
      "code" : "usn-tables",
      "display" : "US Navy Tables",
      "definition" : "US Navy decompression tables"
    },
    {
      "code" : "noaa-tables",
      "display" : "NOAA Tables",
      "definition" : "NOAA decompression tables"
    },
    {
      "code" : "padi-tables",
      "display" : "PADI Tables",
      "definition" : "PADI recreational decompression tables"
    },
    {
      "code" : "safety-stop-3min",
      "display" : "3-Minute Safety Stop",
      "definition" : "Standard 3-minute safety stop at 15 feet"
    },
    {
      "code" : "safety-stop-5min",
      "display" : "5-Minute Safety Stop",
      "definition" : "Extended 5-minute safety stop"
    },
    {
      "code" : "deep-stop",
      "display" : "Deep Stop",
      "definition" : "Deep safety stop at half maximum depth"
    },
    {
      "code" : "mandatory-deco",
      "display" : "Mandatory Decompression",
      "definition" : "Required decompression stop"
    },
    {
      "code" : "emergency-deco",
      "display" : "Emergency Decompression",
      "definition" : "Emergency decompression procedure"
    },
    {
      "code" : "normal-ascent",
      "display" : "Normal Ascent",
      "definition" : "Standard controlled ascent procedure"
    },
    {
      "code" : "emergency-ascent",
      "display" : "Emergency Ascent",
      "definition" : "Rapid emergency ascent procedure"
    },
    {
      "code" : "assisted-ascent",
      "display" : "Assisted Ascent",
      "definition" : "Ascent with assistance from dive partner"
    },
    {
      "code" : "controlled-emergency-ascent",
      "display" : "Controlled Emergency Ascent",
      "definition" : "Controlled emergency swimming ascent"
    },
    {
      "code" : "buoyant-ascent",
      "display" : "Buoyant Emergency Ascent",
      "definition" : "Emergency ascent using buoyancy control"
    },
    {
      "code" : "nitrox-switch",
      "display" : "Nitrox Gas Switch",
      "definition" : "Switching to nitrox decompression gas"
    },
    {
      "code" : "oxygen-switch",
      "display" : "Oxygen Switch",
      "definition" : "Switching to pure oxygen for decompression"
    },
    {
      "code" : "trimix-switch",
      "display" : "Trimix Switch",
      "definition" : "Switching between trimix breathing gases"
    },
    {
      "code" : "air-break",
      "display" : "Air Break",
      "definition" : "Air break during oxygen decompression"
    },
    {
      "code" : "altitude-diving",
      "display" : "Altitude Diving",
      "definition" : "Decompression procedures for altitude diving"
    },
    {
      "code" : "cold-water",
      "display" : "Cold Water Diving",
      "definition" : "Cold water decompression considerations"
    },
    {
      "code" : "overhead-environment",
      "display" : "Overhead Environment",
      "definition" : "Decompression in overhead environments"
    },
    {
      "code" : "repetitive-diving",
      "display" : "Repetitive Diving",
      "definition" : "Multiple dive decompression planning"
    }
  ]
}

```
