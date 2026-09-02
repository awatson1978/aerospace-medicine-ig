# Radiation Detection Device - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Detection Device**

## Resource Profile: Radiation Detection Device 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-detector | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:RadiationDetector |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Device profile for personal and area radiation monitors used in spaceflight, with detector-property slices. 

**Usages:**

* Refer to this Profile: [Space Radiation Exposure](StructureDefinition-space-radiation-exposure.md)
* Examples for this Profile: [Device/radiation-detector-example](Device-radiation-detector-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radiation-detector)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radiation-detector.csv), [Excel](StructureDefinition-radiation-detector.xlsx), [Schematron](StructureDefinition-radiation-detector.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radiation-detector",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-detector",
  "version" : "0.7.0",
  "name" : "RadiationDetector",
  "title" : "Radiation Detection Device",
  "status" : "active",
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
  "description" : "Device profile for personal and area radiation monitors used in spaceflight, with detector-property slices.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/dosimeter-type-vs"
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
              "code" : "dosimeter-type",
              "display" : "Dosimeter Type"
            }
          ]
        }
      },
      {
        "id" : "Device.property:dosimeterType.valueCode",
        "path" : "Device.property.valueCode",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/dosimeter-type-vs"
        }
      },
      {
        "id" : "Device.property:calibrationDate",
        "path" : "Device.property",
        "sliceName" : "calibrationDate",
        "short" : "Days since last calibration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:calibrationDate.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
              "code" : "calibration-date",
              "display" : "Calibration Date"
            }
          ]
        }
      },
      {
        "id" : "Device.property:calibrationDate.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:calibrationDate.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "d"
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
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
