# Telemedicine Equipment Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Equipment Code System**

## CodeSystem: Telemedicine Equipment Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/telemedicine-equipment-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:TelemedicineEquipmentCS |

 
Medical equipment used for telemedicine in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TelemedicineEquipmentVS](ValueSet-telemedicine-equipment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "telemedicine-equipment-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/telemedicine-equipment-cs",
  "version" : "0.6.0",
  "name" : "TelemedicineEquipmentCS",
  "title" : "Telemedicine Equipment Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
