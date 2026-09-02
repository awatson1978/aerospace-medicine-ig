# Telemedicine Equipment Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Equipment Code System**

## CodeSystem: Telemedicine Equipment Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-equipment-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:TelemedicineEquipmentCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Medical equipment used for telemedicine in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TelemedicineEquipmentVS](ValueSet-telemedicine-equipment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "telemedicine-equipment-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-equipment-cs",
  "version" : "0.7.0",
  "name" : "TelemedicineEquipmentCS",
  "title" : "Telemedicine Equipment Code System",
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
  "description" : "Medical equipment used for telemedicine in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "video-conferencing",
      "display" : "Video Conferencing System",
      "definition" : "Audio-video communication system for medical consultations"
    },
    {
      "code" : "remote-ultrasound",
      "display" : "Remote Ultrasound",
      "definition" : "Ultrasound device with remote guidance capability"
    },
    {
      "code" : "digital-stethoscope",
      "display" : "Digital Stethoscope",
      "definition" : "Electronic stethoscope with signal transmission capability"
    },
    {
      "code" : "dermatoscope",
      "display" : "Dermatoscope",
      "definition" : "Digital dermatoscope for skin lesion assessment"
    },
    {
      "code" : "portable-xray",
      "display" : "Portable X-ray",
      "definition" : "Portable radiography device for remote imaging"
    },
    {
      "code" : "ecg-transmitter",
      "display" : "ECG Transmitter",
      "definition" : "Electrocardiogram device with data transmission capability"
    }
  ]
}

```
