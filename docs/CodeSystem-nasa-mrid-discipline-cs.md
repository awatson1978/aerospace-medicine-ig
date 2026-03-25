# NASA MRID Medical Disciplines - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA MRID Medical Disciplines**

## CodeSystem: NASA MRID Medical Disciplines 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:NASAMRIDDisciplineCS |

 
Medical disciplines categorizing NASA Medical Requirements Integration Documents. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NASAMRIDDisciplineVS](ValueSet-nasa-mrid-discipline-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nasa-mrid-discipline-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
  "version" : "0.5.12",
  "name" : "NASAMRIDDisciplineCS",
  "title" : "NASA MRID Medical Disciplines",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-25T00:24:16-05:00",
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
  "description" : "Medical disciplines categorizing NASA Medical Requirements Integration Documents.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "radiation",
      "display" : "Radiation",
      "definition" : "Radiation monitoring, dosimetry, and protection."
    },
    {
      "code" : "cardiovascular",
      "display" : "Cardiovascular",
      "definition" : "Cardiovascular assessment including ECG, stress testing, and blood pressure monitoring."
    },
    {
      "code" : "bone-muscle-exercise",
      "display" : "Bone, Muscle & Exercise",
      "definition" : "Musculoskeletal health, bone density, and exercise countermeasures."
    },
    {
      "code" : "behavioral",
      "display" : "Behavior and Performance",
      "definition" : "Psychological assessment, behavioral health, and cognitive performance."
    },
    {
      "code" : "environmental",
      "display" : "Environmental Health",
      "definition" : "Environmental monitoring including air quality, water quality, and microbiology."
    },
    {
      "code" : "neurovestibular",
      "display" : "Neurovestibular",
      "definition" : "Balance, vestibular function, and spatial orientation assessment."
    },
    {
      "code" : "ophthalmology",
      "display" : "Ophthalmology",
      "definition" : "Eye examinations, visual acuity, and SANS monitoring."
    },
    {
      "code" : "audiology",
      "display" : "Audiology",
      "definition" : "Hearing assessment and acoustic protection."
    },
    {
      "code" : "dental",
      "display" : "Dental",
      "definition" : "Dental examinations and oral health."
    },
    {
      "code" : "laboratory",
      "display" : "Laboratory Medicine",
      "definition" : "Clinical laboratory testing and screening."
    },
    {
      "code" : "physical-examination",
      "display" : "Physical Examination",
      "definition" : "Comprehensive physical examinations and health status evaluations."
    },
    {
      "code" : "eva-medical",
      "display" : "EVA Medical",
      "definition" : "Medical monitoring and support for extravehicular activities."
    },
    {
      "code" : "reconditioning",
      "display" : "Reconditioning",
      "definition" : "Post-flight rehabilitation and reconditioning."
    }
  ]
}

```
