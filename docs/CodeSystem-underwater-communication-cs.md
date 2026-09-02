# Underwater Communication Systems - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater Communication Systems**

## CodeSystem: Underwater Communication Systems (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:UnderwaterCommunicationCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Communication systems and protocols for underwater training operations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [UnderwaterCommunicationSystems](ValueSet-underwater-communication-systems-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "underwater-communication-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
  "version" : "0.7.0",
  "name" : "UnderwaterCommunicationCS",
  "title" : "Underwater Communication Systems",
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
  "description" : "Communication systems and protocols for underwater training operations",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 31,
  "concept" : [
    {
      "code" : "hardwire-comm",
      "display" : "Hardwired Communication",
      "definition" : "Physical cable-based communication system"
    },
    {
      "code" : "through-water-comm",
      "display" : "Through-Water Communication",
      "definition" : "Wireless underwater communication system"
    },
    {
      "code" : "surface-comm",
      "display" : "Surface Communication",
      "definition" : "Communication with surface support team"
    },
    {
      "code" : "inter-diver-comm",
      "display" : "Inter-Diver Communication",
      "definition" : "Communication between divers underwater"
    },
    {
      "code" : "full-face-mask",
      "display" : "Full Face Mask Communication",
      "definition" : "Communication through full face diving mask"
    },
    {
      "code" : "bone-conduction",
      "display" : "Bone Conduction Communication",
      "definition" : "Bone conduction underwater communication"
    },
    {
      "code" : "pneumatic-comm",
      "display" : "Pneumatic Communication",
      "definition" : "Air-powered communication system"
    },
    {
      "code" : "standard-signals",
      "display" : "Standard Hand Signals",
      "definition" : "Standardized underwater hand signal protocol"
    },
    {
      "code" : "emergency-signals",
      "display" : "Emergency Communication",
      "definition" : "Emergency communication procedures"
    },
    {
      "code" : "abort-signal",
      "display" : "Abort Signal",
      "definition" : "Signal to immediately terminate dive operation"
    },
    {
      "code" : "assistance-request",
      "display" : "Assistance Request",
      "definition" : "Signal requesting help from dive partner"
    },
    {
      "code" : "surface-immediately",
      "display" : "Surface Immediately",
      "definition" : "Signal to ascend to surface without delay"
    },
    {
      "code" : "problem-signal",
      "display" : "Problem Signal",
      "definition" : "General problem indication signal"
    },
    {
      "code" : "ok-signal",
      "display" : "OK Signal",
      "definition" : "All clear/everything normal signal"
    },
    {
      "code" : "comm-check",
      "display" : "Communication Check",
      "definition" : "System communication verification"
    },
    {
      "code" : "signal-quality",
      "display" : "Signal Quality Assessment",
      "definition" : "Quality of communication signal"
    },
    {
      "code" : "backup-comm",
      "display" : "Backup Communication",
      "definition" : "Secondary communication system"
    },
    {
      "code" : "comm-failure",
      "display" : "Communication Failure",
      "definition" : "Loss of communication capability"
    },
    {
      "code" : "range-test",
      "display" : "Communication Range Test",
      "definition" : "Testing effective communication range"
    },
    {
      "code" : "comm-range",
      "display" : "Communication Range",
      "definition" : "Device property type: maximum effective communication range of the system"
    },
    {
      "code" : "encryption",
      "display" : "Encryption Capability",
      "definition" : "Device property type: whether the system supports encrypted communication"
    },
    {
      "code" : "battery-life",
      "display" : "Battery Life",
      "definition" : "Device property type: rated operating time on a full battery charge"
    },
    {
      "code" : "waterproof-rating",
      "display" : "Waterproof Rating",
      "definition" : "Device property type: ingress protection or depth rating of the housing"
    },
    {
      "code" : "operating-depth",
      "display" : "Operating Depth",
      "definition" : "Device property type: maximum rated operating depth of the system"
    },
    {
      "code" : "comm-assessment",
      "display" : "Communication Assessment",
      "definition" : "Assessment of communication system performance during a training session"
    },
    {
      "code" : "signal-strength",
      "display" : "Signal Strength",
      "definition" : "Measured signal strength of the communication link"
    },
    {
      "code" : "audio-clarity",
      "display" : "Audio Clarity",
      "definition" : "Assessed clarity and intelligibility of voice communication"
    },
    {
      "code" : "comm-reliability",
      "display" : "Communication Reliability",
      "definition" : "Percentage of the session during which communication was maintained"
    },
    {
      "code" : "emergency-response-time",
      "display" : "Emergency Communication Response Time",
      "definition" : "Time from emergency signal to acknowledged response"
    },
    {
      "code" : "security-assessment",
      "display" : "Security Assessment",
      "definition" : "Assessment of the security and integrity of the communication link"
    },
    {
      "code" : "communication-log",
      "display" : "Communication Log",
      "definition" : "Narrative log of communications during the dive"
    }
  ]
}

```
