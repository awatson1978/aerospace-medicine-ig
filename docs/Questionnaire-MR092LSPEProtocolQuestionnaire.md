# MR092L Solar Particle Event Protocol - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR092L Solar Particle Event Protocol**

## Questionnaire: MR092L Solar Particle Event Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr092l-spe-protocol | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MR092LSPEProtocol |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for Solar Particle Event protocol. Monitors SPE alerts, coordinates crew protective actions, and tracks exposure during events. 

 
Document Solar Particle Event monitoring, crew protective actions, and radiation exposure tracking during SPE events. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR092LSPEProtocolQuestionnaire",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "name",
          "valueCoding" : {
            "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext",
            "code" : "patient"
          }
        },
        {
          "url" : "type",
          "valueCode" : "Patient"
        },
        {
          "url" : "description",
          "valueString" : "The astronaut/crewmember subject of this medical requirement"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr092l-spe-protocol",
  "version" : "0.5.8",
  "name" : "MR092LSPEProtocol",
  "title" : "MR092L Solar Particle Event Protocol",
  "status" : "active",
  "date" : "2017-06-05",
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
  "description" : "NASA Medical Requirements Integration Document for Solar Particle Event protocol. Monitors SPE alerts, coordinates crew protective actions, and tracks exposure during events.",
  "purpose" : "Document Solar Particle Event monitoring, crew protective actions, and radiation exposure tracking during SPE events.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number and Title",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MR092L Solar Particle Event Protocol"
            }
          ]
        },
        {
          "linkId" : "overview.sponsor",
          "text" : "Sponsor",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "srag",
                "display" : "Space Radiation Analysis Group"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "srag",
                "display" : "Space Radiation Analysis Group"
              }
            }
          ]
        },
        {
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "radiation",
                "display" : "Radiation Health"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "radiation",
                "display" : "Radiation Health"
              }
            }
          ]
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Monitor SPE alerts, coordinate protective actions, and track crew exposure during solar events."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "spe-alert",
      "text" : "SPE Alert Information",
      "type" : "group",
      "item" : [
        {
          "linkId" : "spe-alert.alert-time",
          "text" : "Alert Time (UTC)",
          "type" : "dateTime",
          "required" : true
        },
        {
          "linkId" : "spe-alert.alert-source",
          "text" : "Alert Source",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "NOAA Space Weather Prediction Center"
            },
            {
              "valueString" : "NASA SRAG Real-time"
            },
            {
              "valueString" : "Partner Agency"
            }
          ]
        },
        {
          "linkId" : "spe-alert.severity",
          "text" : "Event Severity",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "S1 - Minor"
            },
            {
              "valueString" : "S2 - Moderate"
            },
            {
              "valueString" : "S3 - Strong"
            },
            {
              "valueString" : "S4 - Severe"
            },
            {
              "valueString" : "S5 - Extreme"
            }
          ]
        },
        {
          "linkId" : "spe-alert.predicted-duration",
          "text" : "Predicted Event Duration (hours)",
          "type" : "integer"
        },
        {
          "linkId" : "spe-alert.predicted-peak-flux",
          "text" : "Predicted Peak Flux (pfu)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "protective-actions",
      "text" : "Crew Protective Actions",
      "type" : "group",
      "item" : [
        {
          "linkId" : "protective-actions.notification-time",
          "text" : "Crew Notification Time (UTC)",
          "type" : "dateTime"
        },
        {
          "linkId" : "protective-actions.shelter-activated",
          "text" : "Radiation Shelter Activated",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "protective-actions.shelter-entry-time",
          "text" : "Shelter Entry Time (UTC)",
          "type" : "dateTime",
          "enableWhen" : [
            {
              "question" : "protective-actions.shelter-activated",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "protective-actions.shelter-location",
          "text" : "Shelter Location",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Service Module"
            },
            {
              "valueString" : "Node 1 (Unity)"
            },
            {
              "valueString" : "Sleep Station"
            },
            {
              "valueString" : "Other optimized location"
            }
          ]
        },
        {
          "linkId" : "protective-actions.eva-eva-impact",
          "text" : "EVA in Progress",
          "type" : "boolean"
        },
        {
          "linkId" : "protective-actions.eva-terminated",
          "text" : "EVA Terminated Early",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "protective-actions.eva-eva-impact",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "exposure-tracking",
      "text" : "Exposure Tracking During Event",
      "type" : "group",
      "item" : [
        {
          "linkId" : "exposure-tracking.dosimeter-readings",
          "text" : "Active Dosimeter Readings Available",
          "type" : "boolean"
        },
        {
          "linkId" : "exposure-tracking.pre-event-dose-rate",
          "text" : "Pre-Event Dose Rate (mSv/hr)",
          "type" : "decimal"
        },
        {
          "linkId" : "exposure-tracking.peak-dose-rate",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "73536-5",
              "display" : "Radiation dose"
            }
          ],
          "text" : "Peak Dose Rate During Event (mSv/hr)",
          "type" : "decimal"
        },
        {
          "linkId" : "exposure-tracking.total-event-dose",
          "text" : "Total Event Dose (mSv)",
          "type" : "decimal"
        },
        {
          "linkId" : "exposure-tracking.dose-within-limits",
          "text" : "Dose Within Permissible Limits",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "event-conclusion",
      "text" : "Event Conclusion",
      "type" : "group",
      "item" : [
        {
          "linkId" : "event-conclusion.all-clear-time",
          "text" : "All Clear Time (UTC)",
          "type" : "dateTime"
        },
        {
          "linkId" : "event-conclusion.shelter-exit-time",
          "text" : "Shelter Exit Time (UTC)",
          "type" : "dateTime"
        },
        {
          "linkId" : "event-conclusion.total-shelter-duration",
          "text" : "Total Time in Shelter (hours)",
          "type" : "decimal"
        },
        {
          "linkId" : "event-conclusion.crew-health-status",
          "text" : "Crew Health Status Post-Event",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "No symptoms reported"
            },
            {
              "valueString" : "Minor symptoms - monitoring"
            },
            {
              "valueString" : "Medical evaluation required"
            }
          ]
        },
        {
          "linkId" : "event-conclusion.notes",
          "text" : "Event Notes",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "data-delivery",
      "text" : "Data Delivery",
      "type" : "group",
      "item" : [
        {
          "linkId" : "data-delivery.archive",
          "text" : "Data Archive System",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ]
        }
      ]
    }
  ]
}

```
