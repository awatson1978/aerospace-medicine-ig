# Space Radiation Exposure (Fixed) - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Exposure (Fixed)**

## Resource Profile: Space Radiation Exposure (Fixed) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-radiation-exposure | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:SpaceRadiationExposure |

 
Corrected radiation dose measurement for space missions with proper extension contexts 

**Usages:**

* Derived from this Profile: [Cumulative Radiation Dose (Fixed)](StructureDefinition-cumulative-radiation-dose.md)
* Refer to this Profile: [Space Radiation Exposure Summary (Fixed)](StructureDefinition-space-radiation-summary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-radiation-exposure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-radiation-exposure.csv), [Excel](StructureDefinition-space-radiation-exposure.xlsx), [Schematron](StructureDefinition-space-radiation-exposure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-radiation-exposure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-radiation-exposure",
  "version" : "0.4.2",
  "name" : "SpaceRadiationExposure",
  "title" : "Space Radiation Exposure (Fixed)",
  "status" : "active",
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Corrected radiation dose measurement for space missions with proper extension contexts",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
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
        "id" : "Observation.extension:missionContext",
        "path" : "Observation.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:radiationType",
        "path" : "Observation.extension",
        "sliceName" : "radiationType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/radiation-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:shieldingMass",
        "path" : "Observation.extension",
        "sliceName" : "shieldingMass",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/shielding-mass"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:countermeasures",
        "path" : "Observation.extension",
        "sliceName" : "countermeasures",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/radiation-countermeasures"
            ]
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:radiationDose",
        "path" : "Observation.category",
        "sliceName" : "radiationDose",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "73569-6",
              "display" : "Radiation dose and image quality indicators"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/space-radiation-dose-codes-vs-complete"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/radiation-dose-units-vs"
        }
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/radiation-detector"
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
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:organDose",
        "path" : "Observation.component",
        "sliceName" : "organDose",
        "short" : "Organ-specific dose",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Observation.component:organDose.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/organ-dose-codes-vs-complete"
        }
      },
      {
        "id" : "Observation.component:organDose.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:organDose.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:organDose.value[x].code",
        "path" : "Observation.component.value[x].code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/radiation-dose-units-vs"
        }
      },
      {
        "id" : "Observation.component:doseRate",
        "path" : "Observation.component",
        "sliceName" : "doseRate",
        "short" : "Dose rate at time of measurement",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:doseRate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "77638-4",
              "display" : "Irradiation dose rate"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:doseRate.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:doseRate.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:doseRate.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "uSv/h"
      },
      {
        "id" : "Observation.component:linearEnergyTransfer",
        "path" : "Observation.component",
        "sliceName" : "linearEnergyTransfer",
        "short" : "Average LET of radiation field",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:linearEnergyTransfer.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "let",
              "display" : "Linear Energy Transfer"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:linearEnergyTransfer.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:linearEnergyTransfer.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:linearEnergyTransfer.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "keV/um"
      },
      {
        "id" : "Observation.component:radiationQualityFactor",
        "path" : "Observation.component",
        "sliceName" : "radiationQualityFactor",
        "short" : "Radiation quality factor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:radiationQualityFactor.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "quality-factor",
              "display" : "Radiation Quality Factor"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:radiationQualityFactor.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:radiationQualityFactor.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:radiationQualityFactor.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "1"
      },
      {
        "id" : "Observation.component:shieldingEffectiveness",
        "path" : "Observation.component",
        "sliceName" : "shieldingEffectiveness",
        "short" : "Shielding effectiveness percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:shieldingEffectiveness.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "shielding-effectiveness",
              "display" : "Shielding Effectiveness"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:shieldingEffectiveness.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:shieldingEffectiveness.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:shieldingEffectiveness.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:exposureDuration",
        "path" : "Observation.component",
        "sliceName" : "exposureDuration",
        "short" : "Duration of radiation exposure",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:exposureDuration.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
              "code" : "exposure-duration",
              "display" : "Exposure Duration"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:exposureDuration.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:exposureDuration.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:exposureDuration.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "h"
      }
    ]
  }
}

```
