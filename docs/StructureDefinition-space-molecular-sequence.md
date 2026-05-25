# Space Molecular Sequence - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Molecular Sequence**

## Resource Profile: Space Molecular Sequence 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-molecular-sequence | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceMolecularSequence |

 
Molecular sequence data from astronaut genomic, transcriptomic, or proteomic analysis 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-molecular-sequence)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-molecular-sequence.csv), [Excel](StructureDefinition-space-molecular-sequence.xlsx), [Schematron](StructureDefinition-space-molecular-sequence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-molecular-sequence",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-molecular-sequence",
  "version" : "0.6.0",
  "name" : "SpaceMolecularSequence",
  "title" : "Space Molecular Sequence",
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
  "description" : "Molecular sequence data from astronaut genomic, transcriptomic, or proteomic analysis",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MolecularSequence",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MolecularSequence",
        "path" : "MolecularSequence"
      },
      {
        "id" : "MolecularSequence.type",
        "path" : "MolecularSequence.type",
        "short" : "Sequence type (dna, rna, aa)",
        "mustSupport" : true
      },
      {
        "id" : "MolecularSequence.patient",
        "path" : "MolecularSequence.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MolecularSequence.referenceSeq",
        "path" : "MolecularSequence.referenceSeq",
        "short" : "Reference sequence for alignment",
        "mustSupport" : true
      }
    ]
  }
}

```
