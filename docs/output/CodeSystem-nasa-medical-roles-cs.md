# NASA Medical Personnel Roles - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Medical Personnel Roles**

## CodeSystem: NASA Medical Personnel Roles 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs | *Version*:0.5.10 |
| Active as of 2026-03-12 | *Computable Name*:NASAMedicalRolesCS |

 
Personnel roles involved in NASA medical requirements. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ISSCrewmemberTypeVS](ValueSet-iss-crewmember-type-vs.md)
* [NASAMedicalRolesVS](ValueSet-nasa-medical-roles-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-medical-roles-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
  "version" : "0.5.10",
  "name" : "NASAMedicalRolesCS",
  "title" : "NASA Medical Personnel Roles",
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
  "description" : "Personnel roles involved in NASA medical requirements.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "flight-surgeon",
      "display" : "Flight Surgeon",
      "definition" : "NASA physician responsible for crew medical care and flight certification."
    },
    {
      "code" : "crew-surgeon",
      "display" : "Crew Surgeon",
      "definition" : "Flight surgeon assigned to a specific crew."
    },
    {
      "code" : "rho",
      "display" : "Radiation Health Officer",
      "definition" : "Officer responsible for radiation exposure monitoring and risk assessment."
    },
    {
      "code" : "bhp-specialist",
      "display" : "BHP Specialist",
      "definition" : "Behavioral Health and Performance specialist (psychiatrist or psychologist)."
    },
    {
      "code" : "ascr-specialist",
      "display" : "ASCR Specialist",
      "definition" : "Astronaut Strength, Conditioning, and Rehabilitation specialist."
    },
    {
      "code" : "instructor",
      "display" : "Instructor",
      "definition" : "Training instructor for medical procedures."
    },
    {
      "code" : "crewmember",
      "display" : "Crewmember",
      "definition" : "ISS or mission crewmember subject to medical requirements."
    },
    {
      "code" : "ame",
      "display" : "Aviation Medical Examiner",
      "definition" : "Designated medical examiner for aviation/astronaut medical certification."
    },
    {
      "code" : "landing-team",
      "display" : "Landing Team",
      "definition" : "Personnel involved in crew recovery at landing site."
    }
  ]
}

```
