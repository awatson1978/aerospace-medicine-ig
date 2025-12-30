# Oxygen Saturation in Arterial Blood by Pulse Oximetry - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oxygen Saturation in Arterial Blood by Pulse Oximetry**

## Resource Profile: Oxygen Saturation in Arterial Blood by Pulse Oximetry 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood-pulseOx | *Version*:0.5.2 |
| Active as of 2022-09-11 | *Computable Name*:OxygenSaturationArterialBloodPulseOx |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood via pulse oximetry. 

**Usages:**

* Refer to this Profile: [Vital Signs Panel](StructureDefinition-vital-signs-panel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/oxygen-saturation-arterial-blood-pulseOx)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oxygen-saturation-arterial-blood-pulseOx.csv), [Excel](StructureDefinition-oxygen-saturation-arterial-blood-pulseOx.xlsx), [Schematron](StructureDefinition-oxygen-saturation-arterial-blood-pulseOx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oxygen-saturation-arterial-blood-pulseOx",
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood-pulseOx",
  "version" : "0.5.2",
  "name" : "OxygenSaturationArterialBloodPulseOx",
  "title" : "Oxygen Saturation in Arterial Blood by Pulse Oximetry",
  "status" : "active",
  "date" : "2022-09-11T16:19:45+00:00",
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
  "description" : "A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood via pulse oximetry.",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.extension:sensorDescription",
        "path" : "Observation.extension",
        "sliceName" : "sensorDescription",
        "short" : "Sensor Description",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/SensorDescriptionExt"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:MeasurementSetting",
        "path" : "Observation.extension",
        "sliceName" : "MeasurementSetting",
        "short" : "Measurement setting",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:exerciseAssociation",
        "path" : "Observation.extension",
        "sliceName" : "exerciseAssociation",
        "short" : "Exercise Association",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
            ]
          }
        ],
        "mustSupport" : true
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
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/LowOnlyNumericResultIntVS"
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/sPO2BodyLocationVS"
        }
      }
    ]
  }
}

```
