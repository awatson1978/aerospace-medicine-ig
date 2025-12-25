# Space Environmental Factors - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Environmental Factors**

## CodeSystem: Space Environmental Factors (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-environmental-factors-cs | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceEnvironmentalFactorsCodeSystem |

 
CodeSystem for space environmental factors not found in SNOMED CT 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-environmental-factors-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-environmental-factors-cs",
  "version" : "0.4.2",
  "name" : "SpaceEnvironmentalFactorsCodeSystem",
  "title" : "Space Environmental Factors",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-24T17:35:27-07:00",
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
  "description" : "CodeSystem for space environmental factors not found in SNOMED CT",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "microgravity",
      "display" : "Microgravity",
      "definition" : "A state of very weak gravity experienced in spacecraft in orbit, where the apparent weight is significantly less than on Earth but not completely zero"
    },
    {
      "code" : "zero-gravity",
      "display" : "Zero Gravity",
      "definition" : "The condition of apparent weightlessness experienced in freefall or in space"
    },
    {
      "code" : "air-quality-space",
      "display" : "Space Habitat Air Quality",
      "definition" : "The condition of air within confined spacecraft or space habitats, including levels of pollutants, CO2, and other gases"
    },
    {
      "code" : "space-radiation",
      "display" : "Space Radiation",
      "definition" : "Radiation experienced in the space environment, including galactic cosmic rays, solar particle events, and trapped radiation"
    },
    {
      "code" : "vacuum-environment",
      "display" : "Vacuum Environment",
      "definition" : "The near-vacuum conditions of space that pose risks to human health and spacecraft systems"
    },
    {
      "code" : "cabin-pressure",
      "display" : "Cabin Pressure",
      "definition" : "The atmospheric pressure maintained within spacecraft habitats"
    },
    {
      "code" : "temperature-extremes",
      "display" : "Temperature Extremes",
      "definition" : "The extreme hot and cold temperatures experienced in space depending on exposure to sunlight or shadow"
    },
    {
      "code" : "lunar-dust",
      "display" : "Lunar Dust",
      "definition" : "Fine particles of lunar regolith that can cause respiratory and equipment problems during lunar missions"
    },
    {
      "code" : "martian-dust",
      "display" : "Martian Dust",
      "definition" : "Fine particles of Martian regolith that can cause respiratory and equipment problems during Mars missions"
    },
    {
      "code" : "space-debris",
      "display" : "Space Debris",
      "definition" : "Artificial orbital debris that presents a collision hazard to spacecraft and astronauts during EVA"
    },
    {
      "code" : "confined-living-space",
      "display" : "Confined Living Space",
      "definition" : "The restricted living and working areas within spacecraft that can impact physical and psychological health"
    },
    {
      "code" : "galactic-cosmic-radiation",
      "display" : "Galactic Cosmic Radiation",
      "definition" : "High-energy particles originating outside the solar system that can penetrate spacecraft and human tissue"
    },
    {
      "code" : "solar-particle-events",
      "display" : "Solar Particle Events",
      "definition" : "Radiation from solar flares and coronal mass ejections that can pose acute radiation hazards"
    }
  ]
}

```
