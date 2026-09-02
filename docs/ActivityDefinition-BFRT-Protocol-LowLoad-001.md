# Low-Load BFRT Protocol - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Low-Load BFRT Protocol**

## ActivityDefinition: Low-Load BFRT Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ActivityDefinition/BFRT-Protocol-LowLoad-001 | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:LowLoadBFRTProtocol |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week 

* **Code:**: **Id:**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): BFRT-Protocol-LowLoad-001
* **Code:**: **Version:**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 0.7.0
* **Code:**: **Date (date last changed):**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 2026-09-02 13:24:45-0500
* **Code:**: **Publisher (steward):**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): MITRE
* **Code:**: **Description:**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): 3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week
* **Code:**: **Copyright:**
  * **system:**[https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs](CodeSystem-bfrt-protocol-cs.md)**code:**low-load-bfrt**display:**Low-Load BFRT (20-30% 1RM): Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.



## Resource Content

```json
{
  "resourceType" : "ActivityDefinition",
  "id" : "BFRT-Protocol-LowLoad-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bfrt-activity-definition"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ActivityDefinition/BFRT-Protocol-LowLoad-001",
  "version" : "0.7.0",
  "name" : "LowLoadBFRTProtocol",
  "title" : "Low-Load BFRT Protocol for Lower Extremity",
  "status" : "active",
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
  "description" : "3 sets x 15 reps at 20-30% 1RM, 60-80% limb occlusion pressure, 3 sessions per week",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs",
        "code" : "low-load-bfrt",
        "display" : "Low-Load BFRT (20-30% 1RM)"
      }
    ]
  }
}

```
