# Antioxidant Biomarker Panel - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antioxidant Biomarker Panel**

## Resource Profile: Antioxidant Biomarker Panel 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/antioxidant-biomarker-panel | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AntioxidantBiomarkerPanel |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Panel of oxidative stress and antioxidant status biomarkers for monitoring radioprotective countermeasure efficacy 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/antioxidant-biomarker-panel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-antioxidant-biomarker-panel.csv), [Excel](StructureDefinition-antioxidant-biomarker-panel.xlsx), [Schematron](StructureDefinition-antioxidant-biomarker-panel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "antioxidant-biomarker-panel",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/antioxidant-biomarker-panel",
  "version" : "0.7.0",
  "name" : "AntioxidantBiomarkerPanel",
  "title" : "Antioxidant Biomarker Panel",
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
  "description" : "Panel of oxidative stress and antioxidant status biomarkers for monitoring radioprotective countermeasure efficacy",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:missionPhase",
        "path" : "Observation.extension",
        "sliceName" : "missionPhase",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-phase"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Antioxidant status panel",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "32354-3",
              "display" : "Antioxidants panel"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/astronaut"
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
        "id" : "Observation.component:glutathione",
        "path" : "Observation.component",
        "sliceName" : "glutathione",
        "short" : "Reduced glutathione level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:glutathione.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "glutathione-reduced",
              "display" : "Reduced Glutathione (GSH)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:glutathione.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:glutathione.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:glutathione.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "umol/L"
      },
      {
        "id" : "Observation.component:malondialdehyde",
        "path" : "Observation.component",
        "sliceName" : "malondialdehyde",
        "short" : "Malondialdehyde lipid peroxidation marker",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:malondialdehyde.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "malondialdehyde",
              "display" : "Malondialdehyde (MDA)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:malondialdehyde.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:malondialdehyde.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:malondialdehyde.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "nmol/mL"
      },
      {
        "id" : "Observation.component:dnaOxidation",
        "path" : "Observation.component",
        "sliceName" : "dnaOxidation",
        "short" : "8-OHdG oxidative DNA damage marker",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:dnaOxidation.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "8-ohdg",
              "display" : "8-Hydroxy-2'-Deoxyguanosine (8-OHdG)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:dnaOxidation.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:dnaOxidation.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:dnaOxidation.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ng/mL"
      },
      {
        "id" : "Observation.component:sodActivity",
        "path" : "Observation.component",
        "sliceName" : "sodActivity",
        "short" : "Superoxide dismutase activity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:sodActivity.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "sod-activity",
              "display" : "Superoxide Dismutase (SOD) Activity"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:sodActivity.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:sodActivity.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:sodActivity.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "U/mL"
      },
      {
        "id" : "Observation.component:catalaseActivity",
        "path" : "Observation.component",
        "sliceName" : "catalaseActivity",
        "short" : "Catalase enzyme activity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:catalaseActivity.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "catalase-activity",
              "display" : "Catalase Activity"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:catalaseActivity.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:catalaseActivity.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:catalaseActivity.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "U/mL"
      },
      {
        "id" : "Observation.component:totalAntioxidant",
        "path" : "Observation.component",
        "sliceName" : "totalAntioxidant",
        "short" : "Total antioxidant capacity",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:totalAntioxidant.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
              "code" : "tac",
              "display" : "Total Antioxidant Capacity (TAC)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:totalAntioxidant.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:totalAntioxidant.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:totalAntioxidant.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mmol/L"
      }
    ]
  }
}

```
