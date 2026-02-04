# MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry**

## Questionnaire: MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-3-1-radiation-monitoring | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MEDB31RadiationMonitoring |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for radiation monitoring and crew personal dosimetry. Captures crew radiation exposure data for occupational exposure documentation and health risk assessment. 

 
To monitor and document crew exposure to radiation and to maintain crew exposures 'as low as reasonably achievable'. To perform risk assessment. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB31RadiationMonitoringQuestionnaire",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "name",
          "valueCoding" : {
            "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext",
            "code" : "patient"
          }
        },
        {
          "url" : "type",
          "valueCode" : "Patient"
        },
        {
          "url" : "description",
          "valueString" : "The astronaut/crewmember subject of this medical requirement"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-3-1-radiation-monitoring",
  "version" : "0.5.9",
  "name" : "MEDB31RadiationMonitoring",
  "title" : "MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry",
  "status" : "active",
  "date" : "2017-06-05",
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
  "description" : "NASA Medical Requirements Integration Document for radiation monitoring and crew personal dosimetry. Captures crew radiation exposure data for occupational exposure documentation and health risk assessment.",
  "purpose" : "To monitor and document crew exposure to radiation and to maintain crew exposures 'as low as reasonably achievable'. To perform risk assessment.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number and Title",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry"
            }
          ]
        },
        {
          "linkId" : "overview.sponsor",
          "text" : "Sponsor",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "medical-operations",
                "display" : "Medical Operations"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "medical-operations",
                "display" : "Medical Operations"
              }
            }
          ]
        },
        {
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "radiation",
                "display" : "Radiation"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "radiation",
                "display" : "Radiation"
              }
            }
          ]
        },
        {
          "linkId" : "overview.category",
          "text" : "Category",
          "type" : "string",
          "required" : true,
          "readOnly" : true,
          "initial" : [
            {
              "valueString" : "Medical Requirements"
            }
          ]
        },
        {
          "linkId" : "overview.references",
          "text" : "References",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "SSP 50260 ISS Medical Operations Requirement Document; SSP 50667 Med Volume B, Section 3.1"
            }
          ]
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "To monitor and document crew exposure to radiation and to maintain crew exposures 'as low as reasonably achievable'. To perform risk assessment."
            }
          ]
        },
        {
          "linkId" : "overview.measurement-parameters",
          "text" : "Measurement Parameters",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Radiation exposure"
            }
          ]
        },
        {
          "linkId" : "overview.deliverables",
          "text" : "Deliverables",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Record of radiation doses used to document occupational exposure. Doses from each mission and accumulated doses, which shall be used for health risk assessment, are to be recorded in crewmembers' medical records. All U.S. crewmembers' medical records will be updated based on CPD data."
            }
          ]
        },
        {
          "linkId" : "overview.flight-duration",
          "text" : "Flight Duration",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "All flights"
            }
          ]
        },
        {
          "linkId" : "overview.number-of-flights",
          "text" : "Number of Flights",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Every ISS Increment"
            }
          ]
        },
        {
          "linkId" : "overview.crew-members-required",
          "text" : "Number and Type of Crew Members Required",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "ISS crewmembers (Primary and backup will be trained)"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preflight-training",
      "text" : "Preflight Training",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-training.description",
          "text" : "Training Activity Description",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Training will be covered in the following Radiation lesson (ISS): EHS Radiation Operations."
            }
          ]
        },
        {
          "linkId" : "preflight-training.activity-name",
          "text" : "Activity Name",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "EHS Radiation Operations"
            }
          ]
        },
        {
          "linkId" : "preflight-training.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "required" : true,
          "initial" : [
            {
              "valueInteger" : 45
            }
          ]
        },
        {
          "linkId" : "preflight-training.schedule",
          "text" : "Schedule",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "L-19m",
                "display" : "L-19 months"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "L-19m",
                "display" : "L-19 months"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-training.flexibility",
          "text" : "Flexibility",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "N/A"
            }
          ]
        },
        {
          "linkId" : "preflight-training.personnel",
          "text" : "Personnel Required",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "crewmember",
                "display" : "Crewmember"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "instructor",
                "display" : "Instructor"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-training.hardware",
          "text" : "Preflight Hardware",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "cpd",
                "display" : "Crew Passive Dosimeter"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-training.software",
          "text" : "Preflight Software",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "N/A"
            }
          ]
        },
        {
          "linkId" : "preflight-training.location",
          "text" : "Test Location",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-training.facilities",
          "text" : "Training Facilities",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Conference Room"
            }
          ]
        },
        {
          "linkId" : "preflight-training.training-date",
          "text" : "Training Completion Date",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "preflight-training.training-complete",
          "text" : "Training Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "preflight-activities",
      "text" : "Preflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-activities.description",
          "text" : "Activity Description",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "No crew activities"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.constraints",
          "text" : "Constraints/Special Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "When transporting hardware to launch location, hardware should not be x-rayed or stowed/shipped with radioactive material. Dosimeters should be transported inside lead-lined bags. If X-ray is necessary for security, the dosimeters must be kept inside the lead-lined bags and the number of X-rays should be recorded."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.launch-delay",
          "text" : "Launch Delay Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "If a launch delay of more than 90 days occurs, Space Radiation Analysis Group (SRAG) will decide whether to refurbish, replace or take no action."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "inflight-activities",
      "text" : "In-Flight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "The Crew Passive Dosimeters (CPDs) are preintegrated into the crewed launch vehicle and then distributed to the appropriate crewmembers post launch. Each crewmember is required to carry his/her CPD continuously, including during EVAs. Prior to descent, crewmembers are to wear or stow the CPDs to be recovered at landing."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.activity-name",
          "text" : "Activity",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Crew Passive Dosimeter"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.duration",
          "text" : "Duration",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Continuous monitoring"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Worn continuously during the mission, including ascent and EVAs"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.personnel",
          "text" : "Personnel Required",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "All U.S. crewmembers, CSA and JAXA crewmembers by agreement"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.hardware",
          "text" : "In-Flight Hardware",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "cpd",
                "display" : "Crew Passive Dosimeter"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "cpd",
                "display" : "Crew Passive Dosimeter"
              }
            }
          ]
        },
        {
          "linkId" : "inflight-activities.cpd-serial",
          "text" : "CPD Serial Number",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "inflight-activities.cpd-distributed",
          "text" : "CPD Distribution Date",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "inflight-activities.mid-mission-exchange",
          "text" : "Mid-Mission CPD Exchange Required (>180 days)",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "inflight-activities.mid-cpd-serial",
          "text" : "Mid-Mission CPD Serial Number",
          "type" : "string",
          "enableWhen" : [
            {
              "question" : "inflight-activities.mid-mission-exchange",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "required" : false
        },
        {
          "linkId" : "inflight-activities.notes",
          "text" : "Notes",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Resupply Requirements: At launch each crewmember will be supplied with a crew passive dosimeter (CPD) for continuous wear. Longer duration crew (greater than 180 days) may receive mid-mission CPDs to exchange with their beginning of mission CPD to assess mid-mission exposures."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Returning Crewmembers will have their dosimeters returned via flight surgeons."
            }
          ]
        },
        {
          "linkId" : "postflight-activities.schedule",
          "text" : "Schedule",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "R-0",
                "display" : "R+0"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "R-0",
                "display" : "R+0"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-activities.personnel",
          "text" : "Personnel Required",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "flight-surgeon",
                "display" : "Flight Surgeon"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "landing-team",
                "display" : "Landing Team"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-activities.constraints",
          "text" : "Constraints/Special Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Upon the return of hardware, hardware should not be x-rayed or stowed/shipped with radioactive material. Dosimeters should be transported inside lead-lined bags. If X-ray is necessary for security, the dosimeters must be kept inside the lead-lined bags and the number of X-rays should be recorded."
            }
          ]
        },
        {
          "linkId" : "postflight-activities.cpd-recovered",
          "text" : "CPD Recovered",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "postflight-activities.cpd-recovery-date",
          "text" : "CPD Recovery Date",
          "type" : "date",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "data-delivery",
      "text" : "Data Delivery",
      "type" : "group",
      "item" : [
        {
          "linkId" : "data-delivery.cpd-report",
          "text" : "CPD Analytical Report",
          "type" : "group",
          "item" : [
            {
              "linkId" : "data-delivery.cpd-report.due",
              "text" : "Report Due (R+ days)",
              "type" : "integer",
              "required" : true,
              "initial" : [
                {
                  "valueInteger" : 30
                }
              ]
            },
            {
              "linkId" : "data-delivery.cpd-report.recipient",
              "text" : "Report Recipient",
              "type" : "choice",
              "required" : true,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                    "code" : "rho",
                    "display" : "Radiation Health Officer"
                  }
                }
              ],
              "initial" : [
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                    "code" : "rho",
                    "display" : "Radiation Health Officer"
                  }
                }
              ]
            },
            {
              "linkId" : "data-delivery.cpd-report.delivered",
              "text" : "Report Delivered",
              "type" : "boolean",
              "required" : false
            },
            {
              "linkId" : "data-delivery.cpd-report.delivery-date",
              "text" : "Delivery Date",
              "type" : "date",
              "required" : false
            }
          ]
        },
        {
          "linkId" : "data-delivery.dosimetry-report",
          "text" : "Mission Dosimetry and Risk Report",
          "type" : "group",
          "item" : [
            {
              "linkId" : "data-delivery.dosimetry-report.due",
              "text" : "Report Due (R+ days)",
              "type" : "integer",
              "required" : true,
              "initial" : [
                {
                  "valueInteger" : 60
                }
              ]
            },
            {
              "linkId" : "data-delivery.dosimetry-report.recipients",
              "text" : "Report Recipients",
              "type" : "choice",
              "required" : true,
              "repeats" : true,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                    "code" : "flight-surgeon",
                    "display" : "Flight Surgeon"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                    "code" : "crew-surgeon",
                    "display" : "Crew Surgeon"
                  }
                }
              ]
            },
            {
              "linkId" : "data-delivery.dosimetry-report.preliminary",
              "text" : "Preliminary Report Issued",
              "type" : "boolean",
              "required" : false
            },
            {
              "linkId" : "data-delivery.dosimetry-report.final",
              "text" : "Final Report Issued",
              "type" : "boolean",
              "required" : false
            }
          ]
        },
        {
          "linkId" : "data-delivery.archive",
          "text" : "Data Archive System",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId" : "dose-results",
      "text" : "Radiation Dose Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "dose-results.mission-dose",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "73536-5",
              "display" : "Radiation dose"
            }
          ],
          "text" : "Mission Dose (mSv)",
          "type" : "decimal",
          "required" : false
        },
        {
          "linkId" : "dose-results.dose-rate",
          "text" : "Average Dose Rate (mSv/day)",
          "type" : "decimal",
          "required" : false
        },
        {
          "linkId" : "dose-results.cumulative-dose",
          "text" : "Career Cumulative Dose (mSv)",
          "type" : "decimal",
          "required" : false
        },
        {
          "linkId" : "dose-results.alara-compliant",
          "text" : "ALARA Compliance Confirmed",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "dose-results.notes",
          "text" : "Dose Assessment Notes",
          "type" : "text",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "postflight-debrief",
      "text" : "Postflight Debrief",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-debrief.schedule",
          "text" : "Schedule",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "R-30d",
                "display" : "R+30 days"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs",
                "code" : "R-30d",
                "display" : "R+30 days"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-debrief.duration",
          "text" : "Duration",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "No extra time (included as part of Med Ops overall debrief)"
            }
          ]
        },
        {
          "linkId" : "postflight-debrief.personnel",
          "text" : "Personnel Required",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Crewmembers/Radiation Team"
            }
          ]
        },
        {
          "linkId" : "postflight-debrief.completed",
          "text" : "Debrief Completed",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "postflight-debrief.date",
          "text" : "Debrief Date",
          "type" : "date",
          "required" : false
        }
      ]
    }
  ]
}

```
