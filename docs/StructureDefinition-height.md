# Body Height - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Height**

## Resource Profile: Body Height 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/height | *Version*:0.5.1 |
| Active as of 2022-09-11 | *Computable Name*:Height |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
The measurement in centimeters or feet and inches from the top of the head to the heel, usually while standing. 

**Usages:**

* Refer to this Profile: [Vital Signs Panel](StructureDefinition-vital-signs-panel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/height)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-height.csv), [Excel](StructureDefinition-height.xlsx), [Schematron](StructureDefinition-height.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "height",
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/height",
  "version" : "0.5.1",
  "name" : "Height",
  "title" : "Body Height",
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
  "description" : "The measurement in centimeters or feet and inches from the top of the head to the heel, usually while standing.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodyheight",
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
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/heightBodyPositionVS"
        }
      },
      {
        "id" : "Observation.extension:measurementDevice",
        "path" : "Observation.extension",
        "sliceName" : "measurementDevice",
        "short" : "Measurement Device Type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/observation-deviceCode"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:measurementDevice.valueCodeableConcept",
        "path" : "Observation.extension.valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasDeviceVS"
        }
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
        "short" : "Body height"
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
        "id" : "Observation.valueQuantity",
        "path" : "Observation.valueQuantity"
      },
      {
        "id" : "Observation.valueQuantity.code",
        "path" : "Observation.valueQuantity.code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/LengthUOMVS"
        }
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/NumericResultIntNonPanicVS"
        }
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/heightLengthMeasMethodVS"
        }
      }
    ]
  }
}

```
