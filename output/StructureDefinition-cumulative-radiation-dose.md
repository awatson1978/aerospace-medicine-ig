# Cumulative Radiation Dose (Fixed) - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cumulative Radiation Dose (Fixed)**

## Resource Profile: Cumulative Radiation Dose (Fixed) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/cumulative-radiation-dose | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:CumulativeRadiationDose |

 
Enhanced cumulative radiation dose tracking with comprehensive time periods 

**Usages:**

* Refer to this Profile: [Space Radiation Exposure Summary (Fixed)](StructureDefinition-space-radiation-summary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/cumulative-radiation-dose)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cumulative-radiation-dose.csv), [Excel](StructureDefinition-cumulative-radiation-dose.xlsx), [Schematron](StructureDefinition-cumulative-radiation-dose.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cumulative-radiation-dose",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/cumulative-radiation-dose",
  "version" : "0.5.6",
  "name" : "CumulativeRadiationDose",
  "title" : "Cumulative Radiation Dose (Fixed)",
  "status" : "active",
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
  "description" : "Enhanced cumulative radiation dose tracking with comprehensive time periods",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://mitre.org/fhir/space-health/StructureDefinition/space-radiation-exposure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "73536-5",
              "display" : "Radiation dose total"
            }
          ]
        }
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "Time period over which dose was accumulated",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Observation.component:careerDose",
        "path" : "Observation.component",
        "sliceName" : "careerDose",
        "short" : "Total career radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:careerDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "career-dose",
              "display" : "Career Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:missionDose",
        "path" : "Observation.component",
        "sliceName" : "missionDose",
        "short" : "Total mission radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:missionDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "mission-dose",
              "display" : "Mission Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:annualDose",
        "path" : "Observation.component",
        "sliceName" : "annualDose",
        "short" : "Annual radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:annualDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "annual-dose",
              "display" : "Annual Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:monthlyDose",
        "path" : "Observation.component",
        "sliceName" : "monthlyDose",
        "short" : "30-day rolling radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:monthlyDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "monthly-dose",
              "display" : "30-Day Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:weeklyDose",
        "path" : "Observation.component",
        "sliceName" : "weeklyDose",
        "short" : "7-day rolling radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:weeklyDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "weekly-dose",
              "display" : "Weekly Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:dailyDose",
        "path" : "Observation.component",
        "sliceName" : "dailyDose",
        "short" : "Daily radiation dose",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:dailyDose.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "daily-dose",
              "display" : "Daily Radiation Dose"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:riskAssessment",
        "path" : "Observation.component",
        "sliceName" : "riskAssessment",
        "short" : "Radiation health risk assessment",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:riskAssessment.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "risk-assessment",
              "display" : "Radiation Risk Assessment"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:riskAssessment.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:complianceStatus",
        "path" : "Observation.component",
        "sliceName" : "complianceStatus",
        "short" : "Compliance with radiation exposure limits",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:complianceStatus.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "compliance-status",
              "display" : "Compliance Status"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:complianceStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
