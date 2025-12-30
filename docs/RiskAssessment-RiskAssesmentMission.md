# Risk - Mission - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk - Mission**

## Example RiskAssessment: Risk - Mission

Profile: [Mission Risk Assessment](StructureDefinition-SpaceRiskAssesment.md)

**status**: Final

**subject**: [Catherine Janeway](Patient/CaptainJaneway)



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "RiskAssesmentMission",
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
