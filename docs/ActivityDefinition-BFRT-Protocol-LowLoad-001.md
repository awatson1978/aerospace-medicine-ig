# Low-Load BFRT Protocol - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Low-Load BFRT Protocol**

## ActivityDefinition: Low-Load BFRT Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ActivityDefinition/BFRT-Protocol-LowLoad-001 | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:LowLoadBFRTProtocol |

 
3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week 

* **Code:**: **Id:**
  * **system:**[https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): BFRT-Protocol-LowLoad-001
* **Code:**: **Version:**
  * **system:**[https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 0.6.0
* **Code:**: **Date (date last changed):**
  * **system:**[https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 2026-05-25 15:07:02-0600
* **Code:**: **Publisher (steward):**
  * **system:**[https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): MITRE
* **Code:**: **Description:**
  * **system:**[https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "BFRT-Protocol-LowLoad-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/bfrt-activity-definition"
    ]
  },
  "url" : "https://mitre.org/fhir/space-health/ActivityDefinition/BFRT-Protocol-LowLoad-001",
  "version" : "0.6.0",
  "name" : "LowLoadBFRTProtocol",
  "title" : "Low-Load BFRT Protocol for Lower Extremity",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week",
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-protocol-cs",
        "code" : "low-load-bfrt",
        "display" : "Low-Load BFRT (20-30% 1RM)"
      }
    ]
  }
}

```
