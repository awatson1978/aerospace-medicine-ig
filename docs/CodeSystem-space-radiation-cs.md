# Space Radiation Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Code System**

## CodeSystem: Space Radiation Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceRadiationCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Measurement, dose-accumulation, organ-dose, detector-property and reporting concepts used by the space radiation profiles. Radiation types are in SpaceRadiationTypeCS; detector hardware types are in RadiationDetectorTypeCS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrganDoseCodesVS](ValueSet-organ-dose-codes-vs.md)
* [SpaceRadiationDoseCodesVS](ValueSet-space-radiation-dose-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-radiation-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
  "version" : "0.7.0",
  "name" : "SpaceRadiationCS",
  "title" : "Space Radiation Code System",
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
  "description" : "Measurement, dose-accumulation, organ-dose, detector-property and reporting concepts used by the space radiation profiles. Radiation types are in SpaceRadiationTypeCS; detector hardware types are in RadiationDetectorTypeCS.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 36,
  "concept" : [
    {
      "code" : "let",
      "display" : "Linear Energy Transfer",
      "definition" : "Average linear energy transfer of the radiation field (keV/um)"
    },
    {
      "code" : "quality-factor",
      "display" : "Radiation Quality Factor",
      "definition" : "Dimensionless quality factor used to convert absorbed dose to dose equivalent"
    },
    {
      "code" : "shielding-effectiveness",
      "display" : "Shielding Effectiveness",
      "definition" : "Fractional reduction in dose attributable to shielding (%)"
    },
    {
      "code" : "exposure-duration",
      "display" : "Exposure Duration",
      "definition" : "Duration of the exposure interval (h)"
    },
    {
      "code" : "compliance-status",
      "display" : "Compliance Status",
      "definition" : "Compliance of accumulated dose with the applicable exposure limits"
    },
    {
      "code" : "risk-assessment",
      "display" : "Radiation Risk Assessment",
      "definition" : "Qualitative radiation health risk assessment"
    },
    {
      "code" : "gcr-dose",
      "display" : "Galactic Cosmic Radiation Dose"
    },
    {
      "code" : "spe-dose",
      "display" : "Solar Particle Event Dose"
    },
    {
      "code" : "trapped-dose",
      "display" : "Trapped Radiation Dose"
    },
    {
      "code" : "secondary-dose",
      "display" : "Secondary Radiation Dose"
    },
    {
      "code" : "neutron-dose",
      "display" : "Neutron Radiation Dose"
    },
    {
      "code" : "career-dose",
      "display" : "Career Radiation Dose"
    },
    {
      "code" : "mission-dose",
      "display" : "Mission Radiation Dose"
    },
    {
      "code" : "annual-dose",
      "display" : "Annual Radiation Dose"
    },
    {
      "code" : "monthly-dose",
      "display" : "30-Day Radiation Dose"
    },
    {
      "code" : "weekly-dose",
      "display" : "Weekly Radiation Dose"
    },
    {
      "code" : "daily-dose",
      "display" : "Daily Radiation Dose"
    },
    {
      "code" : "bone-marrow-dose",
      "display" : "Bone Marrow Dose"
    },
    {
      "code" : "eye-lens-dose",
      "display" : "Eye Lens Dose"
    },
    {
      "code" : "skin-dose",
      "display" : "Skin Dose"
    },
    {
      "code" : "cns-dose",
      "display" : "Central Nervous System Dose"
    },
    {
      "code" : "thyroid-dose",
      "display" : "Thyroid Dose"
    },
    {
      "code" : "gonad-dose",
      "display" : "Gonad Dose"
    },
    {
      "code" : "lung-dose",
      "display" : "Lung Dose"
    },
    {
      "code" : "gi-tract-dose",
      "display" : "GI Tract Dose"
    },
    {
      "code" : "whole-body-dose",
      "display" : "Whole Body Dose"
    },
    {
      "code" : "sensitivity",
      "display" : "Detector Sensitivity",
      "definition" : "Minimum detectable dose"
    },
    {
      "code" : "energy-range-min",
      "display" : "Minimum Energy Range"
    },
    {
      "code" : "energy-range-max",
      "display" : "Maximum Energy Range"
    },
    {
      "code" : "dosimeter-type",
      "display" : "Dosimeter Type"
    },
    {
      "code" : "calibration-date",
      "display" : "Calibration Date"
    },
    {
      "code" : "operating-temp-min",
      "display" : "Minimum Operating Temperature"
    },
    {
      "code" : "operating-temp-max",
      "display" : "Maximum Operating Temperature"
    },
    {
      "code" : "measurement-accuracy",
      "display" : "Measurement Accuracy"
    },
    {
      "code" : "radiation-summary",
      "display" : "Space Radiation Exposure Summary"
    },
    {
      "code" : "dose-history",
      "display" : "Radiation Dose History"
    }
  ]
}

```
