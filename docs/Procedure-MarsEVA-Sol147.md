# Mars EVA - Sol 147 - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars EVA - Sol 147**

## Example Procedure: Mars EVA - Sol 147

Profile: [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md)

**Mission Context**: [Encounter: status = in-progress; class = field (ActCode#FLD); period = 2040-09-01 00:00:00+0000 --> (ongoing); reasonCode =](Encounter-MarsDirectMission2040.md)

**EVA Number**: EVA-147

**Communication Delay**: 12.5 min(Details: UCUM codemin = 'min')

**status**: Completed

**code**: Mars Surface Extravehicular Activity

**subject**: [Sarah Chen Female, DoB: 1990-03-15 ( http://nasa.gov/astronaut-id#AST-2029-001)](Patient-MarsCrewMember1.md)

**performed**: 2041-04-06 08:30:00+0000 --> 2041-04-06 15:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [CDR Sarah Chen](Patient-MarsCrewMember1.md) |

**location**: [Jezero Crater rim region, 2.3 km from habitat](Location-MarsHabitat-Jezero.md)

**reasonCode**: Geological sample collection and crater rim survey

**outcome**: Successful

**note**: 

> 

Crew reported excellent mobility in xEMU suit. Peak heart rate 145 bpm during crater ascent. No suit anomalies. Dust contamination moderate, decontamination protocols completed post-EVA.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "MarsEVA-Sol147",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/mars-eva-procedure"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/MarsDirectMission2040"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number",
      "valueString" : "EVA-147"
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay",
      "valueQuantity" : {
        "value" : 12.5,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "103741001",
        "display" : "Extravehicular activity (procedure)"
      }
    ],
    "text" : "Mars Surface Extravehicular Activity"
  },
  "subject" : {
    "reference" : "Patient/MarsCrewMember1"
  },
  "performedPeriod" : {
    "start" : "2041-04-06T08:30:00Z",
    "end" : "2041-04-06T15:00:00Z"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Patient/MarsCrewMember1",
        "display" : "CDR Sarah Chen"
      }
    }
  ],
  "location" : {
    "reference" : "Location/MarsHabitat-Jezero",
    "display" : "Jezero Crater rim region, 2.3 km from habitat"
  },
  "reasonCode" : [
    {
      "text" : "Geological sample collection and crater rim survey"
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
      "text" : "Crew reported excellent mobility in xEMU suit. Peak heart rate 145 bpm during crater ascent. No suit anomalies. Dust contamination moderate, decontamination protocols completed post-EVA."
    }
  ]
}

```
