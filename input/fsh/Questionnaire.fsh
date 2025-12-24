Instance: FAA8500Questionnaire
InstanceOf: Questionnaire
Title: "FAA Form 8500-8 Questionnaire"
Description: "FAA Form 8500-8 Application for Airman Medical Certificate converted to FHIR Questionnaire format"
Usage: #definition

* url = "http://hl7.org/fhir/uv/aerospace/Questionnaire/faa-form-8500-8"
* version = "1.0.0"
* status = #active
* date = "2025-05-21"
* publisher = "Federal Aviation Administration Office of Aerospace Medicine"
* contact.name = "Office of Aerospace Medicine"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.faa.gov/about/office_org/headquarters_offices/avs/offices/aam"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Application for Airman Medical Certificate or Airman Medical & Student Pilot Certificate"
* copyright = "Federal Aviation Administration"

// APPLICATION INFORMATION
* item[0].linkId = "application-info"
* item[0].text = "APPLICATION INFORMATION"
* item[0].type = #group

* item[0].item[0].linkId = "application-type"
* item[0].item[0].text = "APPLICATION FOR"
* item[0].item[0].type = #choice
* item[0].item[0].required = true
* item[0].item[0].answerOption[0].valueCoding = urn:oid:2.16.840.1.113883.6.1#432401000124109 "Medical Certificate"
* item[0].item[0].answerOption[1].valueCoding = urn:oid:2.16.840.1.113883.6.1#446021008 "Medical and Student Pilot Certificate"

* item[0].item[1].linkId = "certificate-class"
* item[0].item[1].text = "CLASS OF MEDICAL CERTIFICATE APPLIED FOR"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].answerOption[0].valueString = "First"
* item[0].item[1].answerOption[1].valueString = "Second"
* item[0].item[1].answerOption[2].valueString = "Third"

// PERSONAL INFORMATION
* item[1].linkId = "personal-info"
* item[1].text = "PERSONAL INFORMATION"
* item[1].type = #group

* item[1].item[0].linkId = "name"
* item[1].item[0].text = "NAME (Last, First, Middle)"
* item[1].item[0].type = #string
* item[1].item[0].required = true

* item[1].item[1].linkId = "ssn"
* item[1].item[1].text = "SOCIAL SECURITY NUMBER"
* item[1].item[1].type = #string
* item[1].item[1].required = false

* item[1].item[2].linkId = "address"
* item[1].item[2].text = "ADDRESS (Street, City, State, ZIP)"
* item[1].item[2].type = #string
* item[1].item[2].required = true

* item[1].item[3].linkId = "telephone"
* item[1].item[3].text = "TELEPHONE NUMBER"
* item[1].item[3].type = #string
* item[1].item[3].required = true

* item[1].item[4].linkId = "date-of-birth"
* item[1].item[4].text = "DATE OF BIRTH (MM/DD/YYYY)"
* item[1].item[4].type = #date
* item[1].item[4].required = true

* item[1].item[5].linkId = "hair-color"
* item[1].item[5].text = "COLOR OF HAIR"
* item[1].item[5].type = #choice
* item[1].item[5].required = true
* item[1].item[5].answerOption[0].valueString = "Brown"
* item[1].item[5].answerOption[1].valueString = "Black"
* item[1].item[5].answerOption[2].valueString = "Blonde"
* item[1].item[5].answerOption[3].valueString = "Red"
* item[1].item[5].answerOption[4].valueString = "Gray"
* item[1].item[5].answerOption[5].valueString = "White"
* item[1].item[5].answerOption[6].valueString = "Bald"

* item[1].item[6].linkId = "eye-color"
* item[1].item[6].text = "COLOR OF EYES"
* item[1].item[6].type = #choice
* item[1].item[6].required = true
* item[1].item[6].answerOption[0].valueString = "Brown"
* item[1].item[6].answerOption[1].valueString = "Blue"
* item[1].item[6].answerOption[2].valueString = "Green"
* item[1].item[6].answerOption[3].valueString = "Hazel"
* item[1].item[6].answerOption[4].valueString = "Gray"
* item[1].item[6].answerOption[5].valueString = "Black"

* item[1].item[7].linkId = "sex"
* item[1].item[7].text = "SEX"
* item[1].item[7].type = #choice
* item[1].item[7].required = true
* item[1].item[7].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[1].item[7].answerOption[1].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"

// AIRMAN INFORMATION
* item[2].linkId = "airman-info"
* item[2].text = "AIRMAN INFORMATION"
* item[2].type = #group

* item[2].item[0].linkId = "certificate-held"
* item[2].item[0].text = "TYPE OF AIRMAN CERTIFICATE(S) YOU HOLD"
* item[2].item[0].type = #choice
* item[2].item[0].required = true
* item[2].item[0].repeats = true
* item[2].item[0].answerOption[0].valueString = "Airline Transport"
* item[2].item[0].answerOption[1].valueString = "Commercial"
* item[2].item[0].answerOption[2].valueString = "Private"
* item[2].item[0].answerOption[3].valueString = "Student"
* item[2].item[0].answerOption[4].valueString = "Recreational"
* item[2].item[0].answerOption[5].valueString = "Sport"
* item[2].item[0].answerOption[6].valueString = "Flight Instructor"
* item[2].item[0].answerOption[7].valueString = "Flight Engineer"
* item[2].item[0].answerOption[8].valueString = "Flight Navigator"
* item[2].item[0].answerOption[9].valueString = "None"

* item[2].item[1].linkId = "occupation"
* item[2].item[1].text = "OCCUPATION"
* item[2].item[1].type = #string
* item[2].item[1].required = true

* item[2].item[2].linkId = "employer"
* item[2].item[2].text = "EMPLOYER"
* item[2].item[2].type = #string
* item[2].item[2].required = true

* item[2].item[3].linkId = "total-pilot-time"
* item[2].item[3].text = "TOTAL PILOT TIME TO DATE"
* item[2].item[3].type = #quantity
* item[2].item[3].required = true

* item[2].item[4].linkId = "pilot-time-6-months"
* item[2].item[4].text = "TOTAL PILOT TIME PAST 6 MONTHS"
* item[2].item[4].type = #quantity
* item[2].item[4].required = true

* item[2].item[5].linkId = "medical-certificate-date"
* item[2].item[5].text = "DATE OF LAST FAA MEDICAL APPLICATION"
* item[2].item[5].type = #date
* item[2].item[5].required = false

* item[2].item[6].linkId = "medical-certificate-denied"
* item[2].item[6].text = "HAS YOUR FAA AIRMAN MEDICAL CERTIFICATE EVER BEEN DENIED, SUSPENDED, OR REVOKED?"
* item[2].item[6].type = #boolean
* item[2].item[6].required = true

* item[2].item[6].item[0].linkId = "medical-certificate-denied-details"
* item[2].item[6].item[0].text = "If yes, provide date"
* item[2].item[6].item[0].type = #date
* item[2].item[6].item[0].required = false
* item[2].item[6].item[0].enableWhen.question = "medical-certificate-denied"
* item[2].item[6].item[0].enableWhen.operator = #=
* item[2].item[6].item[0].enableWhen.answerBoolean = true

// MEDICATIONS
* item[3].linkId = "medications"
* item[3].text = "MEDICATION INFORMATION"
* item[3].type = #group

* item[3].item[0].linkId = "current-medications"
* item[3].item[0].text = "DO YOU CURRENTLY USE ANY MEDICATION (PRESCRIPTION OR NONPRESCRIPTION)?"
* item[3].item[0].type = #boolean
* item[3].item[0].required = true

* item[3].item[0].item[0].linkId = "medication-list"
* item[3].item[0].item[0].text = "List medication(s) and dosage"
* item[3].item[0].item[0].type = #string
* item[3].item[0].item[0].repeats = true
* item[3].item[0].item[0].required = false
* item[3].item[0].item[0].enableWhen.question = "current-medications"
* item[3].item[0].item[0].enableWhen.operator = #=
* item[3].item[0].item[0].enableWhen.answerBoolean = true

* item[3].item[1].linkId = "contact-lenses"
* item[3].item[1].text = "DO YOU EVER USE NEAR VISION CONTACT LENS(ES) WHILE FLYING?"
* item[3].item[1].type = #boolean
* item[3].item[1].required = true

// MEDICAL HISTORY
* item[4].linkId = "medical-history"
* item[4].text = "MEDICAL HISTORY - Have you ever in your life been diagnosed with, had, or do you presently have any of the following?"
* item[4].type = #group

* item[4].item[0].linkId = "headaches"
* item[4].item[0].text = "Frequent or severe headaches"
* item[4].item[0].type = #boolean
* item[4].item[0].required = true
* item[4].item[0].code = http://snomed.info/sct#398057008 "Tension-type headache"

* item[4].item[1].linkId = "dizziness"
* item[4].item[1].text = "Dizziness or fainting spells"
* item[4].item[1].type = #boolean
* item[4].item[1].required = true
* item[4].item[1].code = http://snomed.info/sct#69096003 "Dizziness"

* item[4].item[2].linkId = "unconsciousness"
* item[4].item[2].text = "Unconsciousness for any reason"
* item[4].item[2].type = #boolean
* item[4].item[2].required = true
* item[4].item[2].code = http://snomed.info/sct#69944003 "Unconscious"

* item[4].item[3].linkId = "eye-trouble"
* item[4].item[3].text = "Eye or vision trouble except glasses"
* item[4].item[3].type = #boolean
* item[4].item[3].required = true
* item[4].item[3].code = http://snomed.info/sct#371405004 "Disorder of eye"

* item[4].item[4].linkId = "hay-fever"
* item[4].item[4].text = "Hay fever or allergy"
* item[4].item[4].type = #boolean
* item[4].item[4].required = true

* item[4].item[5].linkId = "asthma"
* item[4].item[5].text = "Asthma or lung disease"
* item[4].item[5].type = #boolean
* item[4].item[5].required = true
* item[4].item[5].code = http://snomed.info/sct#195967001 "Asthma"

* item[4].item[6].linkId = "heart-trouble"
* item[4].item[6].text = "Heart or vascular trouble"
* item[4].item[6].type = #boolean
* item[4].item[6].required = true
* item[4].item[6].code = http://snomed.info/sct#128238001 "Chronic heart disease"

* item[4].item[7].linkId = "blood-pressure"
* item[4].item[7].text = "High or low blood pressure"
* item[4].item[7].type = #boolean
* item[4].item[7].required = true
* item[4].item[7].code = http://snomed.info/sct#38341003 "Hypertensive disorder"

* item[4].item[8].linkId = "stomach-trouble"
* item[4].item[8].text = "Stomach, liver, or intestinal trouble"
* item[4].item[8].type = #boolean
* item[4].item[8].required = true
* item[4].item[8].code = http://snomed.info/sct#328383001 "Chronic liver disease"

* item[4].item[9].linkId = "kidney-trouble"
* item[4].item[9].text = "Kidney stone or blood in urine"
* item[4].item[9].type = #boolean
* item[4].item[9].required = true
* item[4].item[9].code = http://snomed.info/sct#95570007 "Kidney stone"

* item[4].item[10].linkId = "diabetes"
* item[4].item[10].text = "Diabetes"
* item[4].item[10].type = #boolean
* item[4].item[10].required = true
* item[4].item[10].code = http://snomed.info/sct#73211009 "Diabetes mellitus"

* item[4].item[11].linkId = "neurological"
* item[4].item[11].text = "Neurological disorders; epilepsy, seizures, stroke, paralysis, etc."
* item[4].item[11].type = #boolean
* item[4].item[11].required = true
* item[4].item[11].code = http://snomed.info/sct#84757009 "Epilepsy"

* item[4].item[12].linkId = "mental-disorders"
* item[4].item[12].text = "Mental disorders of any sort; depression, anxiety, etc."
* item[4].item[12].type = #boolean
* item[4].item[12].required = true
* item[4].item[12].code = http://snomed.info/sct#74732009 "Mental disorder"

* item[4].item[13].linkId = "substance-abuse"
* item[4].item[13].text = "Substance dependence or failed a drug test ever; or substance abuse or use of illegal substance in the last 2 years"
* item[4].item[13].type = #boolean
* item[4].item[13].required = true
* item[4].item[13].code = http://snomed.info/sct#66214007 "Substance abuse"

* item[4].item[14].linkId = "alcohol-dependence"
* item[4].item[14].text = "Alcohol dependence or abuse"
* item[4].item[14].type = #boolean
* item[4].item[14].required = true
* item[4].item[14].code = http://snomed.info/sct#66590003 "Alcohol dependence"

* item[4].item[15].linkId = "suicide-attempt"
* item[4].item[15].text = "Suicide attempt"
* item[4].item[15].type = #boolean
* item[4].item[15].required = true
* item[4].item[15].code = http://snomed.info/sct#82313006 "Suicide Attempt"

* item[4].item[16].linkId = "motion-sickness"
* item[4].item[16].text = "Motion sickness requiring medication"
* item[4].item[16].type = #boolean
* item[4].item[16].required = true
* item[4].item[16].code = http://snomed.info/sct#37031009 "Motion sickness"

* item[4].item[17].linkId = "military-medical-discharge"
* item[4].item[17].text = "Military medical discharge"
* item[4].item[17].type = #boolean
* item[4].item[17].required = true

* item[4].item[18].linkId = "medical-rejection"
* item[4].item[18].text = "Medical rejection by military service"
* item[4].item[18].type = #boolean
* item[4].item[18].required = true

* item[4].item[19].linkId = "insurance-rejection"
* item[4].item[19].text = "Rejection for life or health insurance"
* item[4].item[19].type = #boolean
* item[4].item[19].required = true

* item[4].item[20].linkId = "hospital-admission"
* item[4].item[20].text = "Admission to hospital"
* item[4].item[20].type = #boolean
* item[4].item[20].required = true
* item[4].item[20].code = http://snomed.info/sct#32485007 "Hospital admission"

* item[4].item[21].linkId = "history-other"
* item[4].item[21].text = "Other illness, disability, or surgery"
* item[4].item[21].type = #boolean
* item[4].item[21].required = true

* item[4].item[22].linkId = "medical-disability-benefits"
* item[4].item[22].text = "Medical disability benefits"
* item[4].item[22].type = #boolean
* item[4].item[22].required = true

* item[4].item[23].linkId = "arrests"
* item[4].item[23].text = "History of arrest(s), conviction(s), and/or administrative action(s)"
* item[4].item[23].type = #boolean
* item[4].item[23].required = true

* item[4].item[24].linkId = "history-convictions"
* item[4].item[24].text = "History of nontraffic convictions"
* item[4].item[24].type = #boolean
* item[4].item[24].required = true

* item[4].item[25].linkId = "medical-history-explanation"
* item[4].item[25].text = "Explanation for any above YES answers (include dates, condition, treatment, and names/addresses of medical providers)"
* item[4].item[25].type = #text
* item[4].item[25].required = false

// VISITS TO HEALTH PROFESSIONALS
* item[5].linkId = "healthcare-visits"
* item[5].text = "VISITS TO HEALTH PROFESSIONAL WITHIN LAST 3 YEARS"
* item[5].type = #boolean
* item[5].required = true

* item[5].item[0].linkId = "healthcare-visit-details"
* item[5].item[0].text = "Date, Name, Address and Type of Health Professional Consulted & Reason"
* item[5].item[0].type = #text
* item[5].item[0].repeats = true
* item[5].item[0].required = false
* item[5].item[0].enableWhen.question = "healthcare-visits"
* item[5].item[0].enableWhen.operator = #=
* item[5].item[0].enableWhen.answerBoolean = true

// PHYSICAL EXAMINATION SECTION (FOR AME USE)
* item[6].linkId = "physical-examination"
* item[6].text = "PHYSICAL EXAMINATION (FOR AME USE ONLY)"
* item[6].type = #group

* item[6].item[0].linkId = "height"
* item[6].item[0].text = "HEIGHT (inches)"
* item[6].item[0].type = #decimal
* item[6].item[0].required = true
* item[6].item[0].code = http://snomed.info/sct#1153637007 "Body height"

* item[6].item[1].linkId = "weight"
* item[6].item[1].text = "WEIGHT (pounds)"
* item[6].item[1].type = #decimal
* item[6].item[1].required = true
* item[6].item[1].code = http://snomed.info/sct#27113001 "Body weight"

* item[6].item[2].linkId = "soda-issued"
* item[6].item[2].text = "STATEMENT OF DEMONSTRATED ABILITY (SODA) ISSUED"
* item[6].item[2].type = #boolean
* item[6].item[2].required = false

* item[6].item[2].item[0].linkId = "soda-serial"
* item[6].item[2].item[0].text = "SODA SERIAL NUMBER"
* item[6].item[2].item[0].type = #string
* item[6].item[2].item[0].required = false
* item[6].item[2].item[0].enableWhen.question = "soda-issued"
* item[6].item[2].item[0].enableWhen.operator = #=
* item[6].item[2].item[0].enableWhen.answerBoolean = true

// EXAMINATION SYSTEM DETAILS
* item[6].item[3].linkId = "body-systems-examination"
* item[6].item[3].text = "BODY SYSTEMS EXAMINATION"
* item[6].item[3].type = #group

* item[6].item[3].item[0].linkId = "head-face-neck"
* item[6].item[3].item[0].text = "Head, face, neck, and scalp"
* item[6].item[3].item[0].type = #choice
* item[6].item[3].item[0].answerOption[0].valueString = "Normal"
* item[6].item[3].item[0].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[1].linkId = "nose"
* item[6].item[3].item[1].text = "Nose"
* item[6].item[3].item[1].type = #choice
* item[6].item[3].item[1].answerOption[0].valueString = "Normal"
* item[6].item[3].item[1].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[2].linkId = "sinuses"
* item[6].item[3].item[2].text = "Sinuses"
* item[6].item[3].item[2].type = #choice
* item[6].item[3].item[2].answerOption[0].valueString = "Normal"
* item[6].item[3].item[2].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[3].linkId = "mouth-throat"
* item[6].item[3].item[3].text = "Mouth and throat"
* item[6].item[3].item[3].type = #choice
* item[6].item[3].item[3].answerOption[0].valueString = "Normal"
* item[6].item[3].item[3].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[4].linkId = "ears-general"
* item[6].item[3].item[4].text = "Ears, general"
* item[6].item[3].item[4].type = #choice
* item[6].item[3].item[4].answerOption[0].valueString = "Normal"
* item[6].item[3].item[4].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[5].linkId = "ear-drums"
* item[6].item[3].item[5].text = "Ear drums"
* item[6].item[3].item[5].type = #choice
* item[6].item[3].item[5].answerOption[0].valueString = "Normal"
* item[6].item[3].item[5].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[6].linkId = "eyes-general"
* item[6].item[3].item[6].text = "Eyes, general"
* item[6].item[3].item[6].type = #choice
* item[6].item[3].item[6].answerOption[0].valueString = "Normal"
* item[6].item[3].item[6].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[7].linkId = "ophthalmoscopic"
* item[6].item[3].item[7].text = "Ophthalmoscopic"
* item[6].item[3].item[7].type = #choice
* item[6].item[3].item[7].answerOption[0].valueString = "Normal"
* item[6].item[3].item[7].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[8].linkId = "pupils"
* item[6].item[3].item[8].text = "Pupils (Equality and Reaction)"
* item[6].item[3].item[8].type = #choice
* item[6].item[3].item[8].answerOption[0].valueString = "Normal"
* item[6].item[3].item[8].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[9].linkId = "ocular-motility"
* item[6].item[3].item[9].text = "Ocular motility"
* item[6].item[3].item[9].type = #choice
* item[6].item[3].item[9].answerOption[0].valueString = "Normal"
* item[6].item[3].item[9].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[10].linkId = "lungs-chest"
* item[6].item[3].item[10].text = "Lungs and chest"
* item[6].item[3].item[10].type = #choice
* item[6].item[3].item[10].answerOption[0].valueString = "Normal"
* item[6].item[3].item[10].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[11].linkId = "heart"
* item[6].item[3].item[11].text = "Heart"
* item[6].item[3].item[11].type = #choice
* item[6].item[3].item[11].answerOption[0].valueString = "Normal"
* item[6].item[3].item[11].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[12].linkId = "vascular-system"
* item[6].item[3].item[12].text = "Vascular system"
* item[6].item[3].item[12].type = #choice
* item[6].item[3].item[12].answerOption[0].valueString = "Normal"
* item[6].item[3].item[12].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[13].linkId = "abdomen-viscera"
* item[6].item[3].item[13].text = "Abdomen and viscera"
* item[6].item[3].item[13].type = #choice
* item[6].item[3].item[13].answerOption[0].valueString = "Normal"
* item[6].item[3].item[13].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[14].linkId = "anus"
* item[6].item[3].item[14].text = "Anus"
* item[6].item[3].item[14].type = #choice
* item[6].item[3].item[14].answerOption[0].valueString = "Normal"
* item[6].item[3].item[14].answerOption[1].valueString = "Abnormal"
* item[6].item[3].item[14].answerOption[2].valueString = "Not Examined"

* item[6].item[3].item[15].linkId = "skin"
* item[6].item[3].item[15].text = "Skin"
* item[6].item[3].item[15].type = #choice
* item[6].item[3].item[15].answerOption[0].valueString = "Normal"
* item[6].item[3].item[15].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[16].linkId = "genitourinary"
* item[6].item[3].item[16].text = "Genitourinary system"
* item[6].item[3].item[16].type = #choice
* item[6].item[3].item[16].answerOption[0].valueString = "Normal"
* item[6].item[3].item[16].answerOption[1].valueString = "Abnormal"
* item[6].item[3].item[16].answerOption[2].valueString = "Not Examined"

* item[6].item[3].item[17].linkId = "extremities"
* item[6].item[3].item[17].text = "Musculoskeletal - Upper and lower extremities"
* item[6].item[3].item[17].type = #choice
* item[6].item[3].item[17].answerOption[0].valueString = "Normal"
* item[6].item[3].item[17].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[18].linkId = "spine"
* item[6].item[3].item[18].text = "Spine, other musculoskeletal"
* item[6].item[3].item[18].type = #choice
* item[6].item[3].item[18].answerOption[0].valueString = "Normal"
* item[6].item[3].item[18].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[19].linkId = "marks-scars"
* item[6].item[3].item[19].text = "Identifying body marks, scars, tattoos"
* item[6].item[3].item[19].type = #choice
* item[6].item[3].item[19].answerOption[0].valueString = "Normal"
* item[6].item[3].item[19].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[20].linkId = "lymphatics"
* item[6].item[3].item[20].text = "Lymphatics"
* item[6].item[3].item[20].type = #choice
* item[6].item[3].item[20].answerOption[0].valueString = "Normal"
* item[6].item[3].item[20].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[21].linkId = "neurological"
* item[6].item[3].item[21].text = "Neurological"
* item[6].item[3].item[21].type = #choice
* item[6].item[3].item[21].answerOption[0].valueString = "Normal"
* item[6].item[3].item[21].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[22].linkId = "psychiatric"
* item[6].item[3].item[22].text = "Psychiatric"
* item[6].item[3].item[22].type = #choice
* item[6].item[3].item[22].answerOption[0].valueString = "Normal"
* item[6].item[3].item[22].answerOption[1].valueString = "Abnormal"

* item[6].item[3].item[23].linkId = "general-systemic"
* item[6].item[3].item[23].text = "General Systemic"
* item[6].item[3].item[23].type = #choice
* item[6].item[3].item[23].answerOption[0].valueString = "Normal"
* item[6].item[3].item[23].answerOption[1].valueString = "Abnormal"

// VISION TESTS
* item[6].item[4].linkId = "vision-tests"
* item[6].item[4].text = "VISION TESTS"
* item[6].item[4].type = #group

* item[6].item[4].item[0].linkId = "distance-vision"
* item[6].item[4].item[0].text = "Distant Vision"
* item[6].item[4].item[0].type = #group
* item[6].item[4].item[0].code = http://snomed.info/sct#246633000 "Distance vision"

* item[6].item[4].item[0].item[0].linkId = "distance-right-uncorrected"
* item[6].item[4].item[0].item[0].text = "Right eye uncorrected"
* item[6].item[4].item[0].item[0].type = #string
* item[6].item[4].item[0].item[0].required = true

* item[6].item[4].item[0].item[1].linkId = "distance-right-corrected"
* item[6].item[4].item[0].item[1].text = "Right eye corrected"
* item[6].item[4].item[0].item[1].type = #string
* item[6].item[4].item[0].item[1].required = false

* item[6].item[4].item[0].item[2].linkId = "distance-left-uncorrected"
* item[6].item[4].item[0].item[2].text = "Left eye uncorrected"
* item[6].item[4].item[0].item[2].type = #string
* item[6].item[4].item[0].item[2].required = true

* item[6].item[4].item[0].item[3].linkId = "distance-left-corrected"
* item[6].item[4].item[0].item[3].text = "Left eye corrected"
* item[6].item[4].item[0].item[3].type = #string
* item[6].item[4].item[0].item[3].required = false

* item[6].item[4].item[0].item[4].linkId = "distance-both-uncorrected"
* item[6].item[4].item[0].item[4].text = "Both eyes uncorrected"
* item[6].item[4].item[0].item[4].type = #string
* item[6].item[4].item[0].item[4].required = true

* item[6].item[4].item[0].item[5].linkId = "distance-both-corrected"
* item[6].item[4].item[0].item[5].text = "Both eyes corrected"
* item[6].item[4].item[0].item[5].type = #string
* item[6].item[4].item[0].item[5].required = false

* item[6].item[4].item[1].linkId = "near-vision"
* item[6].item[4].item[1].text = "Near Vision"
* item[6].item[4].item[1].type = #group
* item[6].item[4].item[1].code = http://snomed.info/sct#830128004 "Near vision"

* item[6].item[4].item[1].item[0].linkId = "near-right-uncorrected"
* item[6].item[4].item[1].item[0].text = "Right eye uncorrected"
* item[6].item[4].item[1].item[0].type = #string
* item[6].item[4].item[1].item[0].required = true

* item[6].item[4].item[1].item[1].linkId = "near-right-corrected"
* item[6].item[4].item[1].item[1].text = "Right eye corrected"
* item[6].item[4].item[1].item[1].type = #string
* item[6].item[4].item[1].item[1].required = false

* item[6].item[4].item[1].item[2].linkId = "near-left-uncorrected"
* item[6].item[4].item[1].item[2].text = "Left eye uncorrected"
* item[6].item[4].item[1].item[2].type = #string
* item[6].item[4].item[1].item[2].required = true

* item[6].item[4].item[1].item[3].linkId = "near-left-corrected"
* item[6].item[4].item[1].item[3].text = "Left eye corrected"
* item[6].item[4].item[1].item[3].type = #string
* item[6].item[4].item[1].item[3].required = false

* item[6].item[4].item[1].item[4].linkId = "near-both-uncorrected"
* item[6].item[4].item[1].item[4].text = "Both eyes uncorrected"
* item[6].item[4].item[1].item[4].type = #string
* item[6].item[4].item[1].item[4].required = true

* item[6].item[4].item[1].item[5].linkId = "near-both-corrected"
* item[6].item[4].item[1].item[5].text = "Both eyes corrected"
* item[6].item[4].item[1].item[5].type = #string
* item[6].item[4].item[1].item[5].required = false

* item[6].item[4].item[2].linkId = "intermediate-vision"
* item[6].item[4].item[2].text = "Intermediate Vision (32 in)"
* item[6].item[4].item[2].type = #group

* item[6].item[4].item[2].item[0].linkId = "intermediate-right-uncorrected"
* item[6].item[4].item[2].item[0].text = "Right eye uncorrected"
* item[6].item[4].item[2].item[0].type = #string
* item[6].item[4].item[2].item[0].required = false

* item[6].item[4].item[2].item[1].linkId = "intermediate-right-corrected"
* item[6].item[4].item[2].item[1].text = "Right eye corrected"
* item[6].item[4].item[2].item[1].type = #string
* item[6].item[4].item[2].item[1].required = false

* item[6].item[4].item[2].item[2].linkId = "intermediate-left-uncorrected"
* item[6].item[4].item[2].item[2].text = "Left eye uncorrected"
* item[6].item[4].item[2].item[2].type = #string
* item[6].item[4].item[2].item[2].required = false

* item[6].item[4].item[2].item[3].linkId = "intermediate-left-corrected"
* item[6].item[4].item[2].item[3].text = "Left eye corrected"
* item[6].item[4].item[2].item[3].type = #string
* item[6].item[4].item[2].item[3].required = false

* item[6].item[4].item[2].item[4].linkId = "intermediate-both-uncorrected"
* item[6].item[4].item[2].item[4].text = "Both eyes uncorrected"
* item[6].item[4].item[2].item[4].type = #string
* item[6].item[4].item[2].item[4].required = false

* item[6].item[4].item[2].item[5].linkId = "intermediate-both-corrected"
* item[6].item[4].item[2].item[5].text = "Both eyes corrected"
* item[6].item[4].item[2].item[5].type = #string
* item[6].item[4].item[2].item[5].required = false

* item[6].item[4].item[3].linkId = "color-vision"
* item[6].item[4].item[3].text = "Color Vision"
* item[6].item[4].item[3].type = #string
* item[6].item[4].item[3].required = true
* item[6].item[4].item[3].code = http://snomed.info/sct#271726001 "Color vision"

* item[6].item[4].item[4].linkId = "field-of-vision"
* item[6].item[4].item[4].text = "Field of Vision"
* item[6].item[4].item[4].type = #string
* item[6].item[4].item[4].required = true

* item[6].item[4].item[5].linkId = "heterophoria"
* item[6].item[4].item[5].text = "Heterophoria (20')"
* item[6].item[4].item[5].type = #group

* item[6].item[4].item[5].item[0].linkId = "esophoria"
* item[6].item[4].item[5].item[0].text = "Esophoria"
* item[6].item[4].item[5].item[0].type = #string
* item[6].item[4].item[5].item[0].required = false
* item[6].item[4].item[5].item[0].code = http://snomed.info/sct#62176008 "Esophoria"

* item[6].item[4].item[5].item[1].linkId = "exophoria"
* item[6].item[4].item[5].item[1].text = "Exophoria"
* item[6].item[4].item[5].item[1].type = #string
* item[6].item[4].item[5].item[1].required = false
* item[6].item[4].item[5].item[1].code = http://snomed.info/sct#46343005 "Exophoria"

* item[6].item[4].item[5].item[2].linkId = "right-hyperphoria"
* item[6].item[4].item[5].item[2].text = "Right Hyperphoria"
* item[6].item[4].item[5].item[2].type = #string
* item[6].item[4].item[5].item[2].required = false
* item[6].item[4].item[5].item[2].code = http://snomed.info/sct#421452007 "Hyperphoria"

* item[6].item[4].item[5].item[3].linkId = "left-hyperphoria"
* item[6].item[4].item[5].item[3].text = "Left Hyperphoria"
* item[6].item[4].item[5].item[3].type = #string
* item[6].item[4].item[5].item[3].required = false
* item[6].item[4].item[5].item[3].code = http://snomed.info/sct#421452007 "Hyperphoria"

// HEARING, BLOOD PRESSURE, ECG
* item[6].item[5].linkId = "hearing-vitals"
* item[6].item[5].text = "HEARING, BLOOD PRESSURE, AND ECG"
* item[6].item[5].type = #group

* item[6].item[5].item[0].linkId = "hearing"
* item[6].item[5].item[0].text = "Hearing"
* item[6].item[5].item[0].type = #group

* item[6].item[5].item[0].item[0].linkId = "audiometric-speech"
* item[6].item[5].item[0].item[0].text = "Audiometric Speech Discrimination"
* item[6].item[5].item[0].item[0].type = #string
* item[6].item[5].item[0].item[0].required = false

* item[6].item[5].item[0].item[1].linkId = "voice-test"
* item[6].item[5].item[0].item[1].text = "Conversational Voice Test at 6 Feet"
* item[6].item[5].item[0].item[1].type = #group

* item[6].item[5].item[0].item[1].item[0].linkId = "right-ear-pass"
* item[6].item[5].item[0].item[1].item[0].text = "Right Ear"
* item[6].item[5].item[0].item[1].item[0].type = #boolean
* item[6].item[5].item[0].item[1].item[0].required = false

* item[6].item[5].item[0].item[1].item[1].linkId = "left-ear-pass"
* item[6].item[5].item[0].item[1].item[1].text = "Left Ear"
* item[6].item[5].item[0].item[1].item[1].type = #boolean
* item[6].item[5].item[0].item[1].item[1].required = false

* item[6].item[5].item[0].item[2].linkId = "audiometric-threshold"
* item[6].item[5].item[0].item[2].text = "Audiometric Threshold in Decibels"
* item[6].item[5].item[0].item[2].type = #group

* item[6].item[5].item[0].item[2].item[0].linkId = "threshold-right-500"
* item[6].item[5].item[0].item[2].item[0].text = "Right Ear 500 Hz"
* item[6].item[5].item[0].item[2].item[0].type = #decimal
* item[6].item[5].item[0].item[2].item[0].required = false

* item[6].item[5].item[0].item[2].item[1].linkId = "threshold-right-1000"
* item[6].item[5].item[0].item[2].item[1].text = "Right Ear 1000 Hz"
* item[6].item[5].item[0].item[2].item[1].type = #decimal
* item[6].item[5].item[0].item[2].item[1].required = false

* item[6].item[5].item[0].item[2].item[2].linkId = "threshold-right-2000"
* item[6].item[5].item[0].item[2].item[2].text = "Right Ear 2000 Hz"
* item[6].item[5].item[0].item[2].item[2].type = #decimal
* item[6].item[5].item[0].item[2].item[2].required = false

* item[6].item[5].item[0].item[2].item[3].linkId = "threshold-right-3000"
* item[6].item[5].item[0].item[2].item[3].text = "Right Ear 3000 Hz"
* item[6].item[5].item[0].item[2].item[3].type = #decimal
* item[6].item[5].item[0].item[2].item[3].required = false

* item[6].item[5].item[0].item[2].item[4].linkId = "threshold-right-4000"
* item[6].item[5].item[0].item[2].item[4].text = "Right Ear 4000 Hz"
* item[6].item[5].item[0].item[2].item[4].type = #decimal
* item[6].item[5].item[0].item[2].item[4].required = false

* item[6].item[5].item[0].item[2].item[5].linkId = "threshold-left-500"
* item[6].item[5].item[0].item[2].item[5].text = "Left Ear 500 Hz"
* item[6].item[5].item[0].item[2].item[5].type = #decimal
* item[6].item[5].item[0].item[2].item[5].required = false

* item[6].item[5].item[0].item[2].item[6].linkId = "threshold-left-1000"
* item[6].item[5].item[0].item[2].item[6].text = "Left Ear 1000 Hz"
* item[6].item[5].item[0].item[2].item[6].type = #decimal
* item[6].item[5].item[0].item[2].item[6].required = false

* item[6].item[5].item[0].item[2].item[7].linkId = "threshold-left-2000"
* item[6].item[5].item[0].item[2].item[7].text = "Left Ear 2000 Hz"
* item[6].item[5].item[0].item[2].item[7].type = #decimal
* item[6].item[5].item[0].item[2].item[7].required = false

* item[6].item[5].item[0].item[2].item[8].linkId = "threshold-left-3000"
* item[6].item[5].item[0].item[2].item[8].text = "Left Ear 3000 Hz"
* item[6].item[5].item[0].item[2].item[8].type = #decimal
* item[6].item[5].item[0].item[2].item[8].required = false

* item[6].item[5].item[0].item[2].item[9].linkId = "threshold-left-4000"
* item[6].item[5].item[0].item[2].item[9].text = "Left Ear 4000 Hz"
* item[6].item[5].item[0].item[2].item[9].type = #decimal
* item[6].item[5].item[0].item[2].item[9].required = false

* item[6].item[5].item[1].linkId = "blood-pressure"
* item[6].item[5].item[1].text = "Blood Pressure"
* item[6].item[5].item[1].type = #group
* item[6].item[5].item[1].code = http://snomed.info/sct#75367002 "Blood pressure"

* item[6].item[5].item[1].item[0].linkId = "systolic"
* item[6].item[5].item[1].item[0].text = "Systolic (mmHg)"
* item[6].item[5].item[1].item[0].type = #integer
* item[6].item[5].item[1].item[0].required = true
* item[6].item[5].item[1].item[0].code = http://snomed.info/sct#271649006 "Systolic blood pressure"

* item[6].item[5].item[1].item[1].linkId = "diastolic"
* item[6].item[5].item[1].item[1].text = "Diastolic (mmHg)"
* item[6].item[5].item[1].item[1].type = #integer
* item[6].item[5].item[1].item[1].required = true
* item[6].item[5].item[1].item[1].code = http://snomed.info/sct#271650006 "Diastolic blood pressure"

* item[6].item[5].item[1].item[2].linkId = "bp-arm"
* item[6].item[5].item[1].item[2].text = "Arm used for reading"
* item[6].item[5].item[1].item[2].type = #choice
* item[6].item[5].item[1].item[2].required = false
* item[6].item[5].item[1].item[2].answerOption[0].valueString = "Right"
* item[6].item[5].item[1].item[2].answerOption[1].valueString = "Left"
* item[6].item[5].item[1].item[2].answerOption[2].valueString = "Both"

* item[6].item[5].item[2].linkId = "pulse"
* item[6].item[5].item[2].text = "Pulse"
* item[6].item[5].item[2].type = #integer
* item[6].item[5].item[2].required = true
* item[6].item[5].item[2].code = http://snomed.info/sct#8499008 "Pulse, function"

* item[6].item[5].item[3].linkId = "urinalysis"
* item[6].item[5].item[3].text = "Urinalysis"
* item[6].item[5].item[3].type = #group

* item[6].item[5].item[3].item[0].linkId = "urine-albumin"
* item[6].item[5].item[3].item[0].text = "Albumin"
* item[6].item[5].item[3].item[0].type = #string
* item[6].item[5].item[3].item[0].required = false
* item[6].item[5].item[3].item[0].code = http://snomed.info/sct#271000000 "Urine albumin measurement"

* item[6].item[5].item[3].item[1].linkId = "urine-sugar"
* item[6].item[5].item[3].item[1].text = "Sugar"
* item[6].item[5].item[3].item[1].type = #string
* item[6].item[5].item[3].item[1].required = false
* item[6].item[5].item[3].item[1].code = http://snomed.info/sct#170755004 "Urine sugar chart"

* item[6].item[5].item[4].linkId = "ecg"
* item[6].item[5].item[4].text = "Electrocardiogram (ECG)"
* item[6].item[5].item[4].type = #string
* item[6].item[5].item[4].required = false
* item[6].item[5].item[4].code = http://snomed.info/sct#54550000 "Electroencephalogram"

// AME CERTIFICATION SECTION 
* item[7].linkId = "ame-certification"
* item[7].text = "AME CERTIFICATION"
* item[7].type = #group

* item[7].item[0].linkId = "ame-comments"
* item[7].item[0].text = "AME Comments on History and Findings"
* item[7].item[0].type = #text
* item[7].item[0].required = false

* item[7].item[1].linkId = "disqualifying-defects"
* item[7].item[1].text = "DISQUALIFYING DEFECTS (List by item number)"
* item[7].item[1].type = #text
* item[7].item[1].required = false

* item[7].item[2].linkId = "medical-certificate"
* item[7].item[2].text = "Medical Certificate Issued"
* item[7].item[2].type = #choice
* item[7].item[2].required = true
* item[7].item[2].answerOption[0].valueString = "First Class"
* item[7].item[2].answerOption[1].valueString = "Second Class"
* item[7].item[2].answerOption[2].valueString = "Third Class"
* item[7].item[2].answerOption[3].valueString = "Not Issued - Letter of Denial Issued"
* item[7].item[2].answerOption[4].valueString = "Not Issued - Deferred for Further Evaluation"

* item[7].item[3].linkId = "certificate-limitations"
* item[7].item[3].text = "Certificate Limitations/Conditions"
* item[7].item[3].type = #text
* item[7].item[3].required = false

* item[7].item[4].linkId = "ame-declaration"
* item[7].item[4].text = "AME Declaration"
* item[7].item[4].type = #display
* item[7].item[4].required = true
* item[7].item[4].text = "I hereby certify that I have personally reviewed the medical history and personally examined the applicant named on this medical examination report. This report with any attachment embodies my findings completely and correctly."

* item[7].item[5].linkId = "ame-signature"
* item[7].item[5].text = "AME Signature"
* item[7].item[5].type = #string
* item[7].item[5].required = true

* item[7].item[6].linkId = "ame-name"
* item[7].item[6].text = "AME Name"
* item[7].item[6].type = #string
* item[7].item[6].required = true

* item[7].item[7].linkId = "ame-address"
* item[7].item[7].text = "AME Address"
* item[7].item[7].type = #string
* item[7].item[7].required = true

* item[7].item[8].linkId = "ame-designation-number"
* item[7].item[8].text = "AME Designation Number"
* item[7].item[8].type = #string
* item[7].item[8].required = true

* item[7].item[9].linkId = "date-of-examination"
* item[7].item[9].text = "Date of Examination"
* item[7].item[9].type = #date
* item[7].item[9].required = true





// GimbalEligibilityQuestionnaire.fsh
// FHIR Questionnaire defined in FSH (FHIR Shorthand) syntax based on G-SHOCK requirements

Alias: SCT = http://snomed.info/sct
Alias: LOINC = http://loinc.org

Instance: GShockEligibility
InstanceOf: Questionnaire
Title: "G-SHOCK Centrifugal Trainer Eligibility Questionnaire"
Description: "Pre-training screening questionnaire to determine eligibility for G-SHOCK multi-axis gimbal training"
Usage: #definition

* url = "http://aerospace-medicine.org/fhir/Questionnaire/g-shock-eligibility"
* version = "1.0.0"
* name = "GShockEligibilityQuestionnaire"
* title = "G-SHOCK Centrifugal Trainer Eligibility Questionnaire"
* status = #active
* experimental = false
* date = "2025-05-19"
* publisher = "Aerospace Medicine Implementation Guide Contributors"

* item[+]
  * linkId = "intro"
  * text = "G-SHOCK Centrifugal Trainer Eligibility Assessment"
  * type = #display
  
* item[+]
  * linkId = "personal-info"
  * text = "Personal Information"
  * type = #group
  
  * item[+]
    * linkId = "personal-info.sex"
    * text = "Sex"
    * type = #choice
    * required = true
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"
    * answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#other "Other"
  
  * item[+]
    * linkId = "personal-info.height"
    * text = "Height (m)"
    * type = #quantity
    * required = true
    * extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * extension[0].valueDecimal = 1.22
    * extension[1].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * extension[1].valueDecimal = 1.88
    * code = LOINC#8302-2 "Body height"
  
  * item[+]
    * linkId = "personal-info.weight"
    * text = "Weight (kg)"
    * type = #quantity
    * required = true
    * extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * extension[0].valueDecimal = 113.3
    * code = LOINC#29463-7 "Body weight"

* item[+]
  * linkId = "medical-history"
  * text = "Medical History"
  * type = #group
  
  * item[+]
    * linkId = "medical-history.head-neck-back"
    * text = "Do you have any current or past head, neck, or back injuries?"
    * type = #boolean
    * required = true
    * code = SCT#82271004 "Injury of head (disorder)"
  
  * item[+]
    * linkId = "medical-history.dizziness"
    * text = "Do you experience dizziness or vertigo?"
    * type = #boolean
    * required = true
    * code = SCT#404640003 "Dizziness (finding)"
  
  * item[+]
    * linkId = "medical-history.claustrophobia"
    * text = "Do you experience claustrophobia (fear of enclosed spaces)?"
    * type = #boolean
    * required = true
    * code = SCT#19887002 "Claustrophobia (finding)"
  
  * item[+]
    * linkId = "medical-history.pregnant"
    * text = "Are you currently pregnant?"
    * type = #boolean
    * required = true
    * enableWhen[+]
      * question = "personal-info.sex"
      * operator = #=
      * answerCoding.system = "http://hl7.org/fhir/administrative-gender"
      * answerCoding.code = #female
    * code = SCT#77386006 "Pregnancy (finding)"
  
  * item[+]
    * linkId = "medical-history.seizures"
    * text = "Do you have a history of seizures or epilepsy?"
    * type = #boolean
    * required = true
    * code = SCT#225931003 "At risk of epileptic fits (finding)"
  
  * item[+]
    * linkId = "medical-history.heart-issues"
    * text = "Do you have any heart or circulatory conditions, including high blood pressure?"
    * type = #boolean
    * required = true
    * code = SCT#49436004 "Atrial fibrillation (disorder)"
  
  * item[+]
    * linkId = "medical-history.heart-issues-details"
    * text = "Please describe any heart or circulatory conditions"
    * type = #text
    * enableWhen[+]
      * question = "medical-history.heart-issues"
      * operator = #=
      * answerBoolean = true

* item[+]
  * linkId = "medications"
  * text = "Current Medications"
  * type = #group
  
  * item[+]
    * linkId = "medications.current"
    * text = "Are you currently taking any medications?"
    * type = #boolean
    * required = true
  
  * item[+]
    * linkId = "medications.list"
    * text = "Please list all current medications"
    * type = #text
    * enableWhen[+]
      * question = "medications.current"
      * operator = #=
      * answerBoolean = true

* item[+]
  * linkId = "symptoms"
  * text = "Current Symptoms"
  * type = #group
  
  * item[+]
    * linkId = "symptoms.nausea"
    * text = "Are you currently experiencing any nausea?"
    * type = #boolean
    * required = true
    * code = SCT#422587007 "Nausea (finding)"
  
  * item[+]
    * linkId = "symptoms.headache"
    * text = "Are you currently experiencing any headache?"
    * type = #boolean
    * required = true
    * code = SCT#25064002 "Headache (finding)"

* item[+]
  * linkId = "previous-experience"
  * text = "Previous Experience"
  * type = #group
  
  * item[+]
    * linkId = "previous-experience.centrifuge"
    * text = "Have you previously experienced centrifuge training?"
    * type = #boolean
    * required = true
  
  * item[+]
    * linkId = "previous-experience.issues"
    * text = "Did you experience any issues during previous centrifuge training?"
    * type = #boolean
    * enableWhen[+]
      * question = "previous-experience.centrifuge"
      * operator = #=
      * answerBoolean = true
  
  * item[+]
    * linkId = "previous-experience.issues-details"
    * text = "Please describe any issues experienced during previous centrifuge training"
    * type = #text
    * enableWhen[+]
      * question = "previous-experience.issues"
      * operator = #=
      * answerBoolean = true

* item[+]
  * linkId = "certification"
  * text = "Certification"
  * type = #group
  
  * item[+]
    * linkId = "certification.accuracy"
    * text = "I certify that the information provided is accurate and complete"
    * type = #boolean
    * required = true

* item[+]
  * linkId = "examiner-section"
  * text = "To be completed by Medical Examiner"
  * type = #group
  
  * item[+]
    * linkId = "examiner.clearance"
    * text = "Is the candidate medically cleared for G-SHOCK training?"
    * type = #boolean
    * required = true
  
  * item[+]
    * linkId = "examiner.notes"
    * text = "Medical Examiner Notes"
    * type = #text
  
  * item[+]
    * linkId = "examiner.name"
    * text = "Medical Examiner Name"
    * type = #string
    * required = true
  
  * item[+]
    * linkId = "examiner.date"
    * text = "Examination Date"
    * type = #date
    * required = true



Instance: HERAAnalogMissionApplication
InstanceOf: Questionnaire
Title: "NASA HERA Analog Mission Application"
Description: "Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center"
Usage: #definition

* url = "http://example.org/Questionnaire/hera-analog-mission-application"
* version = "1.0"
* name = "HERAAnalogMissionApplication"
* title = "NASA HERA Analog Mission Application"
* status = #active
* subjectType = #Patient
* date = "2025-05-18"
* publisher = "NASA Flight Analog Project"
* description = "Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center"
* purpose = "To determine eligibility for the Flight Analog Project, including initial screening and evaluation to become a ground study subject."
* copyright = "This information collection meets the requirements of 44 U.S.C 3507. OMB control number 2700-0174, expires 04/30/2026."

// Introduction
* item[0].linkId = "intro"
* item[0].text = "Application for Analog Missions. Additional information regarding HERA studies at the Johnson Space Center including a video tour of the HERA facility can be found on the NASA website. Before applying to be a study participant we ask that you review this information for a better understanding of what your participation would entail if chosen as a subject for a future HERA mission."
* item[0].type = #display

// Privacy Statement
* item[+].linkId = "privacy-statement"
* item[=].text = "Privacy Act Statement: Pursuant to the Privacy Act of 1974, 5 U.S.C. § 552a, the following statement is furnished to individuals applying to become ground study subjects for the Flight Analog Project. Authority: This collection is authorized by 51 U.S.C. 20113(a) and 44 U.S.C. 3101. Purpose: We will use the information to determine eligibility for the Flight Analog Project. Effect of Nondisclosure: Supplying the information is voluntary on your part. However, failing to provide all or part of the information may prevent an accurate and timely decision on your application."
* item[=].type = #display

// Consent
* item[+].linkId = "consent"
* item[=].text = "By submitting this form, you consent to adding your responses to the analog subject registry. After reviewing your responses, further information may be requested. You may withdraw your information from this registry at any time by sending an e-mail to the recruitment team."
* item[=].type = #display

// US Citizenship
* item[+].linkId = "citizenship"
* item[=].text = "Are you a United States citizen?"
* item[=].type = #boolean
* item[=].required = true

// Confinement Consent
* item[+].linkId = "confinement-consent"
* item[=].text = "For HERA missions, are you willing to be confined and isolated for required periods of time?"
* item[=].type = #boolean
* item[=].required = true

// Confinement Details
* item[=].item[0].linkId = "confinement-details"
* item[=].item[0].text = "HERA mission duration includes a confined isolation of 45 days. In addition to the isolation phase, each mission includes 16 days of pre-mission data collection and training and 7 days of post-mission data collection, requiring a stay in Houston, TX of up to 72 days."
* item[=].item[0].type = #display

// Demographic Information
* item[+].linkId = "demographic-info"
* item[=].text = "Demographic Information"
* item[=].type = #group
* item[=].required = true

// First Name
* item[=].item[0].linkId = "firstName"
* item[=].item[0].text = "First Name"
* item[=].item[0].type = #string
* item[=].item[0].required = true

// Middle Name
* item[=].item[+].linkId = "middleName"
* item[=].item[=].text = "Middle Name"
* item[=].item[=].type = #string

// Last Name
* item[=].item[+].linkId = "lastName"
* item[=].item[=].text = "Last Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Phone Number
* item[=].item[+].linkId = "phoneNumber"
* item[=].item[=].text = "Phone Number"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Email Address
* item[=].item[+].linkId = "emailAddress"
* item[=].item[=].text = "Email Address"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Confirm Email Address
* item[=].item[+].linkId = "confirmEmailAddress"
* item[=].item[=].text = "Confirm Email Address"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Age Check
* item[+].linkId = "age-check"
* item[=].text = "Are you currently between the ages of 28 and 55?"
* item[=].type = #boolean
* item[=].required = true

// Birthdate
* item[+].linkId = "birthdate"
* item[=].text = "Birthdate"
* item[=].type = #date
* item[=].required = true

// Sex
* item[+].linkId = "sex"
* item[=].text = "Sex"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"

// Height
* item[+].linkId = "height"
* item[=].text = "Height (in inches). For HERA missions, height not to exceed 6' 2\" (74 inches)"
* item[=].type = #decimal
* item[=].required = true
// * item[=].maxValue = 74

// Weight
* item[+].linkId = "weight"
* item[=].text = "Weight (in pounds)"
* item[=].type = #decimal
* item[=].required = true

// Born Outside US
* item[+].linkId = "born-outside-us"
* item[=].text = "Were you born outside of the United States?"
* item[=].type = #boolean
* item[=].required = true

// Other Citizenship
* item[+].linkId = "other-citizenship"
* item[=].text = "Do you hold citizenship in any country other than the United States?"
* item[=].type = #boolean
* item[=].required = true

// Tobacco/Nicotine Use
* item[+].linkId = "tobacco-nicotine"
* item[=].text = "Do you use any tobacco or nicotine products (select all that apply)?"
* item[=].type = #choice
* item[=].repeats = true
* item[=].required = true
* item[=].answerOption[0].valueString = "None"
* item[=].answerOption[+].valueString = "Smoking"
* item[=].answerOption[+].valueString = "Vaping"
* item[=].answerOption[+].valueString = "Chewing"
* item[=].answerOption[+].valueString = "Skin Patches"
* item[=].answerOption[+].valueString = "Other"

// Medical Section
* item[+].linkId = "medical-section"
* item[=].text = "Medical History"
* item[=].type = #group
* item[=].required = true

// Metal in Body
* item[=].item[0].linkId = "metal-in-body"
* item[=].item[0].text = "Do you have any metal in your body other than dental work?"
* item[=].item[0].type = #boolean
* item[=].item[0].required = true

// Claustrophobia
* item[=].item[+].linkId = "claustrophobia"
* item[=].item[=].text = "Are you claustrophobic?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Allergies, GI, Diet
* item[=].item[+].linkId = "allergies-gi-diet"
* item[=].item[=].text = "Do you have any of the following?"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = "Allergies (including food)"
* item[=].item[=].answerOption[+].valueString = "GI Disorders"
* item[=].item[=].answerOption[+].valueString = "Dietary Limitations"

// Cardiovascular
* item[=].item[+].linkId = "cardiovascular"
* item[=].item[=].text = "Any cardiovascular or circulatory system issues?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Neurological
* item[=].item[+].linkId = "neurological"
* item[=].item[=].text = "Any neurological problems?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Musculoskeletal
* item[=].item[+].linkId = "musculoskeletal"
* item[=].item[=].text = "Any musculoskeletal problems?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Medications
* item[=].item[+].linkId = "medications"
* item[=].item[=].text = "Are you taking any medications?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Sleep Disorders
* item[=].item[+].linkId = "sleep-disorders"
* item[=].item[=].text = "Any sleep disorders such as sleep walking or use of sleep aids?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Psychiatric
* item[=].item[+].linkId = "psychiatric"
* item[=].item[=].text = "Any psychiatric disorders or history of mental illness?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Motion Sickness
* item[=].item[+].linkId = "motion-sickness"
* item[=].item[=].text = "Any motion sickness (not a disqualifier)?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// ADHD Treatment
* item[=].item[+].linkId = "adhd-treatment"
* item[=].item[=].text = "Any pharmacological treatment for ADHD?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Kidney Stones
* item[=].item[+].linkId = "kidney-stones"
* item[=].item[=].text = "Any history of kidney stones?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Ulcers
* item[=].item[+].linkId = "ulcers"
* item[=].item[=].text = "Any history of ulcers?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Epilepsy
* item[=].item[+].linkId = "epilepsy"
* item[=].item[=].text = "Any history of epilepsy or other disorders of the brain?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Blood Clots
* item[=].item[+].linkId = "blood-clots"
* item[=].item[=].text = "Any history of blood clots?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Family Seizures
* item[=].item[+].linkId = "family-seizures"
* item[=].item[=].text = "Any history of close relatives with seizures?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Bisphosphonate
* item[=].item[+].linkId = "bisphosphonate"
* item[=].item[=].text = "Are you currently on Bis-Phosphonate (for example, Fosamax, Boniva, or Reclast)?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Seizure Medications
* item[=].item[+].linkId = "seizure-meds"
* item[=].item[=].text = "Are you currently on any medication that might increase chances of seizures?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Experience and Background
* item[+].linkId = "experience-background"
* item[=].text = "Experience and Background"
* item[=].type = #group

// VR Experience
* item[=].item[0].linkId = "vr-experience" 
* item[=].item[0].text = "Have you ever experienced virtual reality?"
* item[=].item[0].type = #boolean
* item[=].item[0].required = true

// Military Background
* item[=].item[+].linkId = "military-background"
* item[=].item[=].text = "Do you have a military background?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

// Education
* item[=].item[+].linkId = "education"
* item[=].item[=].text = "What is your highest level of education in a STEM related field?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "Bachelor"
* item[=].item[=].answerOption[+].valueString = "Master of Science"
* item[=].item[=].answerOption[+].valueString = "PhD"
* item[=].item[=].answerOption[+].valueString = "Medical Doctor"
* item[=].item[=].answerOption[+].valueString = "Other"

// Employment
* item[=].item[+].linkId = "employment"
* item[=].item[=].text = "Employment Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "US Civil Servant"
* item[=].item[=].answerOption[+].valueString = "Government Contractor"
* item[=].item[=].answerOption[+].valueString = "Military"
* item[=].item[=].answerOption[+].valueString = "Other"
* item[=].item[=].answerOption[+].valueString = "Unemployed"

// Referral Source
* item[=].item[+].linkId = "referral-source"
* item[=].item[=].text = "How did you hear about HERA?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "Professional Organization"
* item[=].item[=].answerOption[+].valueString = "Recruitment Announcement"
* item[=].item[=].answerOption[+].valueString = "Conference"
* item[=].item[=].answerOption[+].valueString = "Social Media" 
* item[=].item[=].answerOption[+].valueString = "Referred by Friend or Colleague"
* item[=].item[=].answerOption[+].valueString = "Online Search"
* item[=].item[=].answerOption[+].valueString = "Other"

// Additional Information
* item[+].linkId = "additional-info"
* item[=].text = "Please provide any additional information you wish us to consider in your application"
* item[=].type = #text
* item[=].maxLength = 500

// Submission Consent
* item[+].linkId = "submission-consent"
* item[=].text = "Submitting voluntary information constitutes your consent to the use of the information for the stated purpose. By submitting this form, you are providing voluntary consent to use the information submitted for the purpose stated. The final determination for clearance is the responsibility of NASA. You may be provided the opportunity to personally explain, refute, or clarify any information before a final decision is made."
* item[=].type = #display

// Process Information
* item[+].linkId = "process-info"
* item[=].text = "Typically, all applicants will be contacted within 5 to 7 business days following the submission of this application regarding its status. Eligible applicants may then be asked to provide additional screening information such as a professional resume or CV and must pass a federal background check."
* item[=].type = #display




// FHIR Questionnaire for Astronaut and Space Tourist Medical Screening
Instance: AstronautFlightReadinessQuestionnaire
InstanceOf: Questionnaire
Title: "Astronaut and Space Tourist Medical Screening Questionnaire"
Description: "A medical screening form for astronaut or space tourism flight readiness, based on FAA Form 8500-8, NASA/ESA standards, and commercial vendor practices."
Usage: #definition

* status = #active
* name = "AstronautFlightReadinessQuestionnaire"
* date = "2025-05-18"
* publisher = "Commercial Space Medical Consortium"

// Introduction
* item[0].linkId = "intro"
* item[0].text = "Application for Space Tourism activities."
* item[0].type = #display

// US Citizenship
* item[+].linkId = "citizenship"
* item[=].text = "Are you a United States citizen?"
* item[=].type = #boolean
* item[=].required = true

// Demographic Information
* item[+].linkId = "demographic-info"
* item[=].text = "Demographic Information"
* item[=].type = #group
* item[=].required = true

// First Name
* item[=].item[0].linkId = "firstName"
* item[=].item[0].text = "First Name"
* item[=].item[0].type = #string
* item[=].item[0].required = true

// Middle Name
* item[=].item[+].linkId = "middleName"
* item[=].item[=].text = "Middle Name"
* item[=].item[=].type = #string

// Last Name
* item[=].item[+].linkId = "lastName"
* item[=].item[=].text = "Last Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Phone Number
* item[=].item[+].linkId = "phoneNumber"
* item[=].item[=].text = "Phone Number"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Email Address
* item[=].item[+].linkId = "emailAddress"
* item[=].item[=].text = "Email Address"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Confirm Email Address
* item[=].item[+].linkId = "confirmEmailAddress"
* item[=].item[=].text = "Confirm Email Address"
* item[=].item[=].type = #string
* item[=].item[=].required = true

// Age Check
* item[+].linkId = "age-check"
* item[=].text = "Are you currently between the ages of 28 and 55?"
* item[=].type = #boolean
* item[=].required = true

// Birthdate
* item[+].linkId = "birthdate"
* item[=].text = "Birthdate"
* item[=].type = #date
* item[=].required = true

// Sex
* item[+].linkId = "sex"
* item[=].text = "Sex"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Female"


// Mission Profile
* item[+].linkId = "mission"
* item[=].text = "Flight Profile"
* item[=].type = #group
* item[=].item[+].linkId = "flightType"
* item[=].item[=].text = "Type of Flight"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Suborbital"
* item[=].item[=].answerOption[+].valueString = "Orbital"
* item[=].item[+].linkId = "flightDuration"
* item[=].item[=].text = "Planned Mission Duration (days)"
* item[=].item[=].type = #integer
* item[=].item[+].linkId = "crewRole"
* item[=].item[=].text = "Crew Role"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Tourist"
* item[=].item[=].answerOption[+].valueString = "Pilot"
* item[=].item[=].answerOption[+].valueString = "Mission Specialist"

// Medical History
* item[+].linkId = "medicalHistory"
* item[=].text = "Medical History"
* item[=].type = #group
* item[=].item[+].linkId = "cardiacHistory"
* item[=].item[=].text = "History of cardiac disease (e.g. heart attack, arrhythmia)?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "neuroHistory"
* item[=].item[=].text = "History of neurological issues (e.g. stroke, seizures)?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "psychHistory"
* item[=].item[=].text = "History of mental health disorders?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "respiratoryHistory"
* item[=].item[=].text = "History of respiratory disorders (e.g. asthma, COPD)?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "gastroHistory"
* item[=].item[=].text = "History of gastrointestinal disease?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "renalHistory"
* item[=].item[=].text = "History of kidney stones or renal disease?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "allergyHistory"
* item[=].item[=].text = "Do you have any allergies?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "motionSickness"
* item[=].item[=].text = "History of motion sickness requiring medication?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pregnancyStatus"
* item[=].item[=].text = "Are you currently pregnant?"
* item[=].item[=].type = #boolean

// Medications
* item[+].linkId = "medications"
* item[=].text = "Medications and Supplements"
* item[=].type = #group
* item[=].item[+].linkId = "medicationList"
* item[=].item[=].text = "List all current medications and supplements"
* item[=].item[=].type = #text

// Vitals and Physical Exam
* item[+].linkId = "vitals"
* item[=].text = "Vital Signs and Physical Exam"
* item[=].type = #group
* item[=].item[+].linkId = "height"
* item[=].item[=].text = "Height (cm)"
* item[=].item[=].type = #decimal
* item[=].item[+].linkId = "weight"
* item[=].item[=].text = "Weight (kg)"
* item[=].item[=].type = #decimal
* item[=].item[+].linkId = "bloodPressure"
* item[=].item[=].text = "Blood Pressure (mmHg)"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "heartRate"
* item[=].item[=].text = "Heart Rate (bpm)"
* item[=].item[=].type = #integer

// Functional Capacity
* item[+].linkId = "functionalTests"
* item[=].text = "Functional Capacity"
* item[=].type = #group
* item[=].item[+].linkId = "stairClimb"
* item[=].item[=].text = "Able to climb 7 flights of stairs in under 90 seconds?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "egressTest"
* item[=].item[=].text = "Able to exit seat unassisted in emergency simulation?"
* item[=].item[=].type = #boolean

// Certification
* item[+].linkId = "certification"
* item[=].text = "Medical Clearance and Physician Certification"
* item[=].type = #group
* item[=].item[+].linkId = "certStatus"
* item[=].item[=].text = "Medically cleared for spaceflight?"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "certPhysician"
* item[=].item[=].text = "Physician Name and Contact"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "certDate"
* item[=].item[=].text = "Date of Medical Certification"
* item[=].item[=].type = #date


Instance: TraumaEFASTQuestionnaire
InstanceOf: Questionnaire
Title: "Trauma EFAST Exam"
Usage: #example
* status = #draft
* subjectType = #Patient

* item[+].linkId = "pericardial"
* item[=].text = "Pericardial (Cardiac) View"
* item[=].type = #group
* item[=].item[+].linkId = "pericardialFluid"
* item[=].item[=].text = "Pericardial free fluid (effusion) present?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "cardiacMotion"
* item[=].item[=].text = "Cardiac motion present?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "cardiacImageQuality"
* item[=].item[=].text = "Image quality (cardiac view)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[+].linkId = "cardiacComments"
* item[=].item[=].text = "Comments (cardiac view)"
* item[=].item[=].type = #string

* item[+].linkId = "ruq"
* item[=].text = "Right Upper Quadrant (RUQ) View"
* item[=].type = #group
* item[=].item[0].linkId = "ruqFreeFluid"
* item[=].item[=].text = "Free fluid in RUQ (Morison’s pouch) present?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "ruqImageQuality"
* item[=].item[=].text = "Image quality (RUQ view)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[+].linkId = "ruqComments"
* item[=].item[=].text = "Comments (RUQ view)"
* item[=].item[=].type = #string

* item[+].linkId = "luq"
* item[=].text = "Left Upper Quadrant (LUQ) View"
* item[=].type = #group
* item[=].item[0].linkId = "luqFreeFluid"
* item[=].item[=].text = "Free fluid in LUQ (spleno-renal recess) present?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "luqImageQuality"
* item[=].item[=].text = "Image quality (LUQ view)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[+].linkId = "luqComments"
* item[=].item[=].text = "Comments (LUQ view)"
* item[=].item[=].type = #string

* item[+].linkId = "pelvis"
* item[=].text = "Pelvic (Suprapubic) View"
* item[=].type = #group
* item[=].item[0].linkId = "pelvicFreeFluid"
* item[=].item[=].text = "Free fluid in pelvic view present?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pelvicImageQuality"
* item[=].item[=].text = "Image quality (pelvic view)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[+].linkId = "pelvicComments"
* item[=].item[=].text = "Comments (pelvic view)"
* item[=].item[=].type = #string

* item[+].linkId = "lungs"
* item[=].text = "Lung Views (Pleura)"
* item[=].type = #group

* item[=].item[+].linkId = "rightLung"
* item[=].item[=].text = "Right Lung View"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "rightLungSliding"
* item[=].item[=].item[=].text = "Lung sliding present (right side)?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "rightLungImageQuality"
* item[=].item[=].item[=].text = "Image quality (right lung)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[=].item[+].linkId = "rightLungComments"
* item[=].item[=].item[=].text = "Comments (right lung)"
* item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "leftLung"
* item[=].item[=].text = "Left Lung View"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "leftLungSliding"
* item[=].item[=].item[=].text = "Lung sliding present (left side)?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "leftLungImageQuality"
* item[=].item[=].item[=].text = "Image quality (left lung)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueString = "Good"
* item[=].item[=].item[=].answerOption[1].valueString = "Moderate"
* item[=].item[=].item[=].answerOption[2].valueString = "Poor"
* item[=].item[=].item[+].linkId = "leftLungComments"
* item[=].item[=].item[=].text = "Comments (left lung)"
* item[=].item[=].item[=].type = #string

* item[+].linkId = "overallInterpretation"
* item[=].text = "Overall EFAST Interpretation"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding.code = #positive
* item[=].answerOption[0].valueCoding.display = "Positive – free fluid and/or pneumothorax identified"
* item[=].answerOption[1].valueCoding.code = #negative
* item[=].answerOption[1].valueCoding.display = "Negative – no free fluid or pneumothorax found"
* item[=].answerOption[2].valueCoding.code = #indeterminate
* item[=].answerOption[2].valueCoding.display = "Indeterminate / limited exam"
