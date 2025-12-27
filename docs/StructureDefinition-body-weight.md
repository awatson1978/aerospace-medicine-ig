# Body Weight - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Weight**

## Resource Profile: Body Weight 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/body-weight | *Version*:0.5.0 |
| Active as of 2022-09-11 | *Computable Name*:BodyWeight |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
The measured mass of an individual's body. 

**Usages:**

* Refer to this Profile: [Vital Signs Panel](StructureDefinition-vital-signs-panel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/body-weight)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-body-weight.csv), [Excel](StructureDefinition-body-weight.xlsx), [Schematron](StructureDefinition-body-weight.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "body-weight",
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/body-weight",
  "version" : "0.5.0",
  "name" : "BodyWeight",
  "title" : "Body Weight",
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
  "description" : "The measured mass of an individual's body.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodyweight",
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
        "id" : "Observation.extension:measurmentDevice",
        "path" : "Observation.extension",
        "sliceName" : "measurmentDevice",
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
        "id" : "Observation.extension:measurmentDevice.valueCodeableConcept",
        "path" : "Observation.extension.valueCodeableConcept",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/weightMeasurementDeviceVS"
        }
      },
      {
        "id" : "Observation.extension:associatedSituation",
        "path" : "Observation.extension",
        "sliceName" : "associatedSituation",
        "short" : "Associated Situation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/AssociatedSituationExt"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:associatedSituation.value[x]",
        "path" : "Observation.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.extension:associatedSituation.valueCodeableConcept",
        "path" : "Observation.extension.valueCodeableConcept",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/BodyWeightAssociatedSituationVS"
        }
      },
      {
        "id" : "Observation.extension:measurementSetting",
        "path" : "Observation.extension",
        "sliceName" : "measurementSetting",
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
        "short" : "Body weight"
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
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/WeightUOMVS"
        }
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/NumericResultIntNonPanicVS"
        }
      }
    ]
  }
}

```
