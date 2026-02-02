# NASA Schedule Offset Notation - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Schedule Offset Notation**

## CodeSystem: NASA Schedule Offset Notation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:NASAScheduleOffsetCS |

 
L-minus and R-plus notation codes for mission timeline scheduling. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAPostflightOffsetVS](ValueSet-nasa-postflight-offset-vs.md)
* [NASAPreflightOffsetVS](ValueSet-nasa-preflight-offset-vs.md)
* [NASAScheduleOffsetVS](ValueSet-nasa-schedule-offset-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-schedule-offset-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
  "version" : "0.5.8",
  "name" : "NASAScheduleOffsetCS",
  "title" : "NASA Schedule Offset Notation",
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
  "description" : "L-minus and R-plus notation codes for mission timeline scheduling.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 24,
  "concept" : [
    {
      "code" : "L-24m",
      "display" : "L-24 months",
      "definition" : "24 months before launch"
    },
    {
      "code" : "L-19m",
      "display" : "L-19 months",
      "definition" : "19 months before launch"
    },
    {
      "code" : "L-12m",
      "display" : "L-12 months",
      "definition" : "12 months before launch"
    },
    {
      "code" : "L-9m",
      "display" : "L-9 months",
      "definition" : "9 months before launch"
    },
    {
      "code" : "L-6m",
      "display" : "L-6 months",
      "definition" : "6 months before launch"
    },
    {
      "code" : "L-180d",
      "display" : "L-180 days",
      "definition" : "180 days before launch"
    },
    {
      "code" : "L-90d",
      "display" : "L-90 days",
      "definition" : "90 days before launch"
    },
    {
      "code" : "L-45d",
      "display" : "L-45 days",
      "definition" : "45 days before launch"
    },
    {
      "code" : "L-30d",
      "display" : "L-30 days",
      "definition" : "30 days before launch"
    },
    {
      "code" : "L-15d",
      "display" : "L-15 days",
      "definition" : "15 days before launch"
    },
    {
      "code" : "L-10d",
      "display" : "L-10 days",
      "definition" : "10 days before launch"
    },
    {
      "code" : "L-7d",
      "display" : "L-7 days",
      "definition" : "7 days before launch"
    },
    {
      "code" : "L-3d",
      "display" : "L-3 days",
      "definition" : "3 days before launch"
    },
    {
      "code" : "L-0",
      "display" : "L-0",
      "definition" : "Launch day"
    },
    {
      "code" : "R-0",
      "display" : "R+0",
      "definition" : "Return/landing day"
    },
    {
      "code" : "R-3d",
      "display" : "R+3 days",
      "definition" : "3 days after return"
    },
    {
      "code" : "R-5d",
      "display" : "R+5 days",
      "definition" : "5 days after return"
    },
    {
      "code" : "R-7d",
      "display" : "R+7 days",
      "definition" : "7 days after return"
    },
    {
      "code" : "R-14d",
      "display" : "R+14 days",
      "definition" : "14 days after return"
    },
    {
      "code" : "R-30d",
      "display" : "R+30 days",
      "definition" : "30 days after return"
    },
    {
      "code" : "R-45d",
      "display" : "R+45 days",
      "definition" : "45 days after return"
    },
    {
      "code" : "R-60d",
      "display" : "R+60 days",
      "definition" : "60 days after return"
    },
    {
      "code" : "FD-21",
      "display" : "Flight Day 21",
      "definition" : "21st day of flight"
    },
    {
      "code" : "FD-mid",
      "display" : "Mid-Mission",
      "definition" : "Midpoint of mission duration"
    }
  ]
}

```
