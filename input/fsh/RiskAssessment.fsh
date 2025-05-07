Profile: SpaceRiskAssesment
Parent: RiskAssessment
Title: "Mission Risk Assessment"
Description: "Risk assessment for space missions."

Instance: RiskAssesmentMission
InstanceOf: SpaceRiskAssesment
Title: "Risk - Mission"
Description: "Overall mission risk assessment for a space mission"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"

Instance: RiskAssesmentCancer
InstanceOf: SpaceRiskAssesment
Title: "Risk - Cancer"
Description: "Post-flight risk of cancer.  (i.e. cancer)"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"

Instance: RiskAssesmentAtmosphere
InstanceOf: SpaceRiskAssesment
Title: "Risk - Atmosphere"
Description: "Risk of flight running out of breathable atmosphere.  (i.e. suffocation)"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"

Instance: RiskAssesmentFlightRisk
InstanceOf: SpaceRiskAssesment
Title: "Risk - Catastrophic Failure"
Description: "Risk of flight having a catastrophic engineering failure. (i.e. explotion)"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"

Instance: RiskAssesmentCalorieRestriction
InstanceOf: SpaceRiskAssesment
Title: "Risk - Calorie Ristrction"
Description: "Risk of calorie restriction among passengers. (i.e. starvation)"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"


Instance: RiskAssesmentContamination
InstanceOf: SpaceRiskAssesment
Title: "Risk - Contamination"
Description: "Risk assessment of microbial contamination. (i.e. mildew)"
* status = #final
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/CaptainJaneway"