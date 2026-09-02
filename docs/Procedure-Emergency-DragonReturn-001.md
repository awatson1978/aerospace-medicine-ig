# Emergency Dragon Return - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Dragon Return**

## Example Procedure: Emergency Dragon Return

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**status**: Completed

**code**: Crew Dragon Return

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/emergency-evacuation-procedure"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/gravity-context-cs",
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs",
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
