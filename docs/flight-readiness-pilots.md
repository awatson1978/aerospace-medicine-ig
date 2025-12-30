# EHR Use for Pilot Certification - v0.5.6

* [**Table of Contents**](toc.md)
* **EHR Use for Pilot Certification**

## EHR Use for Pilot Certification

### Overview

The Office of Aerospace Medicine (OAM) plays a critical role in aviation safety by establishing medical standards for flight fitness and issuing medical certificates to pilots. Integration of Electronic Health Records (EHR) with the aeromedical certification process presents an opportunity to enhance safety, improve efficiency, and reduce administrative burden.

This guide describes the technical feasibility and implementation considerations for using EHR data to support pilot medical certification, with particular focus on the Form 8500-8 application process.

### Current Process

The FAA uses a network of Aviation Medical Examiners (AMEs) who administer pilot examinations at specified intervals. The MedXPress digital platform facilitates the online submission of Form 8500-8 for medical certification. This form collects comprehensive medical history and examination findings to determine pilot fitness to fly.

The current process faces several challenges:

* Relies on complete, truthful recollection of medical history by applicants
* Potential for non-disclosure of relevant medical information
* Time-consuming follow-up activities for missing or inconsistent information
* Delays in processing special issuance authorizations

### EHR Integration Approach

With new federal regulations such as the 21st Century Cures Act, Medicare Access and CHIP Reauthorization Act of 2015 (MACRA), and Trusted Exchange Framework and Common Agreement (TEFCA), the FAA can now leverage standardized health data to support the certification process.

#### Technical Feasibility

Research has demonstrated that all medically relevant fields in Form 8500-8 can be expressed and transmitted via Fast Healthcare Interoperability Resources (FHIR) APIs. Key findings include:

* All medical conditions mentioned in Form 8500-8 and special issuance guidance have associated SNOMED CT codes
* All exams mentioned have associated LOINC codes
* Prescribed medications can be queried using RxNorm codes
* The FHIR standard fully supports all data elements required for certification

#### Implementation Use Cases

Several workflows have been identified for EHR integration:

1. **Pilot Self-Service**- Pilots retrieve their own medical data through patient portals or personal health records (PHRs) and share it with MedXPress
1. **AME-Initiated Data Fetch**- AMEs retrieve relevant medical data directly from EHRs or health information exchanges (HIEs) during examinations
1. **Continuous Monitoring**- For special issuance cases, ongoing monitoring of specific health parameters through EHR data

#### Benefits for Flight Readiness Assessment

EHR integration provides several advantages for assessing pilot flight readiness:

* **Data Completeness**: Access to comprehensive medical history reduces non-disclosure issues
* **Efficiency**: Pre-population of Form 8500-8 fields reduces administrative burden for pilots and AMEs
* **Special Issuance Management**: Streamlined process for monitoring conditions under special issuance authorizations
* **Recertification**: Faster processing for pilots requiring recertification after medical events
* **Safety Assurance**: Improved detection of potentially disqualifying conditions

### Implementation Considerations

#### Technical Considerations

* **Data Location**: Identifying where specific health data resides across multiple providers
* **Data Format**: Managing differences between table-based MedXPress data and document-oriented EHR data
* **Terminology Mapping**: Creating crosswalks between ICD-10 codes used by FAA and SNOMED CT/LOINC codes in EHRs
* **Security and Trust Networks**: Implementing NIST 800-171 compliant servers, OAuth 2.0, and X.509 security certificates

#### Policy and Legal Considerations

* **Privacy Act of 1974**: Governs collection and handling of personally identifiable information
* **21st Century Cures Act**: Enables patient access to and sharing of health data
* **CARIN Alliance Code of Conduct**: Provides ethical framework for handling patient-authorized data
* **TEFCA**: Establishes nationwide framework for health information exchange

### Future Implementation Roadmap

A phased approach is recommended for implementing EHR integration:

1. **Develop Concept of Operations**: Create detailed implementation plan for certification, recertification, and special issuance processes
1. **Pilot Programs**: Conduct initial testing in high-adoption areas or with preferred providers
1. **Stakeholder-Specific Workflows**: Implement different workflows for pilots, AMEs, and clinicians
1. **Privacy Policy Updates**: Ensure FAA privacy policies correctly reflect new data handling practices
1. **Incentivize Adoption**: Offer faster processing times for pilots who provide EHR data

### FAA-Specific Value Sets

To facilitate implementation, standardized value sets have been developed for:

* Disqualifying medical conditions
* Special issuance eligible conditions
* Do Not Issue (DNI) medications
* Do Not Fly medications
* Required examinations and laboratory tests

These value sets, coded in FHIR-compatible terminologies, enable consistent interpretation of medical data across different EHR systems and support automated validation of flight readiness requirements.

### Conclusion

EHR integration with the pilot certification process is technically feasible and offers significant benefits for safety, efficiency, and administrative burden reduction. By leveraging standardized health data exchange protocols, the FAA can streamline the Form 8500-8 process while improving the accuracy and completeness of medical information used for certification decisions.

The implementation of EHR integration aligns with broader digital transformation initiatives across the aviation sector and positions the FAA to take advantage of emerging technologies in health data interoperability to enhance flight safety.

