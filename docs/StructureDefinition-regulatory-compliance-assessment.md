# Regulatory Compliance Assessment - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Regulatory Compliance Assessment**

## Resource Profile: Regulatory Compliance Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance-assessment | *Version*:0.5.2 |
| Draft as of 2025-12-29 | *Computable Name*:RegulatoryComplianceAssessment |

 
Assessment of compliance with diving and space medicine regulatory standards 

**Usages:**

* Refer to this Profile: [Regulatory Compliance](StructureDefinition-regulatory-compliance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/regulatory-compliance-assessment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-regulatory-compliance-assessment.csv), [Excel](StructureDefinition-regulatory-compliance-assessment.xlsx), [Schematron](StructureDefinition-regulatory-compliance-assessment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "regulatory-compliance-assessment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance-assessment",
  "version" : "0.5.2",
  "name" : "RegulatoryComplianceAssessment",
  "title" : "Regulatory Compliance Assessment",
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
  "description" : "Assessment of compliance with diving and space medicine regulatory standards",
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
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/regulatory-standards"
        }
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
        "id" : "Observation.component:complianceStatus",
        "path" : "Observation.component",
        "sliceName" : "complianceStatus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:complianceStatus.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs",
              "code" : "compliance-status"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:complianceStatus.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:standardsVersion",
        "path" : "Observation.component",
        "sliceName" : "standardsVersion",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:standardsVersion.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs",
              "code" : "standards-version"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:standardsVersion.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Observation.component:certificationLevel",
        "path" : "Observation.component",
        "sliceName" : "certificationLevel",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:certificationLevel.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs",
              "code" : "certification-level"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:certificationLevel.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.component:expirationDate",
        "path" : "Observation.component",
        "sliceName" : "expirationDate",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:expirationDate.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs",
              "code" : "expiration-date"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:expirationDate.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:restrictionsLimitations",
        "path" : "Observation.component",
        "sliceName" : "restrictionsLimitations",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:restrictionsLimitations.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs",
              "code" : "restrictions-limitations"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:restrictionsLimitations.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
