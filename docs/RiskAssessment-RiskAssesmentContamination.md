# Risk - Contamination - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk - Contamination**

## Example RiskAssessment: Risk - Contamination

Profile: [Mission Risk Assessment](StructureDefinition-SpaceRiskAssesment.md)

**status**: Final

**subject**: [Catherine Janeway](Patient/CaptainJaneway)



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "RiskAssesmentContamination",
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
