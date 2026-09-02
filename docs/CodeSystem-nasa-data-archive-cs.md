# NASA Medical Data Archive Systems - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Data Archive Systems**

## CodeSystem: NASA Medical Data Archive Systems (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-data-archive-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NASADataArchiveCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Data archive and delivery systems for NASA medical data. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASADataArchiveVS](ValueSet-nasa-data-archive-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-data-archive-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-data-archive-cs",
  "version" : "0.7.0",
  "name" : "NASADataArchiveCS",
  "title" : "NASA Medical Data Archive Systems",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
