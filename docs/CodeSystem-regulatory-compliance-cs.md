# Diving and Space Medicine Regulatory Compliance - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving and Space Medicine Regulatory Compliance**

## CodeSystem: Diving and Space Medicine Regulatory Compliance (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/regulatory-compliance-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:RegulatoryComplianceCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Regulatory standards and compliance codes for diving and space medicine 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RegulatoryStandards](ValueSet-regulatory-standards-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "regulatory-compliance-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/regulatory-compliance-cs",
  "version" : "0.7.0",
  "name" : "RegulatoryComplianceCS",
  "title" : "Diving and Space Medicine Regulatory Compliance",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Regulatory standards and compliance codes for diving and space medicine",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 26,
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
    },
    {
      "code" : "compliance-status",
      "display" : "Compliance Status",
      "definition" : "Overall compliance status against the assessed regulatory standard"
    },
    {
      "code" : "standards-version",
      "display" : "Standards Version",
      "definition" : "Version or edition of the regulatory standard assessed against"
    },
    {
      "code" : "certification-level",
      "display" : "Certification Level",
      "definition" : "Certification level held by the individual under the standard"
    },
    {
      "code" : "expiration-date",
      "display" : "Certification Expiration Date",
      "definition" : "Date on which the certification or compliance status expires"
    },
    {
      "code" : "restrictions-limitations",
      "display" : "Restrictions and Limitations",
      "definition" : "Restrictions or limitations attached to the certification or compliance status"
    }
  ]
}

```
