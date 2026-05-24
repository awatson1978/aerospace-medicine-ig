// EVA Systems Expansion
// WP18: NASA OIG IG-26-006 (xEVAS audit); Harwood MIT thesis (2026)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: EVASuitStateCS
Id: eva-suit-state-cs
Title: "EVA Suit State Code System"
Description: "Operational states of EVA suit systems"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #microgravity-config "Microgravity Configuration" "Suit configured for microgravity EVA operations"
* #planetary-surface-config "Planetary Surface Configuration" "Suit configured for planetary surface EVA with lower-body mobility"
* #iva-rescue-config "IVA Rescue Configuration" "Suit configured as emergency pressure garment for IVA rescue"
* #pressurization-test "Pressurization Test" "Suit undergoing leak check and pressurization verification"
* #stowed "Stowed" "Suit in storage configuration, not actively deployed"

CodeSystem: SuitProvisioningStatusCS
Id: suit-provisioning-status-cs
Title: "Suit Provisioning Status Code System"
Description: "Provisioning and logistics status of EVA suit assets"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #pre-positioned "Pre-positioned" "Suit pre-positioned at destination before crew arrival"
* #in-transit "In Transit" "Suit in transit to destination"
* #deployed-primary "Deployed - Primary" "Suit deployed as primary EVA asset"
* #deployed-backup "Deployed - Backup" "Suit deployed as backup/contingency EVA asset"
* #maintenance-required "Maintenance Required" "Suit requires maintenance before next EVA"
* #end-of-life "End of Life" "Suit has exceeded operational life limit"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: EVASuitStateVS
Id: eva-suit-state-vs
Title: "EVA Suit State Value Set"
Description: "EVA suit operational states"
* ^experimental = false
* ^status = #active
* include codes from system EVASuitStateCS

ValueSet: SuitProvisioningStatusVS
Id: suit-provisioning-status-vs
Title: "Suit Provisioning Status Value Set"
Description: "Suit provisioning and logistics status"
* ^experimental = false
* ^status = #active
* include codes from system SuitProvisioningStatusCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: SuitOperationalState
Id: suit-operational-state
Title: "Suit Operational State"
Description: "Current operational configuration state of an EVA suit"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Device"
* value[x] only CodeableConcept
* valueCodeableConcept from EVASuitStateVS (extensible)

// =====================================================
// PROFILES
// =====================================================

Profile: XEVASSuitDefinition
Parent: DeviceDefinition
Id: xevas-suit-definition
Title: "xEVAS Suit Definition"
Description: "Definition of an Exploration Extravehicular Activity Suit (xEVAS) including model, capabilities, and operational parameters"
* ^version = "1.0.0"
* ^status = #active

* modelNumber 0..1 MS
* modelNumber ^short = "Suit model number"

* type 0..1 MS
* type ^short = "Suit type classification"

* manufacturerString 0..1 MS

* deviceName 0..* MS
* deviceName.name MS
* deviceName.type MS

* property 0..* MS
* property ^short = "Suit properties (pressure, O2 duration, thermal limits)"
* property.type MS
* property.valueQuantity MS

* note 0..* MS
* note ^short = "Additional capability notes"

* extension contains
    GravityContext named gravityContext 0..1 MS

Profile: EVASuitProvisioningRecord
Parent: SupplyDelivery
Id: eva-suit-provisioning-record
Title: "EVA Suit Provisioning Record"
Description: "Logistics record for EVA suit provisioning, delivery, and positioning"
* ^version = "1.0.0"
* ^status = #active

* status MS

* type 0..1 MS
* type ^short = "Supply delivery type"

* suppliedItem 0..1 MS
* suppliedItem.quantity 0..1 MS
* suppliedItem.quantity ^short = "Number of suits provisioned"
* suppliedItem.item[x] 0..1 MS
* suppliedItem.item[x] ^short = "Reference to xEVAS suit definition"

* occurrenceDateTime 0..1 MS
* occurrenceDateTime ^short = "Date of provisioning action"

* destination 0..1 MS
* destination ^short = "Destination (ISS, Gateway, lunar surface)"

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: SuitRedundancyAssessment
Parent: Observation
Id: suit-redundancy-assessment
Title: "Suit Redundancy Assessment"
Description: "Assessment of EVA suit redundancy status, consumables remaining, and maintenance schedule"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code ^short = "Suit redundancy assessment"

* subject 1..1 MS
* subject ^short = "Mission or vehicle being assessed"

* effective[x] 0..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    primarySuitStatus 0..1 MS and
    backupSuitStatus 0..1 MS and
    consumablesRemaining 0..1 MS and
    nextMaintenanceDue 0..1 MS

* component[primarySuitStatus].code.text = "Primary Suit Status"
* component[primarySuitStatus].value[x] only CodeableConcept
* component[primarySuitStatus].valueCodeableConcept from SuitProvisioningStatusVS (extensible)
* component[primarySuitStatus].valueCodeableConcept ^short = "Current status of primary EVA suit"

* component[backupSuitStatus].code.text = "Backup Suit Status"
* component[backupSuitStatus].value[x] only CodeableConcept
* component[backupSuitStatus].valueCodeableConcept from SuitProvisioningStatusVS (extensible)
* component[backupSuitStatus].valueCodeableConcept ^short = "Current status of backup EVA suit"

* component[consumablesRemaining].code.text = "Consumables Remaining"
* component[consumablesRemaining].value[x] only Quantity
* component[consumablesRemaining].valueQuantity.system = $ucum
* component[consumablesRemaining].valueQuantity.code = #h
* component[consumablesRemaining].valueQuantity ^short = "Remaining consumables in EVA-hours"

* component[nextMaintenanceDue].code.text = "Next Maintenance Due"
* component[nextMaintenanceDue].value[x] only dateTime
* component[nextMaintenanceDue].valueDateTime ^short = "Date next maintenance is due"

* extension contains
    MissionContext named missionContext 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: xEVAS-LunarSuit-Def-001
InstanceOf: XEVASSuitDefinition
Title: "xEVAS Lunar Suit Definition"
Description: "Axiom Space xEVAS suit definition for Artemis lunar surface operations"
Usage: #example

* modelNumber = "AxEMU-v2"
* manufacturerString = "Axiom Space"
* deviceName[0].name = "Axiom Extravehicular Mobility Unit (AxEMU)"
* deviceName[0].type = #user-friendly-name
* property[0].type.text = "Suit Pressure"
* property[0].valueQuantity[0].value = 8.2
* property[0].valueQuantity[0].unit = "psi"
* property[0].valueQuantity[0].system = $ucum
* property[0].valueQuantity[0].code = #[psi]
* property[1].type.text = "O2 Duration"
* property[1].valueQuantity[0].value = 8
* property[1].valueQuantity[0].unit = "hours"
* property[1].valueQuantity[0].system = $ucum
* property[1].valueQuantity[0].code = #h
* note.text = "Configured for lunar surface EVA with enhanced lower-body mobility, dust-resistant seals, and integrated PLSS"
* extension[gravityContext].valueCodeableConcept = GravityContextCS#lunar-gravity "Lunar Gravity (1/6g)"

Instance: ArtemisIII-SuitProvisioning-001
InstanceOf: EVASuitProvisioningRecord
Title: "Artemis III Suit Provisioning"
Description: "EVA suit provisioning record for Artemis III lunar landing mission"
Usage: #example

* status = #completed
* type = $sct#419891008 "Medical equipment"
* suppliedItem.quantity.value = 2
* suppliedItem.quantity.unit = "suits"
* suppliedItem.itemReference = Reference(DeviceDefinition/xEVAS-LunarSuit-Def-001)
* occurrenceDateTime = "2028-09-15"
* destination.display = "Artemis III HLS - Starship Lunar Lander"

Instance: SuitRedundancy-Assessment-001
InstanceOf: SuitRedundancyAssessment
Title: "ISS Suit Redundancy Assessment"
Description: "Quarterly redundancy assessment for ISS EVA suit inventory"
Usage: #example

* status = #final
* code.text = "EVA Suit Redundancy Assessment"
* subject.display = "International Space Station"
* effectiveDateTime = "2028-06-01T00:00:00Z"
* component[primarySuitStatus].code.text = "Primary Suit Status"
* component[primarySuitStatus].valueCodeableConcept = SuitProvisioningStatusCS#deployed-primary "Deployed - Primary"
* component[backupSuitStatus].code.text = "Backup Suit Status"
* component[backupSuitStatus].valueCodeableConcept = SuitProvisioningStatusCS#deployed-backup "Deployed - Backup"
* component[consumablesRemaining].code.text = "Consumables Remaining"
* component[consumablesRemaining].valueQuantity.value = 48
* component[consumablesRemaining].valueQuantity.unit = "hours"
* component[consumablesRemaining].valueQuantity.system = $ucum
* component[consumablesRemaining].valueQuantity.code = #h
* component[nextMaintenanceDue].code.text = "Next Maintenance Due"
* component[nextMaintenanceDue].valueDateTime = "2028-09-01"
