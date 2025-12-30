# Space Exercise Modality Code System - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Modality Code System**

## CodeSystem: Space Exercise Modality Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:SpaceExerciseModalityCS |

 
Spaceflight-specific exercise modalities used in microgravity and partial gravity environments (e.g., ISS treadmill, ARED resistive training, artificial gravity). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceExerciseModalityVS](ValueSet-space-exercise-modality-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-exercise-modality-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs",
  "version" : "0.5.6",
  "name" : "SpaceExerciseModalityCS",
  "title" : "Space Exercise Modality Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Spaceflight-specific exercise modalities used in microgravity and partial gravity environments (e.g., ISS treadmill, ARED resistive training, artificial gravity).",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "treadmill",
      "display" : "Treadmill running in microgravity",
      "definition" : "Running or walking on a vibration-isolated treadmill with harness-based body-weight simulation."
    },
    {
      "code" : "cycle-ergometer",
      "display" : "Cycle ergometer (CEVIS or equivalent)",
      "definition" : "Seated or supine cycling on a vibration-isolated ergometer with adjustable resistance."
    },
    {
      "code" : "ared-resistive",
      "display" : "ARED resistive exercise",
      "definition" : "Heavy-load resistive exercise using a flywheel or vacuum-based Advanced Resistive Exercise Device."
    },
    {
      "code" : "resistive-squat",
      "display" : "Resistive squats",
      "definition" : "Squat movements using ARED or equivalent resistive hardware."
    },
    {
      "code" : "resistive-deadlift",
      "display" : "Resistive deadlifts",
      "definition" : "Deadlift movements using ARED or equivalent resistive hardware."
    },
    {
      "code" : "resistive-calfraise",
      "display" : "Resistive calf raises",
      "definition" : "Calf-raise movements using ARED or equivalent resistive hardware."
    },
    {
      "code" : "ag-centrifuge",
      "display" : "Artificial gravity centrifuge exercise",
      "definition" : "Exercise performed in a short-radius or long-radius centrifuge providing partial or full gravity."
    },
    {
      "code" : "elastic-band",
      "display" : "Elastic band exercise",
      "definition" : "Portable elastic-band or bungee-based resistive training."
    },
    {
      "code" : "body-weight-sim",
      "display" : "Body-weight simulation harness",
      "definition" : "Exercise performed with harness-based body-weight simulation, typically on a treadmill."
    }
  ]
}

```
