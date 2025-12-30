# Radiation Detection Device (Fixed) - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Detection Device (Fixed)**

## Resource Profile: Radiation Detection Device (Fixed) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/radiation-detector | *Version*:0.5.1 |
| Active as of 2025-12-29 | *Computable Name*:RadiationDetector |

 
Fixed device profile for radiation monitoring in space with properly constrained properties 

**Usages:**

* Refer to this Profile: [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radiation-detector)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radiation-detector.csv), [Excel](StructureDefinition-radiation-detector.xlsx), [Schematron](StructureDefinition-radiation-detector.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radiation-detector",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/radiation-detector",
  "version" : "0.5.1",
  "name" : "RadiationDetector",
  "title" : "Radiation Detection Device (Fixed)",
  "status" : "active",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Fixed device profile for radiation monitoring in space with properly constrained properties",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.status",
        "path" : "Device.status",
        "mustSupport" : true
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Device.modelNumber",
        "path" : "Device.modelNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/radiation-detector-type-vs-complete"
        }
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Device.property:detectorSensitivity",
        "path" : "Device.property",
        "sliceName" : "detectorSensitivity",
        "short" : "Minimum detectable radiation level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:detectorSensitivity.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "sensitivity",
              "display" : "Detector Sensitivity"
            }
          ]
        }
      },
      {
        "id" : "Device.property:detectorSensitivity.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:detectorSensitivity.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "uSv"
      },
      {
        "id" : "Device.property:energyRangeMin",
        "path" : "Device.property",
        "sliceName" : "energyRangeMin",
        "short" : "Minimum detection energy",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:energyRangeMin.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "energy-range-min",
              "display" : "Minimum Energy Range"
            }
          ]
        }
      },
      {
        "id" : "Device.property:energyRangeMin.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:energyRangeMin.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "keV"
      },
      {
        "id" : "Device.property:energyRangeMax",
        "path" : "Device.property",
        "sliceName" : "energyRangeMax",
        "short" : "Maximum detection energy",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:energyRangeMax.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "energy-range-max",
              "display" : "Maximum Energy Range"
            }
          ]
        }
      },
      {
        "id" : "Device.property:energyRangeMax.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:energyRangeMax.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "MeV"
      },
      {
        "id" : "Device.property:dosimeterType",
        "path" : "Device.property",
        "sliceName" : "dosimeterType",
        "short" : "Type of dosimeter technology",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:dosimeterType.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "dosimeter-type",
              "display" : "Dosimeter Type"
            }
          ]
        }
      },
      {
        "id" : "Device.property:calibrationDate",
        "path" : "Device.property",
        "sliceName" : "calibrationDate",
        "short" : "Last calibration date as string",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:calibrationDate.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "calibration-date",
              "display" : "Calibration Date"
            }
          ]
        }
      },
      {
        "id" : "Device.property:operatingTempMin",
        "path" : "Device.property",
        "sliceName" : "operatingTempMin",
        "short" : "Minimum operating temperature",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:operatingTempMin.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "operating-temp-min",
              "display" : "Minimum Operating Temperature"
            }
          ]
        }
      },
      {
        "id" : "Device.property:operatingTempMin.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:operatingTempMin.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "Cel"
      },
      {
        "id" : "Device.property:operatingTempMax",
        "path" : "Device.property",
        "sliceName" : "operatingTempMax",
        "short" : "Maximum operating temperature",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:operatingTempMax.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "operating-temp-max",
              "display" : "Maximum Operating Temperature"
            }
          ]
        }
      },
      {
        "id" : "Device.property:operatingTempMax.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:operatingTempMax.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "Cel"
      },
      {
        "id" : "Device.property:measurementAccuracy",
        "path" : "Device.property",
        "sliceName" : "measurementAccuracy",
        "short" : "Measurement accuracy percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:measurementAccuracy.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "measurement-accuracy",
              "display" : "Measurement Accuracy"
            }
          ]
        }
      },
      {
        "id" : "Device.property:measurementAccuracy.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:measurementAccuracy.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "%"
      }
    ]
  }
}

```
