# Emergency Dragon Return - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Dragon Return**

## Example Procedure: Emergency Dragon Return

Profile: [Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.md)

**Gravity Context**: Microgravity

**status**: Completed

**code**: Crew Dragon Return

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2028-07-15 15:00:00+0000 --> 2028-07-16 03:45:00+0000

**reasonReference**: [Condition Rapid Depressurization](Condition-Emergency-RapidDepress-001.md)

**outcome**: Successful

**note**: 

> 

Crew evacuated via Crew Dragon-8, undocking at T+30 min, splashdown at T+12.75 hr




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "Emergency-DragonReturn-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/emergency-evacuation-procedure"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
            "code" : "microgravity",
            "display" : "Microgravity"
          }
        ]
      }
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/emergency-response-cs",
        "code" : "crew-dragon-return",
        "display" : "Crew Dragon Return"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedPeriod" : {
    "start" : "2028-07-15T15:00:00Z",
    "end" : "2028-07-16T03:45:00Z"
  },
  "reasonReference" : [
    {
      "reference" : "Condition/Emergency-RapidDepress-001"
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "385669000",
        "display" : "Successful"
      }
    ]
  },
  "note" : [
    {
      "text" : "Crew evacuated via Crew Dragon-8, undocking at T+30 min, splashdown at T+12.75 hr"
    }
  ]
}

```
