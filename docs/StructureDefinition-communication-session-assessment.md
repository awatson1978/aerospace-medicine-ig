# Communication Session Assessment - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Session Assessment**

## Resource Profile: Communication Session Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/communication-session-assessment | *Version*:0.5.2 |
| Draft as of 2025-12-29 | *Computable Name*:CommunicationSessionAssessment |

 
Assessment of communication system performance during underwater training 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/communication-session-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-communication-session-assessment.csv), [Excel](StructureDefinition-communication-session-assessment.xlsx), [Schematron](StructureDefinition-communication-session-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "communication-session-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/communication-session-assessment",
  "version" : "0.5.2",
  "name" : "CommunicationSessionAssessment",
  "title" : "Communication Session Assessment",
  "status" : "draft",
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "Assessment of communication system performance during underwater training",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "comm-assessment",
              "display" : "Communication Assessment"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/underwater-communication-system"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:signalStrength",
        "path" : "Observation.component",
        "sliceName" : "signalStrength",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:signalStrength.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "signal-strength"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:signalStrength.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:signalStrength.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:signalStrength.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "dB"
      },
      {
        "id" : "Observation.component:audioClarity",
        "path" : "Observation.component",
        "sliceName" : "audioClarity",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:audioClarity.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "audio-clarity"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:audioClarity.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:communicationReliability",
        "path" : "Observation.component",
        "sliceName" : "communicationReliability",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:communicationReliability.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "comm-reliability"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:communicationReliability.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:communicationReliability.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:communicationReliability.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "%"
      },
      {
        "id" : "Observation.component:emergencyResponseTime",
        "path" : "Observation.component",
        "sliceName" : "emergencyResponseTime",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:emergencyResponseTime.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "emergency-response-time"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:emergencyResponseTime.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:emergencyResponseTime.value[x].system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.component:emergencyResponseTime.value[x].code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "s"
      },
      {
        "id" : "Observation.component:securityAssessment",
        "path" : "Observation.component",
        "sliceName" : "securityAssessment",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:securityAssessment.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs",
              "code" : "security-assessment"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:securityAssessment.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
