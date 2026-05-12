# MEDB 1.14 Body Mass Measurement - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.14 Body Mass Measurement**

## Questionnaire: MEDB 1.14 Body Mass Measurement 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-14-body-mass | *Version*:0.5.12 |
| Active as of 2017-06-05 | *Computable Name*:MEDB114BodyMass |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for body mass measurement tracking. 

 
To track body mass changes during spaceflight as an indicator of nutritional status. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB114BodyMassQuestionnaire",
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
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-14-body-mass",
  "version" : "0.5.12",
  "name" : "MEDB114BodyMass",
  "title" : "MEDB 1.14 Body Mass Measurement",
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
  "description" : "NASA Medical Requirements Integration Document for body mass measurement tracking.",
  "purpose" : "To track body mass changes during spaceflight as an indicator of nutritional status.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MEDB 1.14 Body Mass Measurement"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preflight-measurements",
      "text" : "Preflight Measurements",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-measurements.date",
          "text" : "Measurement Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-measurements.body-mass",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "29463-7",
              "display" : "Body weight"
            }
          ],
          "text" : "Body Mass (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-measurements.height",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8302-2",
              "display" : "Body height"
            }
          ],
          "text" : "Height (cm)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-measurements.bmi",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "39156-5",
              "display" : "Body mass index (BMI)"
            }
          ],
          "text" : "BMI (kg/m²)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "inflight-measurements",
      "text" : "In-Flight Measurements",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inflight-measurements.schedule",
          "text" : "Measurement Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Weekly"
            }
          ]
        },
        {
          "linkId" : "inflight-measurements.flight-day",
          "text" : "Flight Day",
          "type" : "integer"
        },
        {
          "linkId" : "inflight-measurements.body-mass",
          "text" : "Body Mass (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "inflight-measurements.change-from-preflight",
          "text" : "Change from Preflight (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "inflight-measurements.mass-loss-alert",
          "text" : "Mass Loss Alert (>5%)",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "postflight-measurements",
      "text" : "Postflight Measurements",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-measurements.body-mass",
          "text" : "Body Mass (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-measurements.total-change",
          "text" : "Total Mass Change (%)",
          "type" : "decimal"
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
          "text" : "Data Archive",
          "type" : "choice",
          "answerOption" : [
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
