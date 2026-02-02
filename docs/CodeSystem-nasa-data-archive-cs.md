# NASA Medical Data Archive Systems - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Data Archive Systems**

## CodeSystem: NASA Medical Data Archive Systems 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:NASADataArchiveCS |

 
Data archive and delivery systems for NASA medical data. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASADataArchiveVS](ValueSet-nasa-data-archive-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-data-archive-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
  "version" : "0.5.8",
  "name" : "NASADataArchiveCS",
  "title" : "NASA Medical Data Archive Systems",
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
  "description" : "Data archive and delivery systems for NASA medical data.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "mmis",
      "display" : "Medical Mission Information System",
      "definition" : "Primary NASA medical information system for crew health records."
    },
    {
      "code" : "areas",
      "display" : "Astronaut Radiation Exposure Assessment System",
      "definition" : "Protected database for astronaut radiation exposure records."
    },
    {
      "code" : "meme",
      "display" : "Medical Equipment Management Environment",
      "definition" : "System for managing medical equipment and supplies."
    },
    {
      "code" : "pacs",
      "display" : "Picture Archiving and Communication System",
      "definition" : "System for storing and retrieving medical images."
    },
    {
      "code" : "emr",
      "display" : "Electronic Medical Record",
      "definition" : "Astronaut electronic medical record system."
    }
  ]
}

```
