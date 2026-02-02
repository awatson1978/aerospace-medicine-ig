# NASA MRID Sponsor Organizations - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA MRID Sponsor Organizations**

## CodeSystem: NASA MRID Sponsor Organizations 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:NASAMRIDSponsorCS |

 
Organizations that sponsor medical requirements within NASA's Medical Requirements Integration Documents. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAMRIDSponsorVS](ValueSet-nasa-mrid-sponsor-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-mrid-sponsor-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
  "version" : "0.5.8",
  "name" : "NASAMRIDSponsorCS",
  "title" : "NASA MRID Sponsor Organizations",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-02T11:11:20-06:00",
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
  "description" : "Organizations that sponsor medical requirements within NASA's Medical Requirements Integration Documents.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "medical-operations",
      "display" : "Medical Operations",
      "definition" : "NASA Medical Operations branch responsible for crew health and medical care."
    },
    {
      "code" : "bhp",
      "display" : "Behavioral Health and Performance",
      "definition" : "NASA Behavioral Health and Performance group responsible for psychological services and crew behavioral readiness."
    },
    {
      "code" : "srag",
      "display" : "Space Radiation Analysis Group",
      "definition" : "NASA Space Radiation Analysis Group responsible for radiation monitoring and risk assessment."
    },
    {
      "code" : "environmental-health",
      "display" : "Environmental Health System",
      "definition" : "NASA Environmental Health System responsible for habitat environmental monitoring."
    },
    {
      "code" : "exercise-physiology",
      "display" : "Exercise Physiology and Countermeasures",
      "definition" : "NASA Exercise Physiology team responsible for exercise countermeasures."
    },
    {
      "code" : "flight-medicine",
      "display" : "Flight Medicine",
      "definition" : "NASA Flight Medicine responsible for clinical care during missions."
    },
    {
      "code" : "ascr",
      "display" : "Astronaut Strength Conditioning and Rehabilitation",
      "definition" : "NASA ASCR team responsible for fitness assessment and rehabilitation."
    }
  ]
}

```
