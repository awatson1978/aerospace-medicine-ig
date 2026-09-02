# Crew Personal Dosimeter (example) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Crew Personal Dosimeter (example)**

## Example Device: Crew Personal Dosimeter (example)

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Radiation Detection Device](StructureDefinition-radiation-detector.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**manufacturer**: Example Dosimetry Inc.

**serialNumber**: EPD-2100-0042

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Crew Personal Active Dosimeter | User Friendly name |

**modelNumber**: EPD-2100

**type**: Electronic Personal Dosimeter

> **property****type**:Detector Sensitivity**valueQuantity**: 1 uSv(Details: UCUM codeuSv = 'uSv')

> **property****type**:Minimum Energy Range**valueQuantity**: 20 keV(Details: UCUM codekeV = 'keV')

> **property****type**:Maximum Energy Range**valueQuantity**: 10 MeV(Details: UCUM codeMeV = 'MeV')

> **property****type**:Measurement Accuracy**valueQuantity**: 10 %(Details: UCUM code% = '%')

**patient**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "radiation-detector-example",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-detector"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "active",
  "manufacturer" : "Example Dosimetry Inc.",
  "serialNumber" : "EPD-2100-0042",
  "deviceName" : [
    {
      "name" : "Crew Personal Active Dosimeter",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "EPD-2100",
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-detector-type-cs",
        "code" : "epd",
        "display" : "Electronic Personal Dosimeter"
      }
    ]
  },
  "property" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "sensitivity",
            "display" : "Detector Sensitivity"
          }
        ]
      },
      "valueQuantity" : [
        {
          "value" : 1,
          "unit" : "uSv",
          "system" : "http://unitsofmeasure.org",
          "code" : "uSv"
        }
      ]
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "energy-range-min",
            "display" : "Minimum Energy Range"
          }
        ]
      },
      "valueQuantity" : [
        {
          "value" : 20,
          "unit" : "keV",
          "system" : "http://unitsofmeasure.org",
          "code" : "keV"
        }
      ]
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "energy-range-max",
            "display" : "Maximum Energy Range"
          }
        ]
      },
      "valueQuantity" : [
        {
          "value" : 10,
          "unit" : "MeV",
          "system" : "http://unitsofmeasure.org",
          "code" : "MeV"
        }
      ]
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "measurement-accuracy",
            "display" : "Measurement Accuracy"
          }
        ]
      },
      "valueQuantity" : [
        {
          "value" : 10,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/ExampleAstronaut"
  }
}

```
