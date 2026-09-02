# Underwater Communication System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater Communication System**

## Resource Profile: Underwater Communication System 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-communication-system | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:UnderwaterCommunicationSystem |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Communication equipment for underwater training operations 

**Usages:**

* Refer to this Profile: [Communication Session Assessment](StructureDefinition-communication-session-assessment.md) and [Communication Systems Used](StructureDefinition-communication-systems.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/underwater-communication-system)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-underwater-communication-system.csv), [Excel](StructureDefinition-underwater-communication-system.xlsx), [Schematron](StructureDefinition-underwater-communication-system.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "underwater-communication-system",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-communication-system",
  "version" : "0.7.0",
  "name" : "UnderwaterCommunicationSystem",
  "title" : "Underwater Communication System",
  "status" : "draft",
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
  "description" : "Communication equipment for underwater training operations",
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
  "baseDefinition" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment",
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
        "id" : "Device.type",
        "path" : "Device.type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/underwater-communication-systems-vs"
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
        "id" : "Device.property:communicationRange",
        "path" : "Device.property",
        "sliceName" : "communicationRange",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:communicationRange.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "comm-range"
            }
          ]
        }
      },
      {
        "id" : "Device.property:communicationRange.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:communicationRange.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "m"
      },
      {
        "id" : "Device.property:signalQuality",
        "path" : "Device.property",
        "sliceName" : "signalQuality",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:signalQuality.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "signal-quality"
            }
          ]
        }
      },
      {
        "id" : "Device.property:encryptionCapability",
        "path" : "Device.property",
        "sliceName" : "encryptionCapability",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:encryptionCapability.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "encryption"
            }
          ]
        }
      },
      {
        "id" : "Device.property:batteryLife",
        "path" : "Device.property",
        "sliceName" : "batteryLife",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:batteryLife.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "battery-life"
            }
          ]
        }
      },
      {
        "id" : "Device.property:batteryLife.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:batteryLife.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "h"
      },
      {
        "id" : "Device.property:waterproofRating",
        "path" : "Device.property",
        "sliceName" : "waterproofRating",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:waterproofRating.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "waterproof-rating"
            }
          ]
        }
      },
      {
        "id" : "Device.property:operatingDepth",
        "path" : "Device.property",
        "sliceName" : "operatingDepth",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.property:operatingDepth.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/underwater-communication-cs",
              "code" : "operating-depth"
            }
          ]
        }
      },
      {
        "id" : "Device.property:operatingDepth.valueQuantity.system",
        "path" : "Device.property.valueQuantity.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Device.property:operatingDepth.valueQuantity.code",
        "path" : "Device.property.valueQuantity.code",
        "patternCode" : "m"
      }
    ]
  }
}

```
