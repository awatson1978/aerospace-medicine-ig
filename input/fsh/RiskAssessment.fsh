Profile: SpaceRiskAssessment
Parent: RiskAssessment
Id: space-risk-assessment
Title: "Mission Risk Assessment"
Description: "Risk assessment for space missions, covering mission-level, oncologic, musculoskeletal and other spaceflight risks."

Instance: RiskAssesmentMission
InstanceOf: SpaceRiskAssessment
Title: "Risk - Mission"
Description: "Overall mission risk assessment for a space mission"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"

Instance: RiskAssesmentCancer
InstanceOf: SpaceRiskAssessment
Title: "Risk - Cancer"
Description: "Post-flight risk of cancer.  (i.e. cancer)"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"

Instance: RiskAssesmentAtmosphere
InstanceOf: SpaceRiskAssessment
Title: "Risk - Atmosphere"
Description: "Risk of flight running out of breathable atmosphere.  (i.e. suffocation)"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"

Instance: RiskAssesmentFlightRisk
InstanceOf: SpaceRiskAssessment
Title: "Risk - Catastrophic Failure"
Description: "Risk of flight having a catastrophic engineering failure. (i.e. explotion)"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"

Instance: RiskAssesmentCalorieRestriction
InstanceOf: SpaceRiskAssessment
Title: "Risk - Calorie Ristrction"
Description: "Risk of calorie restriction among passengers. (i.e. starvation)"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"


Instance: RiskAssesmentContamination
InstanceOf: SpaceRiskAssessment
Title: "Risk - Contamination"
Description: "Risk assessment of microbial contamination. (i.e. mildew)"
Usage: #example
* insert SyntheticExample
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"