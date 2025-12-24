# Diving and Space Medicine Regulatory Compliance - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving and Space Medicine Regulatory Compliance**

## CodeSystem: Diving and Space Medicine Regulatory Compliance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/regulatory-compliance-cs | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:RegulatoryComplianceCS |

 
Regulatory standards and compliance codes for diving and space medicine 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RegulatoryStandards](ValueSet-regulatory-standards.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "regulatory-compliance-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/regulatory-compliance-cs",
  "version" : "0.4.2",
  "name" : "RegulatoryComplianceCS",
  "title" : "Diving and Space Medicine Regulatory Compliance",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Regulatory standards and compliance codes for diving and space medicine",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 21,
  "concept" : [
    {
      "code" : "noaa-diving-manual",
      "display" : "NOAA Diving Manual",
      "definition" : "NOAA Diving Manual standards compliance"
    },
    {
      "code" : "noaa-medical-standards",
      "display" : "NOAA Medical Standards",
      "definition" : "NOAA diving medical standards"
    },
    {
      "code" : "noaa-training-standards",
      "display" : "NOAA Training Standards",
      "definition" : "NOAA diver training standards"
    },
    {
      "code" : "noaa-equipment-standards",
      "display" : "NOAA Equipment Standards",
      "definition" : "NOAA diving equipment standards"
    },
    {
      "code" : "osha-commercial-diving",
      "display" : "OSHA Commercial Diving",
      "definition" : "OSHA 29 CFR 1910 Subpart T compliance"
    },
    {
      "code" : "osha-medical-requirements",
      "display" : "OSHA Medical Requirements",
      "definition" : "OSHA diving medical requirements"
    },
    {
      "code" : "osha-safety-standards",
      "display" : "OSHA Safety Standards",
      "definition" : "OSHA diving safety standards"
    },
    {
      "code" : "aaus-scientific-diving",
      "display" : "AAUS Scientific Diving",
      "definition" : "American Academy of Underwater Sciences standards"
    },
    {
      "code" : "aaus-training",
      "display" : "AAUS Training Standards",
      "definition" : "AAUS diver training certification"
    },
    {
      "code" : "aaus-medical",
      "display" : "AAUS Medical Standards",
      "definition" : "AAUS medical fitness requirements"
    },
    {
      "code" : "nasa-nbl-operations",
      "display" : "NASA NBL Operations",
      "definition" : "NASA Neutral Buoyancy Laboratory operating procedures"
    },
    {
      "code" : "nasa-dive-safety",
      "display" : "NASA Dive Safety",
      "definition" : "NASA diving safety standards"
    },
    {
      "code" : "nasa-medical-standards",
      "display" : "NASA Medical Standards",
      "definition" : "NASA astronaut medical standards"
    },
    {
      "code" : "nasa-training-protocols",
      "display" : "NASA Training Protocols",
      "definition" : "NASA astronaut training protocols"
    },
    {
      "code" : "iso-diving-services",
      "display" : "ISO Diving Services",
      "definition" : "ISO 24801 diving services standards"
    },
    {
      "code" : "en-diving-services",
      "display" : "EN Diving Services",
      "definition" : "European diving services standards"
    },
    {
      "code" : "csa-diving-operations",
      "display" : "CSA Diving Operations",
      "definition" : "Canadian Standards Association diving"
    },
    {
      "code" : "commercial-diver",
      "display" : "Commercial Diver Certification",
      "definition" : "Professional commercial diving certification"
    },
    {
      "code" : "scientific-diver",
      "display" : "Scientific Diver Certification",
      "definition" : "Scientific diving certification"
    },
    {
      "code" : "public-safety-diver",
      "display" : "Public Safety Diver",
      "definition" : "Public safety diving certification"
    },
    {
      "code" : "instructor-level",
      "display" : "Instructor Certification",
      "definition" : "Diving instructor certification"
    }
  ]
}

```
