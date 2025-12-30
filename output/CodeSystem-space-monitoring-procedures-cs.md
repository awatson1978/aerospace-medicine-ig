# Space Monitoring Procedures - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Monitoring Procedures**

## CodeSystem: Space Monitoring Procedures (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-monitoring-procedures-cs | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceMonitoringProceduresCodeSystem |

 
CodeSystem for space monitoring procedures not found in SNOMED CT 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-monitoring-procedures-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-monitoring-procedures-cs",
  "version" : "0.5.5",
  "name" : "SpaceMonitoringProceduresCodeSystem",
  "title" : "Space Monitoring Procedures",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "CodeSystem for space monitoring procedures not found in SNOMED CT",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [
    {
      "code" : "telemedicine",
      "display" : "Space Telemedicine",
      "definition" : "The remote diagnosis and treatment of patients in space by means of telecommunications technology"
    },
    {
      "code" : "remote-monitoring",
      "display" : "Remote Physiological Monitoring",
      "definition" : "Continuous or periodic monitoring of astronaut physiological parameters from a distance"
    },
    {
      "code" : "biomonitoring",
      "display" : "Space Biomonitoring",
      "definition" : "The measurement and monitoring of biological parameters in the space environment"
    },
    {
      "code" : "health-monitoring",
      "display" : "Space Health Monitoring",
      "definition" : "Systematic monitoring of astronaut health status during spaceflight"
    },
    {
      "code" : "remote-consultation",
      "display" : "Remote Medical Consultation",
      "definition" : "Medical consultation provided to astronauts from Earth-based physicians"
    },
    {
      "code" : "wearable-monitoring",
      "display" : "Wearable Health Monitoring",
      "definition" : "Use of wearable devices to continuously monitor astronaut health parameters"
    },
    {
      "code" : "non-invasive-monitoring",
      "display" : "Non-invasive Health Monitoring",
      "definition" : "Monitoring health parameters without invasive procedures"
    },
    {
      "code" : "autonomous-medical-care",
      "display" : "Autonomous Medical Care",
      "definition" : "Medical care provided with limited or delayed input from Earth, necessitated by communication delays"
    },
    {
      "code" : "telediagnostics",
      "display" : "Space Telediagnostics",
      "definition" : "Remote diagnostic procedures conducted on astronauts during spaceflight"
    },
    {
      "code" : "tele-ultrasound",
      "display" : "Tele-ultrasound",
      "definition" : "Remote ultrasound examination guidance provided to astronauts from Earth-based physicians"
    },
    {
      "code" : "medical-decision-support",
      "display" : "Medical Decision Support Systems",
      "definition" : "Computer systems that assist in medical decision-making during spaceflight"
    },
    {
      "code" : "crew-self-monitoring",
      "display" : "Crew Self-Monitoring",
      "definition" : "Monitoring procedures performed by astronauts on themselves or crewmates"
    }
  ]
}

```
