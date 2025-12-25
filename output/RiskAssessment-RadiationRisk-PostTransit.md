# Radiation Risk Assessment - Post Outbound Transit - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Risk Assessment - Post Outbound Transit**

## Example RiskAssessment: Radiation Risk Assessment - Post Outbound Transit

Profile: [Mars Radiation Risk Assessment](StructureDefinition-mars-radiation-risk-assessment.md)

**Mission Context**: [Encounter: status = in-progress; class = field (ActCode#FLD); period = 2040-09-01 00:00:00+0000 --> (ongoing); reasonCode =](Encounter-MarsDirectMission2040.md)

**status**: Final

**code**: Risk assessment

**subject**: [Sarah Chen Female, DoB: 1990-03-15 ( http://nasa.gov/astronaut-id#AST-2029-001)](Patient-MarsCrewMember1.md)

**occurrence**: 2041-03-01 00:00:00+0000

**basis**: [Cumulative GCR dose during transit: 360 mSv](Observation/CumulativeDose-Transit)

### Predictions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Outcome** | **Probability[x]** | **Rationale** |
| * | Malignant neoplastic disease | 0.018 | Based on 360 mSv GCR exposure during 6-month deep space transit using BEIR VII risk model. Assumes nominal spacecraft shielding (~10 g/cm² aluminum equivalent). Total mission dose projected 750-900 mSv (transit + surface + return), conferring ~3.5-4.2% lifetime cancer risk increase. |

**note**: 

> 

Mitigation: Continue radiation monitoring throughout surface operations. Utilize habitat shielding (regolith berms if available). Implement storm shelter protocols for any solar particle events. Consider pharmacologic radioprotectants for return transit if cumulative dose approaches career limits.




## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "RadiationRisk-PostTransit",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/mars-radiation-risk-assessment"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/MarsDirectMission2040"
      }
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "225338004",
        "display" : "Risk assessment"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/MarsCrewMember1"
  },
  "occurrenceDateTime" : "2041-03-01T00:00:00Z",
  "basis" : [
    {
      "reference" : "Observation/CumulativeDose-Transit",
      "display" : "Cumulative GCR dose during transit: 360 mSv"
    }
  ],
  "prediction" : [
    {
      "outcome" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "363346000",
            "display" : "Malignant neoplastic disease"
          }
        ]
      },
      "probabilityDecimal" : 0.018,
      "rationale" : "Based on 360 mSv GCR exposure during 6-month deep space transit using BEIR VII risk model. Assumes nominal spacecraft shielding (~10 g/cm² aluminum equivalent). Total mission dose projected 750-900 mSv (transit + surface + return), conferring ~3.5-4.2% lifetime cancer risk increase."
    }
  ],
  "note" : [
    {
      "text" : "Mitigation: Continue radiation monitoring throughout surface operations. Utilize habitat shielding (regolith berms if available). Implement storm shelter protocols for any solar particle events. Consider pharmacologic radioprotectants for return transit if cumulative dose approaches career limits."
    }
  ]
}

```
