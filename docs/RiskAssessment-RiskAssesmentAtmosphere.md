# Risk - Atmosphere - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk - Atmosphere**

## Example RiskAssessment: Risk - Atmosphere

Profile: [Mission Risk Assessment](StructureDefinition-SpaceRiskAssesment.md)

**status**: Final

**subject**: [Catherine Janeway](Patient/CaptainJaneway)



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "RiskAssesmentAtmosphere",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceRiskAssesment"
    ]
  },
  "status" : "final",
  "subject" : {
    "reference" : "Patient/CaptainJaneway",
    "display" : "Catherine Janeway"
  }
}

```
