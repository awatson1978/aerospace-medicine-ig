// // This is a simple example of a FSH file.
// // This file can be renamed, and additional FSH files can be added.
// // SUSHI will look for definitions in any file using the .fsh ending.

Profile: EnvironmentalMonitoring
Parent: Observation
Description: "Profile for environmental monitoring."
Title: "Environmental Monitoring"
// * name 1..* MS

Instance: Observation.Environmental-1
InstanceOf: EnvironmentalMonitoring
Title: "Observation - Environmental"
Description: "Environmental monitoring status report"
* status = #final
* code = http://loinc.org#environmental "Environmental Status"
// * name
//   * given[0] = "James"
//   * family = "Pond"