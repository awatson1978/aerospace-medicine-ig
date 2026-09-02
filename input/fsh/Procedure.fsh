CodeSystem: SpaceProcedureCS
Id: space-procedure-cs
Title: "Space Procedure Code System"
Description: "Operational procedures performed in spaceflight that have no SNOMED CT equivalent"
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^count = 3
* #eva "Extravehicular Activity" "Crewed activity outside the pressurized volume of a spacecraft or habitat"
* #vehicle-decompression "Vehicle Compartment Decompression" "Controlled reduction of cabin or airlock pressure"
* #vehicle-repressurization "Vehicle Compartment Repressurization" "Controlled restoration of cabin or airlock pressure"

Profile: SpaceProcedure
Parent: Procedure
Title: "Space Health Procedure"
Id: space-procedure
Description: "Health procedures performed in the spaceflight environment. Constrains Procedure for use with astronaut and analog-crew records."


Instance: ProcedureDecompression
InstanceOf: SpaceProcedure
Title: "Procedure - Decompression"
Description: "Decompression of vehicle compartment"
Usage: #example
* insert SyntheticExample
* code = SpaceProcedureCS#vehicle-decompression "Vehicle Compartment Decompression"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"

Instance: ProcedureCompression
InstanceOf: SpaceProcedure
Title: "Procedure - Compression"
Description: "Atmospheric compression of vehicle compartment"
Usage: #example
* insert SyntheticExample
* code = SpaceProcedureCS#vehicle-repressurization "Vehicle Compartment Repressurization"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"


Instance: ProcedureUltrasound
InstanceOf: SpaceProcedure
Title: "Procedure - Ultrasound"
Description: "Ultrasound scan of the abdomen"
Usage: #example
* insert SyntheticExample
* code = http://snomed.info/sct#45036003 "Ultrasonography of abdomen"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"


Instance: ProcedureBoneDensitometry
InstanceOf: SpaceProcedure
Title: "Procedure - Bone Densitometry"
Description: "Bone densitometry scan"
Usage: #example
* insert SyntheticExample
* code = http://snomed.info/sct#312681000 "Bone density scan"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"


Instance: ProcedureEyeExam
InstanceOf: SpaceProcedure
Title: "Procedure - Eye Exam"
Description: "Eye exam"
Usage: #example
* insert SyntheticExample
* code = http://snomed.info/sct#36228007 "Ophthalmic examination and evaluation"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"

Instance: ProcedureHearingExam
InstanceOf: SpaceProcedure
Title: "Procedure - Hearing Exam"
Description: "Hearing exam"
Usage: #example
* insert SyntheticExample
* code.text = "Audiometric hearing examination"
* status = #completed
* subject.display = "Space Miner"
* subject.reference = "Patient/spaceminer1"