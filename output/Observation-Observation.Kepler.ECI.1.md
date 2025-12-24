# Observation - Orbital Elements - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Orbital Elements**

## Example Observation: Observation - Orbital Elements

**status**: Final

**code**: Satellite Observation

**method**: Earth Centered Inertial

> **component****code**:Eccentricity**value**: 0.6

> **component****code**:Semimajor Axis**value**: 2.7

> **component****code**:Angle of Inclination**value**: 53 deg

> **component****code**:Longitude of the ascending node**value**: 0 deg

> **component****code**:Argument of Periapsis**value**: 22.1 deg

> **component****code**:True anomaly**value**: 30 s



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Observation.Kepler.ECI.1",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "ECI",
        "display" : "Satellite Observation"
      }
    ]
  },
  "method" : {
    "coding" : [
      {
        "code" : "ECI",
        "display" : "Earth Centered Inertial"
      }
    ],
    "text" : "Earth Centered Inertial"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "code" : "e",
            "display" : "Eccentricity"
          }
        ],
        "text" : "Eccentricity"
      },
      "valueQuantity" : {
        "value" : 0.6
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "a",
            "display" : "Semimajor Axis"
          }
        ],
        "text" : "Semimajor Axis"
      },
      "valueQuantity" : {
        "value" : 2.7
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "i",
            "display" : "Inclination"
          }
        ],
        "text" : "Angle of Inclination"
      },
      "valueQuantity" : {
        "value" : 53,
        "unit" : "deg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "Ω",
            "display" : "Longitude of the ascending node"
          }
        ],
        "text" : "Longitude of the ascending node"
      },
      "valueQuantity" : {
        "value" : 0,
        "unit" : "deg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "ω",
            "display" : "Periapsis"
          }
        ],
        "text" : "Argument of Periapsis"
      },
      "valueQuantity" : {
        "value" : 22.1,
        "unit" : "deg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "θ",
            "display" : "True Anomaly"
          }
        ],
        "text" : "True anomaly"
      },
      "valueQuantity" : {
        "value" : 30,
        "unit" : "s"
      }
    }
  ]
}

```
