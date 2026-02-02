# MR087S EVA Prebreathe Protocol - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR087S EVA Prebreathe Protocol**

## Questionnaire: MR087S EVA Prebreathe Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr087s-eva-prebreathe | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MR087SEVAPrebreathe |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for EVA prebreathe protocol. Tracks oxygen prebreathe procedures to prevent decompression sickness. 

 
To document execution of EVA prebreathe protocol for decompression sickness prevention. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR087SEVAPrebreathQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr087s-eva-prebreathe",
  "version" : "0.5.8",
  "name" : "MR087SEVAPrebreathe",
  "title" : "MR087S EVA Prebreathe Protocol",
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
  "description" : "NASA Medical Requirements Integration Document for EVA prebreathe protocol. Tracks oxygen prebreathe procedures to prevent decompression sickness.",
  "purpose" : "To document execution of EVA prebreathe protocol for decompression sickness prevention.",
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
              "valueString" : "MR087S EVA Prebreathe Protocol"
            }
          ]
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "To denitrogenate crewmembers prior to EVA to reduce risk of decompression sickness (DCS) when transitioning from cabin pressure to suit pressure."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "prebreathe-execution",
      "text" : "Prebreathe Protocol Execution",
      "type" : "group",
      "item" : [
        {
          "linkId" : "prebreathe-execution.eva-number",
          "text" : "EVA Number",
          "type" : "string"
        },
        {
          "linkId" : "prebreathe-execution.protocol-type",
          "text" : "Prebreathe Protocol Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Campout Protocol"
            },
            {
              "valueString" : "ISLE Protocol"
            },
            {
              "valueString" : "Exercise Prebreathe Protocol"
            },
            {
              "valueString" : "Mask Prebreathe"
            }
          ]
        },
        {
          "linkId" : "prebreathe-execution.cabin-pressure-start",
          "text" : "Cabin Pressure at Start (psia)",
          "type" : "decimal"
        },
        {
          "linkId" : "prebreathe-execution.start-time",
          "text" : "Prebreathe Start Time (GMT)",
          "type" : "dateTime"
        },
        {
          "linkId" : "prebreathe-execution.end-time",
          "text" : "Prebreathe End Time (GMT)",
          "type" : "dateTime"
        },
        {
          "linkId" : "prebreathe-execution.total-duration",
          "text" : "Total Prebreathe Duration (minutes)",
          "type" : "integer"
        },
        {
          "linkId" : "prebreathe-execution.oxygen-source",
          "text" : "Oxygen Source",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "EMU (in-suit)"
            },
            {
              "valueString" : "Mask with station O2"
            },
            {
              "valueString" : "Airlock/Crewlock"
            }
          ]
        },
        {
          "linkId" : "prebreathe-execution.exercise-performed",
          "text" : "Exercise Performed During Prebreathe",
          "type" : "boolean"
        },
        {
          "linkId" : "prebreathe-execution.interruptions",
          "text" : "Prebreathe Interruptions",
          "type" : "boolean"
        },
        {
          "linkId" : "prebreathe-execution.interruption-duration",
          "text" : "Total Interruption Duration (minutes)",
          "type" : "integer",
          "enableWhen" : [
            {
              "question" : "prebreathe-execution.interruptions",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "prebreathe-execution.protocol-complete",
          "text" : "Protocol Completed Successfully",
          "type" : "boolean"
        },
        {
          "linkId" : "prebreathe-execution.flight-surgeon-approval",
          "text" : "Flight Surgeon Approval for EVA",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "notes",
      "text" : "Protocol Notes",
      "type" : "group",
      "item" : [
        {
          "linkId" : "notes.deviations",
          "text" : "Protocol Deviations",
          "type" : "text"
        },
        {
          "linkId" : "notes.symptoms",
          "text" : "Symptoms During Prebreathe",
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
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ]
        }
      ]
    }
  ]
}

```
