// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: SpaceCondition
Parent: Condition
Id: space-condition
Title: "Space Health Condition"
Description: "Health conditions specific to outerspace environment."



Instance: ConditionOsteoporosis
InstanceOf: SpaceCondition
Title: "Condition - Osteoporosis"
Description: "Microgravity induced bone loss."
Usage: #example
* insert SyntheticExample
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"
* code = http://snomed.info/sct#64859006 "Osteoporosis (disorder)"
* onsetDateTime = "2022"

Instance: ConditionOccularDegeneration
InstanceOf: SpaceCondition
Title: "Condition - Occular Degeneration"
Description: "Microgravity induced occular degeneration."
Usage: #example
* insert SyntheticExample
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"
* code = http://snomed.info/sct#23670006 "Decreased intraocular pressure (finding)"
* onsetDateTime = "2022"

Instance: ConditionRadiationExposure
InstanceOf: SpaceCondition
Title: "Condition - Radiation Exposure"
Description: "Radiation exposure (rads)"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Constructioneer"
* subject.reference = "Patient/space-construction-engineer-1"
* code = http://snomed.info/sct#218190002 "Exposure to radiation (event)"
* onsetDateTime = "2022"

Instance: ConditionAsphyxiation
InstanceOf: SpaceCondition
Title: "Condition - Asphyxiation"
Description: "Oxygen deprivation"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Engineer"
* subject.reference = "Patient/space-engineer-1"
* code = http://snomed.info/sct#74332007 "Death by asphyxiation (event)"
* onsetDateTime = "2022"

Instance: ConditionHypoxia
InstanceOf: SpaceCondition
Title: "Condition - Hypoxia"
Description: "Oxygen deprivation"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Engineer"
* subject.reference = "Patient/space-engineer-1"
* code = http://snomed.info/sct#389086002 "Hypoxia (disorder)"
* onsetDateTime = "2022"

Instance: ConditionStroke
InstanceOf: SpaceCondition
Title: "Condition - Stroke"
Description: "Cerebrovascular accident (disorder)"
Usage: #example
* insert SyntheticExample
* subject.display = "Catherine Janeway"
* subject.reference = "Patient/janeway"
* code = http://snomed.info/sct#230690007 "Cerebrovascular accident (disorder)"
* onsetDateTime = "2022"

Instance: ConditionHeartAttack
InstanceOf: SpaceCondition
Title: "Condition - Heart Attack"
Description: "Myocardial infarction (disorder)"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Constructioneer"
* subject.reference = "Patient/space-construction-engineer-1"
* code = http://snomed.info/sct#22298006 "Myocardial infarction (disorder)"
* onsetDateTime = "2022"

Instance: ConditionSmokeInhalation
InstanceOf: SpaceCondition
Title: "Condition - Smoke Inhalation"
Description: "Smoke inhalation injury (disorder)"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"
* code = http://snomed.info/sct#426936004 "Smoke inhalation injury (disorder)"
* onsetDateTime = "2022"

Instance: ConditionBurn
InstanceOf: SpaceCondition
Title: "Condition - Burn"
Description: "Burn injury (morphologic abnormality)"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"
* code = http://snomed.info/sct#48333001 "Burn injury (morphologic abnormality)"
* onsetDateTime = "2022"

Instance: ConditionBluntTrauma
InstanceOf: SpaceCondition
Title: "Condition - Blunt Trauma"
Description: "Blunt injury (disorder)"
Usage: #example
* insert SyntheticExample
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"
* code = http://snomed.info/sct#425359009 "Blunt injury (disorder)"
* onsetDateTime = "2022"


