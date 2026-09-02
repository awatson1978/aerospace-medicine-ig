# Artemis Radiation Measures - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Radiation Measures**

## CodeSystem: Artemis Radiation Measures (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-radiation-measure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ArtemisRadiationMeasureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Observation and component codes used by the ArtemisRadiationExposure profile: dose measures and the contextual components (radiation source, shielding condition, tissue type). Radiation source values come from SpaceRadiationTypeCS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisRadiationMeasureVS](ValueSet-artemis-radiation-measure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-radiation-measure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-radiation-measure-cs",
  "version" : "0.7.0",
  "name" : "ArtemisRadiationMeasureCS",
  "title" : "Artemis Radiation Measures",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Observation and component codes used by the ArtemisRadiationExposure profile: dose measures and the contextual components (radiation source, shielding condition, tissue type). Radiation source values come from SpaceRadiationTypeCS.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "cumulative-dose",
      "display" : "Cumulative Radiation Dose",
      "definition" : "Accumulated effective dose over a mission phase or period"
    },
    {
      "code" : "dose-rate",
      "display" : "Radiation Dose Rate",
      "definition" : "Instantaneous or average dose rate during a measurement window"
    },
    {
      "code" : "radiation-source",
      "display" : "Radiation Source",
      "definition" : "Component identifying the dominant radiation source (GCR, SPE, trapped, secondary)"
    },
    {
      "code" : "shielding-condition",
      "display" : "Shielding Condition",
      "definition" : "Component identifying the shielding condition during the exposure"
    },
    {
      "code" : "tissue-type",
      "display" : "Tissue Type",
      "definition" : "Component identifying the tissue or organ for which the dose is reported"
    }
  ]
}

```
