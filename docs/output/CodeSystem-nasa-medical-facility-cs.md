# NASA Medical Facility Locations - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Facility Locations**

## CodeSystem: NASA Medical Facility Locations 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:NASAMedicalFacilityCS |

 
Medical testing facility locations for NASA medical requirements. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAMedicalFacilityVS](ValueSet-nasa-medical-facility-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-medical-facility-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
  "version" : "0.5.10",
  "name" : "NASAMedicalFacilityCS",
  "title" : "NASA Medical Facility Locations",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-12T10:22:25-05:00",
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
  "description" : "Medical testing facility locations for NASA medical requirements.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "jsc",
      "display" : "Johnson Space Center",
      "definition" : "NASA Johnson Space Center, Houston, Texas."
    },
    {
      "code" : "ksc",
      "display" : "Kennedy Space Center",
      "definition" : "NASA Kennedy Space Center, Florida."
    },
    {
      "code" : "russia-gctc",
      "display" : "Gagarin Cosmonaut Training Center",
      "definition" : "Russian cosmonaut training center, Star City."
    },
    {
      "code" : "russia-ibmp",
      "display" : "Institute for Biomedical Problems",
      "definition" : "Russian Institute for Biomedical Problems, Moscow."
    },
    {
      "code" : "esa-eac",
      "display" : "European Astronaut Centre",
      "definition" : "ESA European Astronaut Centre, Cologne, Germany."
    },
    {
      "code" : "jaxa-tsukuba",
      "display" : "JAXA Tsukuba Space Center",
      "definition" : "JAXA facility in Tsukuba, Japan."
    },
    {
      "code" : "csa-stjohn",
      "display" : "CSA St. John's",
      "definition" : "Canadian Space Agency facility."
    },
    {
      "code" : "iss",
      "display" : "International Space Station",
      "definition" : "On-orbit International Space Station."
    },
    {
      "code" : "srdl",
      "display" : "Space Radiation Dosimetry Laboratory",
      "definition" : "NASA facility for radiation dosimetry analysis."
    }
  ]
}

```
