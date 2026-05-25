# Immune Biomarker Panel - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immune Biomarker Panel**

## Resource Profile: Immune Biomarker Panel 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/immune-biomarker-panel | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ImmuneBiomarkerPanel |

 
Panel of immune function biomarkers for monitoring spaceflight-associated immune dysregulation 

**Usages:**

* Examples for this Profile: [Observation/Immune-Panel-PreFlight](Observation-Immune-Panel-PreFlight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/immune-biomarker-panel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immune-biomarker-panel.csv), [Excel](StructureDefinition-immune-biomarker-panel.xlsx), [Schematron](StructureDefinition-immune-biomarker-panel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immune-biomarker-panel",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/immune-biomarker-panel",
  "version" : "0.6.0",
  "name" : "ImmuneBiomarkerPanel",
  "title" : "Immune Biomarker Panel",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Panel of immune function biomarkers for monitoring spaceflight-associated immune dysregulation",
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
        "id" : "Observation.extension:missionPhase",
        "path" : "Observation.extension",
        "sliceName" : "missionPhase",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase"
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
        "short" : "Immune function panel",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "24359-3",
              "display" : "Immune function panel"
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
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "Blood or saliva specimen",
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
        "id" : "Observation.component:il6",
        "path" : "Observation.component",
        "sliceName" : "il6",
        "short" : "Interleukin-6 level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:il6.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "il-6",
              "display" : "Interleukin-6 (IL-6)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:il6.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:il6.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:il6.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "pg/mL"
      },
      {
        "id" : "Observation.component:tnfAlpha",
        "path" : "Observation.component",
        "sliceName" : "tnfAlpha",
        "short" : "TNF-alpha level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:tnfAlpha.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "tnf-alpha",
              "display" : "Tumor Necrosis Factor Alpha (TNF-α)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:tnfAlpha.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:tnfAlpha.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:tnfAlpha.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "pg/mL"
      },
      {
        "id" : "Observation.component:ifnGamma",
        "path" : "Observation.component",
        "sliceName" : "ifnGamma",
        "short" : "Interferon gamma level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ifnGamma.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "ifn-gamma",
              "display" : "Interferon Gamma (IFN-γ)"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ifnGamma.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:ifnGamma.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:ifnGamma.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "pg/mL"
      },
      {
        "id" : "Observation.component:cd4Cd8Ratio",
        "path" : "Observation.component",
        "sliceName" : "cd4Cd8Ratio",
        "short" : "CD4/CD8 T-cell ratio",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:cd4Cd8Ratio.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "cd4-cd8-ratio",
              "display" : "CD4/CD8 Ratio"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:cd4Cd8Ratio.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:cd4Cd8Ratio.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:cd4Cd8Ratio.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "1"
      },
      {
        "id" : "Observation.component:nkCellPct",
        "path" : "Observation.component",
        "sliceName" : "nkCellPct",
        "short" : "NK cell percentage",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:nkCellPct.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "nk-cell-pct",
              "display" : "Natural Killer Cell Percentage"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:nkCellPct.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:nkCellPct.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:nkCellPct.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:ebvReactivation",
        "path" : "Observation.component",
        "sliceName" : "ebvReactivation",
        "short" : "EBV reactivation PCR result",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:ebvReactivation.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "ebv-pcr",
              "display" : "EBV PCR"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:ebvReactivation.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:cortisolStress",
        "path" : "Observation.component",
        "sliceName" : "cortisolStress",
        "short" : "Stress cortisol level",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:cortisolStress.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2143-6",
              "display" : "Cortisol [Mass/volume] in Serum or Plasma"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:cortisolStress.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:cortisolStress.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:cortisolStress.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "ug/dL"
      },
      {
        "id" : "Observation.component:salivaryIgA",
        "path" : "Observation.component",
        "sliceName" : "salivaryIgA",
        "short" : "Salivary IgA concentration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:salivaryIgA.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
              "code" : "salivary-iga",
              "display" : "Salivary IgA"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:salivaryIgA.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:salivaryIgA.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:salivaryIgA.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mg/dL"
      }
    ]
  }
}

```
