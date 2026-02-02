# NASA Medical Hardware - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Hardware**

## CodeSystem: NASA Medical Hardware 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:NASAMedicalHardwareCS |

 
Medical equipment and hardware used in NASA medical requirements. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASACardiovascularEquipmentVS](ValueSet-nasa-cardiovascular-equipment-vs.md)
* [NASAExerciseEquipmentVS](ValueSet-nasa-exercise-equipment-vs.md)
* [NASAMedicalHardwareVS](ValueSet-nasa-medical-hardware-vs.md)
* [NASARadiationEquipmentVS](ValueSet-nasa-radiation-equipment-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-medical-hardware-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
  "version" : "0.5.8",
  "name" : "NASAMedicalHardwareCS",
  "title" : "NASA Medical Hardware",
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
  "description" : "Medical equipment and hardware used in NASA medical requirements.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 25,
  "concept" : [
    {
      "code" : "cpd",
      "display" : "Crew Passive Dosimeter",
      "definition" : "Personal radiation dosimeter worn continuously by crewmembers."
    },
    {
      "code" : "tepc",
      "display" : "Tissue Equivalent Proportional Counter",
      "definition" : "Active radiation detector measuring dose equivalent rates."
    },
    {
      "code" : "evcpds",
      "display" : "EVA Crew Personal Dosimeter System",
      "definition" : "Dosimeter system worn during extravehicular activities."
    },
    {
      "code" : "iv-tepc",
      "display" : "Intravehicular TEPC",
      "definition" : "TEPC for monitoring radiation inside the vehicle."
    },
    {
      "code" : "ram",
      "display" : "Radiation Area Monitor",
      "definition" : "Fixed location radiation monitoring device."
    },
    {
      "code" : "12-lead-ecg",
      "display" : "12-Lead ECG Machine",
      "definition" : "Electrocardiograph for recording 12-lead cardiac electrical activity."
    },
    {
      "code" : "marquette-case",
      "display" : "Marquette CASE 15",
      "definition" : "ECG system used for exercise stress testing."
    },
    {
      "code" : "blood-pressure-monitor",
      "display" : "Blood Pressure Monitor",
      "definition" : "Device for measuring systolic and diastolic blood pressure."
    },
    {
      "code" : "t2-treadmill",
      "display" : "T2 Treadmill",
      "definition" : "ISS T2 treadmill for aerobic exercise countermeasures."
    },
    {
      "code" : "ared",
      "display" : "Advanced Resistive Exercise Device",
      "definition" : "ISS resistive exercise device for strength training."
    },
    {
      "code" : "cevis",
      "display" : "Cycle Ergometer with Vibration Isolation",
      "definition" : "ISS cycle ergometer for cardiovascular exercise."
    },
    {
      "code" : "quinton-treadmill",
      "display" : "Quinton 1860 Treadmill",
      "definition" : "Treadmill used for exercise stress testing on ground."
    },
    {
      "code" : "cybex-leg-press",
      "display" : "Cybex Leg Press",
      "definition" : "Leg press machine for lower body strength assessment."
    },
    {
      "code" : "hand-grip-dynamometer",
      "display" : "Hand Grip Dynamometer",
      "definition" : "Device for measuring hand grip strength."
    },
    {
      "code" : "sit-reach-bench",
      "display" : "Sit and Reach Bench",
      "definition" : "Equipment for flexibility assessment."
    },
    {
      "code" : "smith-bench",
      "display" : "Smith Bench",
      "definition" : "Bench press with guided barbell for strength testing."
    },
    {
      "code" : "mmd",
      "display" : "Mass Measurement Device",
      "definition" : "Russian device for measuring body mass in microgravity."
    },
    {
      "code" : "dexa",
      "display" : "DEXA Scanner",
      "definition" : "Dual-energy X-ray absorptiometry for bone density measurement."
    },
    {
      "code" : "audiometer",
      "display" : "Audiometer",
      "definition" : "Device for measuring hearing thresholds."
    },
    {
      "code" : "tympanometer",
      "display" : "Tympanometer",
      "definition" : "Device for assessing middle ear function."
    },
    {
      "code" : "ooha-headset",
      "display" : "OOHA Headset",
      "definition" : "On-Orbit Hearing Assessment headset."
    },
    {
      "code" : "kuduwave",
      "display" : "KUDUwave Software",
      "definition" : "Software for on-orbit audiometric testing."
    },
    {
      "code" : "microbial-air-sampler",
      "display" : "Microbial Air Sampler III",
      "definition" : "Device for collecting airborne microbial samples."
    },
    {
      "code" : "water-sample-kit",
      "display" : "Water Sample Collection Kit",
      "definition" : "Kit for collecting potable water samples."
    },
    {
      "code" : "surface-swab-kit",
      "display" : "Surface Swab Collection Kit",
      "definition" : "Kit for collecting surface microbial samples."
    }
  ]
}

```
