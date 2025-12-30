# Blood Pressure Panel - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure Panel**

## Resource Profile: Blood Pressure Panel 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel | *Version*:0.5.2 |
| Active as of 2022-09-11 | *Computable Name*:BloodPressurePanel |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components. 

**Usages:**

* Refer to this Profile: [Vital Signs Panel](StructureDefinition-vital-signs-panel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/blood-pressure-panel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-blood-pressure-panel.csv), [Excel](StructureDefinition-blood-pressure-panel.xlsx), [Schematron](StructureDefinition-blood-pressure-panel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "blood-pressure-panel",
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel",
  "version" : "0.5.2",
  "name" : "BloodPressurePanel",
  "title" : "Blood Pressure Panel",
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
  "description" : "Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalsigns",
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
        "id" : "Observation.extension:bodyPosition",
        "path" : "Observation.extension",
        "sliceName" : "bodyPosition",
        "short" : "Body Position",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:bodyPosition.valueCodeableConcept",
        "path" : "Observation.extension.valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/bodyPositionVS"
        }
      },
      {
        "id" : "Observation.extension:sleepStatus",
        "path" : "Observation.extension",
        "sliceName" : "sleepStatus",
        "short" : "Sleep Status",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Blood pressure panel with all children optional",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9"
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/NumericResultIntVS"
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "description" : "A set of codes that describe where on/in the body an observation or procedure took place",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/bpmeasbodylocationprecoord"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "description" : "A set of codes that describe the method used to measure a blood pressure",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/bpMeasMethodVS"
        }
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "max" : "0"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Blood Pressure Device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/bp-device"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Blood pressure components",
        "min" : 1
      },
      {
        "id" : "Observation.component:SystolicBP",
        "path" : "Observation.component",
        "sliceName" : "SystolicBP",
        "short" : "Systolic Blood Pressure",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:SystolicBP.code",
        "path" : "Observation.component.code",
        "short" : "Systolic blood pressure",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8480-6"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:SystolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:SystolicBP.valueQuantity",
        "path" : "Observation.component.valueQuantity",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:SystolicBP.valueQuantity.value",
        "path" : "Observation.component.valueQuantity.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:SystolicBP.valueQuantity.unit",
        "path" : "Observation.component.valueQuantity.unit",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:SystolicBP.valueQuantity.system",
        "path" : "Observation.component.valueQuantity.system",
        "min" : 1,
        "fixedUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:SystolicBP.valueQuantity.code",
        "path" : "Observation.component.valueQuantity.code",
        "min" : 1,
        "fixedCode" : "mm[Hg]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DiastolicBP",
        "path" : "Observation.component",
        "sliceName" : "DiastolicBP",
        "short" : "Diastolic Blood Pressure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:DiastolicBP.code",
        "path" : "Observation.component.code",
        "short" : "Diastolic blood pressure",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8462-4"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:DiastolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:DiastolicBP.valueQuantity",
        "path" : "Observation.component.valueQuantity",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DiastolicBP.valueQuantity.value",
        "path" : "Observation.component.valueQuantity.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DiastolicBP.valueQuantity.unit",
        "path" : "Observation.component.valueQuantity.unit",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DiastolicBP.valueQuantity.system",
        "path" : "Observation.component.valueQuantity.system",
        "min" : 1,
        "fixedUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:DiastolicBP.valueQuantity.code",
        "path" : "Observation.component.valueQuantity.code",
        "min" : 1,
        "fixedCode" : "mm[Hg]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP",
        "path" : "Observation.component",
        "sliceName" : "MeanArterialBP",
        "short" : "Mean Arterial Blood Pressure",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP.code",
        "path" : "Observation.component.code",
        "short" : "Mean blood pressure",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8478-0"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:MeanArterialBP.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:MeanArterialBP.valueQuantity",
        "path" : "Observation.component.valueQuantity",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP.valueQuantity.value",
        "path" : "Observation.component.valueQuantity.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP.valueQuantity.unit",
        "path" : "Observation.component.valueQuantity.unit",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP.valueQuantity.system",
        "path" : "Observation.component.valueQuantity.system",
        "min" : 1,
        "fixedUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MeanArterialBP.valueQuantity.code",
        "path" : "Observation.component.valueQuantity.code",
        "min" : 1,
        "fixedCode" : "mm[Hg]",
        "mustSupport" : true
      }
    ]
  }
}

```
