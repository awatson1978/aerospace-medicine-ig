# Enhanced Aerospace Medicine Code System - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Enhanced Aerospace Medicine Code System**

## CodeSystem: Enhanced Aerospace Medicine Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/aerospace-code-system-enhanced | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:AerospaceCodeSystemEnhanced |

 
Comprehensive code system for aerospace medicine concepts including all referenced codes 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "aerospace-code-system-enhanced",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/aerospace-code-system-enhanced",
  "version" : "0.4.2",
  "name" : "AerospaceCodeSystemEnhanced",
  "title" : "Enhanced Aerospace Medicine Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Comprehensive code system for aerospace medicine concepts including all referenced codes",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 55,
  "concept" : [
    {
      "code" : "shielding-effectiveness",
      "display" : "Shielding Effectiveness"
    },
    {
      "code" : "exposure-duration",
      "display" : "Exposure Duration"
    },
    {
      "code" : "compliance-status",
      "display" : "Compliance Status"
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
      "code" : "sensitivity",
      "display" : "Detector Sensitivity"
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
      "code" : "let",
      "display" : "Linear Energy Transfer"
    },
    {
      "code" : "quality-factor",
      "display" : "Radiation Quality Factor"
    },
    {
      "code" : "calibration-date",
      "display" : "Calibration Date"
    },
    {
      "code" : "operating-temperature",
      "display" : "Operating Temperature"
    },
    {
      "code" : "measurement-accuracy",
      "display" : "Measurement Accuracy"
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
      "code" : "tld",
      "display" : "Thermoluminescent Dosimeter"
    },
    {
      "code" : "osld",
      "display" : "Optically Stimulated Luminescence Detector"
    },
    {
      "code" : "epd",
      "display" : "Electronic Personal Dosimeter"
    },
    {
      "code" : "tepc",
      "display" : "Tissue Equivalent Proportional Counter"
    },
    {
      "code" : "area-monitor",
      "display" : "Area Radiation Monitor"
    },
    {
      "code" : "neutron-detector",
      "display" : "Neutron Detection System"
    },
    {
      "code" : "spectrometer",
      "display" : "Radiation Spectrometer"
    },
    {
      "code" : "passive",
      "display" : "Passive Dosimeter"
    },
    {
      "code" : "active",
      "display" : "Active Real-time Dosimeter"
    },
    {
      "code" : "area",
      "display" : "Area Monitor"
    },
    {
      "code" : "iss-expedition",
      "display" : "ISS Expedition"
    },
    {
      "code" : "lunar-mission",
      "display" : "Lunar Mission"
    },
    {
      "code" : "mars-mission",
      "display" : "Mars Mission"
    },
    {
      "code" : "eva-mission",
      "display" : "Extravehicular Activity"
    },
    {
      "code" : "deep-space-mission",
      "display" : "Deep Space Mission"
    },
    {
      "code" : "leo-mission",
      "display" : "Low Earth Orbit Mission"
    },
    {
      "code" : "geo-mission",
      "display" : "Geostationary Earth Orbit Mission"
    },
    {
      "code" : "radiation-summary",
      "display" : "Space Radiation Exposure Summary"
    },
    {
      "code" : "dose-history",
      "display" : "Radiation Dose History"
    },
    {
      "code" : "risk-assessment",
      "display" : "Radiation Risk Assessment"
    },
    {
      "code" : "compliance-report",
      "display" : "Radiation Compliance Report"
    }
  ]
}

```
