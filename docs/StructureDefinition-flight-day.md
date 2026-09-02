# Flight Day - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Flight Day**

## Extension: Flight Day 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:FlightDay |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Actigraphy Observation](StructureDefinition-actigraphy-observation.md), [BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.md), [Circadian Rhythm Assessment](StructureDefinition-circadian-rhythm-assessment.md), [Flow Directionality Index Observation](StructureDefinition-flow-directionality-index-observation.md)...Show 13 more,[Internal Jugular Vein Area Observation](StructureDefinition-internal-jugular-vein-area-observation.md),[Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md),[Internal Jugular Vein Pressure Observation](StructureDefinition-internal-jugular-vein-pressure-observation.md),[Multi-Omics Observation](StructureDefinition-multi-omics-observation.md),[SANS Assessment](StructureDefinition-sans-assessment.md),[Space Adverse Event](StructureDefinition-space-adverse-event.md),[Space Body Temperature Observation](StructureDefinition-space-body-temperature.md),[Space CGM Observation](StructureDefinition-space-cgm-observation.md),[Space ECG Observation](StructureDefinition-space-ecg-observation.md),[Space Joint Health Assessment](StructureDefinition-space-joint-health-assessment.md),[Space Motion Sickness Condition](StructureDefinition-space-motion-sickness-condition.md),[Space Sleep Study Observation](StructureDefinition-space-sleep-study.md)and[NASA Standard Measures Observation](StructureDefinition-standard-measures-observation.md)
* Examples for this Extension: [AdverseEvent/Urinary-Retention-Post-Promethazine](AdverseEvent-Urinary-Retention-Post-Promethazine.md), [Condition/SMS-Episode-FD2](Condition-SMS-Episode-FD2.md), [Observation/BFRT-Quadriceps-CSA-001](Observation-BFRT-Quadriceps-CSA-001.md), [Observation/Body-Temp-FD30-Morning](Observation-Body-Temp-FD30-Morning.md)...Show 3 more,[Observation/CGM-Reading-FD15](Observation-CGM-Reading-FD15.md),[Observation/Metabolomics-Observation-001](Observation-Metabolomics-Observation-001.md)and[Observation/Standard-Measures-Grip-PreFlight](Observation-Standard-Measures-Grip-PreFlight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/flight-day)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-flight-day.csv), [Excel](StructureDefinition-flight-day.xlsx), [Schematron](StructureDefinition-flight-day.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "flight-day",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
  "version" : "0.7.0",
  "name" : "FlightDay",
  "title" : "Flight Day",
  "status" : "active",
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
  "description" : "Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    },
    {
      "type" : "element",
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "Condition"
    },
    {
      "type" : "element",
      "expression" : "AdverseEvent"
    },
    {
      "type" : "element",
      "expression" : "MedicationAdministration"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Flight Day",
        "definition" : "Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Flight day number (FD+N) or return day (R+N as negative)",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
