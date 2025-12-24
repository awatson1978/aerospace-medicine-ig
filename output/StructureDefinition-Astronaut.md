# Astronaut Patient Profile - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Astronaut Patient Profile**

## Resource Profile: Astronaut Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/Astronaut | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:Astronaut |

 
Patient profile for astronauts and space travelers 

**Usages:**

* Refer to this Profile: [Barotrauma Assessment](StructureDefinition-BarotraumaAssessment.md), [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md), [Dive Profile](StructureDefinition-DiveProfile.md), [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md)...Show 18 more,[Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md),[Advanced Dive Profile](StructureDefinition-advanced-dive-profile.md),[Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md),[Communication Session Assessment](StructureDefinition-communication-session-assessment.md),[Decompression Protocol](StructureDefinition-decompression-protocol.md),[Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md),[Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md),[Hydration Status Observation](StructureDefinition-hydration-status-observation.md),[Metabolic Risk Summary](StructureDefinition-metabolic-risk-summary.md),[Regulatory Compliance Assessment](StructureDefinition-regulatory-compliance-assessment.md),[Space Exercise Vital Sign Minutes Per Week](StructureDefinition-space-evs-minutes-per-week.md),[Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md),[Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md),[Space Exercise Session](StructureDefinition-space-exercise-session.md),[Space Nutrition Intake](StructureDefinition-space-nutrition-intake.md),[Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md),[Space Radiation Exposure Summary (Fixed)](StructureDefinition-space-radiation-summary.md)and[Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md)
* Examples for this Profile: [Patient/ExampleAstronaut](Patient-ExampleAstronaut.md), [Patient/janeway](Patient-janeway.md), [Patient/kirk](Patient-kirk.md), [Patient/redshirt1](Patient-redshirt1.md)...Show 5 more,[Patient/redshirt2](Patient-redshirt2.md),[Patient/sarek](Patient-sarek.md),[Patient/space-construction-engineer-1](Patient-space-construction-engineer-1.md),[Patient/space-engineer-1](Patient-space-engineer-1.md)and[Patient/spaceminer1](Patient-spaceminer1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/Astronaut)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Astronaut.csv), [Excel](StructureDefinition-Astronaut.xlsx), [Schematron](StructureDefinition-Astronaut.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Astronaut",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut",
  "version" : "0.4.2",
  "name" : "Astronaut",
  "title" : "Astronaut Patient Profile",
  "status" : "active",
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
  "description" : "Patient profile for astronauts and space travelers",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "patternBoolean" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mustSupport" : true
      }
    ]
  }
}

```
