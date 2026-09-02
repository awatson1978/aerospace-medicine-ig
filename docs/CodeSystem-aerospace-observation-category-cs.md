# Aerospace Observation Category - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aerospace Observation Category**

## CodeSystem: Aerospace Observation Category (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-observation-category-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AerospaceObservationCategoryCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Observation categories for spacecraft and habitat telemetry that are not covered by the HL7 observation-category code system (operational, environmental, life-support) 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "aerospace-observation-category-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-observation-category-cs",
  "version" : "0.7.0",
  "name" : "AerospaceObservationCategoryCS",
  "title" : "Aerospace Observation Category",
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
  "description" : "Observation categories for spacecraft and habitat telemetry that are not covered by the HL7 observation-category code system (operational, environmental, life-support)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "operational",
      "display" : "Operational",
      "definition" : "Observations about the operational state or output of mission systems (ISRU plants, power units, vehicles)"
    },
    {
      "code" : "environmental",
      "display" : "Environmental",
      "definition" : "Observations of the physical environment inside a habitat, vehicle, or suit (pressure, gas composition, temperature, humidity, dust)"
    },
    {
      "code" : "life-support",
      "display" : "Life Support",
      "definition" : "Observations about environmental control and life support system (ECLSS) performance and consumables"
    }
  ]
}

```
