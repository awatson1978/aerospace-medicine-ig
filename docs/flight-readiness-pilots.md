# EHR Use for Pilot Certification - Aerospace Medicine Implementation Guide v0.7.0

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

With federal policy such as the 21st Century Cures Act [1], the Medicare Access and CHIP Reauthorization Act of 2015 (MACRA) [2], and the Trusted Exchange Framework and Common Agreement (TEFCA) [3], the FAA can now leverage standardized health data to support the certification process.

#### Technical Feasibility

This guide's mapping of Form 8500-8 to a FHIR Questionnaire, published here as the [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md), shows that all medically relevant fields in the form can be expressed and transmitted via Fast Healthcare Interoperability Resources (FHIR) APIs [7][8]. Key findings from that mapping include:

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
* **Security and Trust Networks**: Implementing servers that meet NIST Special Publication 800-171 [4], OAuth 2.0, and X.509 security certificates

#### Policy and Legal Considerations

* **Privacy Act of 1974** (5 U.S.C. § 552a): Governs collection and handling of personally identifiable information by federal agencies [5]
* **21st Century Cures Act**: Enables patient access to and sharing of health data [1]
* **CARIN Alliance Code of Conduct**: Provides an ethical framework for handling patient-authorized data [6]
* **TEFCA**: Establishes a nationwide framework for health information exchange [3]

### Future Implementation Roadmap

A phased approach is recommended for implementing EHR integration:

1. **Develop Concept of Operations**: Create detailed implementation plan for certification, recertification, and special issuance processes
1. **Pilot Programs**: Conduct initial testing in high-adoption areas or with preferred providers
1. **Stakeholder-Specific Workflows**: Implement different workflows for pilots, AMEs, and clinicians
1. **Privacy Policy Updates**: Ensure FAA privacy policies correctly reflect new data handling practices
1. **Incentivize Adoption**: Offer faster processing times for pilots who provide EHR data

### Standardized Terminologies

The [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md) uses SNOMED CT for conditions, LOINC for examinations and laboratory tests, and RxNorm for medications, following the conventions of HL7 US Core [8].

#### Proposed Terminology (not yet defined)

To support automated validation of flight readiness, the following value sets would be useful. They are described here as a proposal; none of them exists in this guide yet.

* `faa-disqualifying-conditions-vs`: medical conditions that are disqualifying under the FAA Guide for Aviation Medical Examiners [7]
* `faa-special-issuance-conditions-vs`: conditions eligible for a special issuance authorization
* `faa-do-not-issue-medications-vs`: medications on the FAA "Do Not Issue" list
* `faa-do-not-fly-medications-vs`: medications on the FAA "Do Not Fly" list
* `faa-required-examinations-vs`: examinations and laboratory tests required for each certificate class

Once defined in FHIR-compatible terminologies, such value sets would enable consistent interpretation of medical data across different EHR systems.

### Conclusion

EHR integration with the pilot certification process is technically feasible and offers significant benefits for safety, efficiency, and administrative burden reduction. By leveraging standardized health data exchange protocols, the FAA can streamline the Form 8500-8 process while improving the accuracy and completeness of medical information used for certification decisions.

The implementation of EHR integration aligns with broader digital transformation initiatives across the aviation sector and positions the FAA to take advantage of emerging technologies in health data interoperability to enhance flight safety.

### References

* [1] 21st Century Cures Act, Public Law 114-255 (H.R. 34), 114th Congress, 2016. https://www.congress.gov/bill/114th-congress/house-bill/34
* [2] Medicare Access and CHIP Reauthorization Act of 2015 (MACRA), Public Law 114-10. Centers for Medicare and Medicaid Services. https://www.cms.gov/Medicare/Quality-Initiatives-Patient-Assessment-Instruments/Value-Based-Programs/MACRA-MIPS-and-APMs/MACRA-MIPS-and-APMs
* [3] Office of the National Coordinator for Health Information Technology (ONC). Trusted Exchange Framework and Common Agreement (TEFCA). https://www.healthit.gov/topic/interoperability/policy/trusted-exchange-framework-and-common-agreement-tefca
* [4] National Institute of Standards and Technology. Special Publication 800-171 Rev. 3, Protecting Controlled Unclassified Information in Nonfederal Systems and Organizations, 2024. https://doi.org/10.6028/NIST.SP.800-171r3
* [5] Privacy Act of 1974, 5 U.S.C. § 552a. U.S. Department of Justice, Office of Privacy and Civil Liberties. https://www.justice.gov/opcl/privacy-act-1974
* [6] CARIN Alliance. Code of Conduct for consumer-directed exchange of health information.
* [7] Federal Aviation Administration. Guide for Aviation Medical Examiners; FAA Form 8500-8, Application for Airman Medical Certificate, submitted through MedXPress. https://www.faa.gov/ame_guide and https://medxpress.faa.gov/
* [8] HL7 International. US Core Implementation Guide. https://hl7.org/fhir/us/core/

