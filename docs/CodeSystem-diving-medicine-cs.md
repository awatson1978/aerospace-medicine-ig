# Diving Medicine Code System - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Medicine Code System**

## CodeSystem: Diving Medicine Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:DivingMedicineCS |

 
Medical codes specific to diving medicine and hyperbaric treatments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DivingMedicalExaminations](ValueSet-diving-medical-examinations.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "diving-medicine-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
  "version" : "0.5.5",
  "name" : "DivingMedicineCS",
  "title" : "Diving Medicine Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Medical codes specific to diving medicine and hyperbaric treatments",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 31,
  "concept" : [
    {
      "code" : "dive-medical-exam",
      "display" : "Diving Medical Examination",
      "definition" : "Comprehensive medical examination for diving fitness"
    },
    {
      "code" : "hyperbaric-clearance",
      "display" : "Hyperbaric Medical Clearance",
      "definition" : "Medical clearance for hyperbaric exposures"
    },
    {
      "code" : "fitness-assessment",
      "display" : "Diving Fitness Assessment",
      "definition" : "Assessment of physical fitness for diving operations"
    },
    {
      "code" : "post-incident-eval",
      "display" : "Post-Incident Medical Evaluation",
      "definition" : "Medical evaluation following diving incident"
    },
    {
      "code" : "annual-recert",
      "display" : "Annual Diving Recertification",
      "definition" : "Annual medical recertification for diving"
    },
    {
      "code" : "dive-profile",
      "display" : "Dive Profile",
      "definition" : "Complete diving profile including depth and time data"
    },
    {
      "code" : "maximum-depth",
      "display" : "Maximum Depth",
      "definition" : "Deepest point reached during dive"
    },
    {
      "code" : "bottom-time",
      "display" : "Bottom Time",
      "definition" : "Time spent at maximum depth"
    },
    {
      "code" : "ascent-rate",
      "display" : "Ascent Rate",
      "definition" : "Rate of ascent from depth"
    },
    {
      "code" : "surface-interval",
      "display" : "Surface Interval",
      "definition" : "Time spent at surface between dives"
    },
    {
      "code" : "decompression-time",
      "display" : "Decompression Time",
      "definition" : "Time required for decompression stops"
    },
    {
      "code" : "breathing-gas",
      "display" : "Breathing Gas Mixture",
      "definition" : "Composition of breathing gas used"
    },
    {
      "code" : "water-temperature",
      "display" : "Water Temperature",
      "definition" : "Temperature of water during dive"
    },
    {
      "code" : "visibility",
      "display" : "Underwater Visibility",
      "definition" : "Visual range underwater"
    },
    {
      "code" : "current-conditions",
      "display" : "Current Conditions",
      "definition" : "Water current strength and direction"
    },
    {
      "code" : "nitrogen-loading",
      "display" : "Nitrogen Tissue Loading",
      "definition" : "Calculated nitrogen saturation in tissues"
    },
    {
      "code" : "decompression-obligation",
      "display" : "Decompression Obligation",
      "definition" : "Required decompression stops"
    },
    {
      "code" : "no-deco-limit",
      "display" : "No-Decompression Limit",
      "definition" : "Maximum time at depth without required stops"
    },
    {
      "code" : "repetitive-dive",
      "display" : "Repetitive Dive",
      "definition" : "Dive with residual nitrogen from previous dive"
    },
    {
      "code" : "surface-pressure",
      "display" : "Surface Equivalent Pressure",
      "definition" : "Pressure equivalent at sea level"
    },
    {
      "code" : "usn-table-5",
      "display" : "USN Treatment Table 5",
      "definition" : "US Navy Treatment Table 5 for mild DCS"
    },
    {
      "code" : "usn-table-6",
      "display" : "USN Treatment Table 6",
      "definition" : "US Navy Treatment Table 6 for serious DCS"
    },
    {
      "code" : "usn-table-6a",
      "display" : "USN Treatment Table 6A",
      "definition" : "US Navy Treatment Table 6A with extensions"
    },
    {
      "code" : "usn-table-4",
      "display" : "USN Treatment Table 4",
      "definition" : "US Navy Treatment Table 4 for arterial gas embolism"
    },
    {
      "code" : "hbo-wound",
      "display" : "HBO Wound Treatment",
      "definition" : "Hyperbaric oxygen for wound healing"
    },
    {
      "code" : "hbo-carbon-monoxide",
      "display" : "HBO Carbon Monoxide",
      "definition" : "Hyperbaric oxygen for CO poisoning"
    },
    {
      "code" : "buddy-system",
      "display" : "Buddy System Protocol",
      "definition" : "Two-diver safety protocol"
    },
    {
      "code" : "surface-supplied",
      "display" : "Surface Supplied Diving",
      "definition" : "Diving with surface-supplied breathing gas"
    },
    {
      "code" : "emergency-ascent",
      "display" : "Emergency Ascent Protocol",
      "definition" : "Procedures for emergency surface ascent"
    },
    {
      "code" : "lost-diver",
      "display" : "Lost Diver Protocol",
      "definition" : "Search and rescue procedures for missing diver"
    },
    {
      "code" : "equipment-failure",
      "display" : "Equipment Failure Protocol",
      "definition" : "Response to life support equipment failure"
    }
  ]
}

```
