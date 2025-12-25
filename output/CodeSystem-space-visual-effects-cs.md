# Space Visual Effects - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Visual Effects**

## CodeSystem: Space Visual Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-visual-effects-cs | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceVisualEffectsCodeSystem |

 
CodeSystem for space visual effects not found in SNOMED CT 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-visual-effects-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-visual-effects-cs",
  "version" : "0.4.2",
  "name" : "SpaceVisualEffectsCodeSystem",
  "title" : "Space Visual Effects",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "CodeSystem for space visual effects not found in SNOMED CT",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "sans",
      "display" : "Spaceflight-Associated Neuro-ocular Syndrome",
      "definition" : "A constellation of ocular and brain findings in astronauts exposed to long-duration spaceflight, including optic disc edema, globe flattening, choroidal folds, and hyperopic shifts"
    },
    {
      "code" : "optic-disc-edema",
      "display" : "Optic Disc Edema",
      "definition" : "Swelling of the optic disc observed in astronauts during long-duration spaceflight"
    },
    {
      "code" : "posterior-globe-flattening",
      "display" : "Posterior Globe Flattening",
      "definition" : "Flattening of the posterior portion of the eye globe observed in astronauts during spaceflight"
    },
    {
      "code" : "choroidal-folds",
      "display" : "Choroidal Folds",
      "definition" : "Folds in the choroidal layer of the eye observed in astronauts during spaceflight"
    },
    {
      "code" : "hyperopic-shift",
      "display" : "Hyperopic Shift",
      "definition" : "A shift toward farsightedness observed in astronauts during spaceflight"
    },
    {
      "code" : "space-radiation-cataracts",
      "display" : "Space Radiation Cataracts",
      "definition" : "Cataracts resulting from exposure to space radiation"
    },
    {
      "code" : "light-flash-phenomenon",
      "display" : "Light Flash Phenomenon",
      "definition" : "Visual perception of flashes of light caused by cosmic rays interacting with the retina or visual cortex"
    },
    {
      "code" : "retinal-vascular-changes",
      "display" : "Retinal Vascular Changes",
      "definition" : "Changes in the blood vessels of the retina observed during spaceflight"
    }
  ]
}

```
