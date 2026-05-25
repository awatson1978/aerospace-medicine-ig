# Antioxidant Biomarker Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antioxidant Biomarker Code System**

## CodeSystem: Antioxidant Biomarker Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/antioxidant-biomarker-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:AntioxidantBiomarkerCS |

 
Biomarkers of oxidative stress and antioxidant status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntioxidantBiomarkerVS](ValueSet-antioxidant-biomarker-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antioxidant-biomarker-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/antioxidant-biomarker-cs",
  "version" : "0.6.0",
  "name" : "AntioxidantBiomarkerCS",
  "title" : "Antioxidant Biomarker Code System",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Biomarkers of oxidative stress and antioxidant status",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "glutathione-reduced",
      "display" : "Reduced Glutathione (GSH)",
      "definition" : "Intracellular reduced glutathione level, primary cellular antioxidant"
    },
    {
      "code" : "malondialdehyde",
      "display" : "Malondialdehyde (MDA)",
      "definition" : "Lipid peroxidation marker indicating oxidative damage"
    },
    {
      "code" : "8-ohdg",
      "display" : "8-Hydroxy-2'-Deoxyguanosine (8-OHdG)",
      "definition" : "Oxidative DNA damage marker"
    },
    {
      "code" : "sod-activity",
      "display" : "Superoxide Dismutase (SOD) Activity",
      "definition" : "Antioxidant enzyme activity level"
    },
    {
      "code" : "catalase-activity",
      "display" : "Catalase Activity",
      "definition" : "Hydrogen peroxide decomposition enzyme activity"
    },
    {
      "code" : "tac",
      "display" : "Total Antioxidant Capacity (TAC)",
      "definition" : "Aggregate antioxidant capacity of biological sample"
    }
  ]
}

```
