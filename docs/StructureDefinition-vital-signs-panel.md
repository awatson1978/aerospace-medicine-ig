# Vital Signs Panel - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vital Signs Panel**

## Resource Profile: Vital Signs Panel 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/vital-signs-panel | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:SpaceVitalsPanel |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
A vital signs panel as defined by Logica Health. It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body temperature, blood pressure panel, heart rate, respiratory rate, head-occcipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/vital-signs-panel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-vital-signs-panel.csv), [Excel](StructureDefinition-vital-signs-panel.xlsx), [Schematron](StructureDefinition-vital-signs-panel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "vital-signs-panel",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/vital-signs-panel",
  "version" : "0.5.6",
  "name" : "SpaceVitalsPanel",
  "title" : "Vital Signs Panel",
  "status" : "active",
  "date" : "2025-12-30T19:11:20-07:00",
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
  "description" : "A vital signs panel as defined by Logica Health.  It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body temperature, blood pressure panel, heart rate, respiratory rate, head-occcipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index.",
  "copyright" : "Logica Health, all rights reserved Creative Commons License",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalspanel",
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
        "short" : "Vital signs, weight, height, head circumference, oxygen saturation, and BMI panel",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85353-1"
            }
          ]
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "max" : "0"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/definedLimitsVS"
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "max" : "0"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "max" : "0"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "max" : "0"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "max" : "0"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "max" : "0"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "closed"
        }
      },
      {
        "id" : "Observation.hasMember:OxygenSaturationArterialBloodPulseOx",
        "path" : "Observation.hasMember",
        "sliceName" : "OxygenSaturationArterialBloodPulseOx",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood-pulseOx"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:BodyWeight",
        "path" : "Observation.hasMember",
        "sliceName" : "BodyWeight",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/body-weight"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:Height",
        "path" : "Observation.hasMember",
        "sliceName" : "Height",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/us/vitals/StructureDefinition/height"]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:BodyTemperature",
        "path" : "Observation.hasMember",
        "sliceName" : "BodyTemperature",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/body-temperature"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:BloodPressurePanel",
        "path" : "Observation.hasMember",
        "sliceName" : "BloodPressurePanel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:HeartRate",
        "path" : "Observation.hasMember",
        "sliceName" : "HeartRate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/heart-rate"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:RespiratoryRate",
        "path" : "Observation.hasMember",
        "sliceName" : "RespiratoryRate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/respiratory-rate"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember:BodyMassIndex",
        "path" : "Observation.hasMember",
        "sliceName" : "BodyMassIndex",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "max" : "0"
      }
    ]
  }
}

```
