# Space Treatment Procedures - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Treatment Procedures**

## CodeSystem: Space Treatment Procedures (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-treatment-procedures-cs | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceTreatmentProceduresCodeSystem |

 
CodeSystem for space treatment procedures not found in SNOMED CT 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-treatment-procedures-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-treatment-procedures-cs",
  "version" : "0.4.2",
  "name" : "SpaceTreatmentProceduresCodeSystem",
  "title" : "Space Treatment Procedures",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-24T12:48:12-07:00",
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
  "description" : "CodeSystem for space treatment procedures not found in SNOMED CT",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "in-flight-medical-care",
      "display" : "In-flight Medical Care",
      "definition" : "Medical care provided during spaceflight"
    },
    {
      "code" : "space-surgery",
      "display" : "Space Surgery",
      "definition" : "Surgical procedures adapted for the microgravity environment"
    },
    {
      "code" : "space-anesthesia",
      "display" : "Space Anesthesia",
      "definition" : "Administration of anesthesia in the microgravity environment"
    },
    {
      "code" : "fluid-resuscitation-microgravity",
      "display" : "Fluid Resuscitation in Microgravity",
      "definition" : "Administration of intravenous fluids in microgravity conditions"
    },
    {
      "code" : "countermeasure-exercise",
      "display" : "Countermeasure Exercise",
      "definition" : "Prescribed exercise to prevent physiological deconditioning during spaceflight"
    },
    {
      "code" : "artificial-gravity-therapy",
      "display" : "Artificial Gravity Therapy",
      "definition" : "Use of artificial gravity to prevent physiological deconditioning"
    },
    {
      "code" : "pharmaceutical-stability-space",
      "display" : "Pharmaceutical Stability in Space",
      "definition" : "Assessment and maintenance of medication stability in the space environment"
    },
    {
      "code" : "radiation-protection-procedures",
      "display" : "Radiation Protection Procedures",
      "definition" : "Methods to protect astronauts from space radiation"
    },
    {
      "code" : "LBNP-therapy",
      "display" : "Lower Body Negative Pressure Therapy",
      "definition" : "Use of lower body negative pressure to prevent cardiovascular deconditioning"
    },
    {
      "code" : "space-rehabilitation",
      "display" : "Space Rehabilitation",
      "definition" : "Rehabilitation techniques used during spaceflight to prevent or treat physiological deconditioning"
    },
    {
      "code" : "EVA-medical-contingency",
      "display" : "EVA Medical Contingency Management",
      "definition" : "Management of medical emergencies during extravehicular activities"
    },
    {
      "code" : "hyperbaric-oxygen-therapy-space",
      "display" : "Hyperbaric Oxygen Therapy in Space",
      "definition" : "Administration of hyperbaric oxygen therapy in the space environment"
    },
    {
      "code" : "microgravity-trauma-management",
      "display" : "Microgravity Trauma Management",
      "definition" : "Management of traumatic injuries in the microgravity environment"
    }
  ]
}

```
