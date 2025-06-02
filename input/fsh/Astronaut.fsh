// Add these missing codes and definitions to your existing CodeSystems


// Missing Astronaut Profile - should be added to your Patient profiles
Profile: Astronaut
Parent: Patient
Id: Astronaut
Title: "Astronaut Patient Profile"
Description: "Patient profile for astronauts and space travelers"
* ^version = "1.0.0"
* ^status = #active

// Add any astronaut-specific constraints here
* active = true
* name 1..* MS
* identifier 0..* MS
* gender 0..1 MS
* birthDate 0..1 MS

// Example Instance
Instance: ExampleAstronaut
InstanceOf: Astronaut
Title: "Example Astronaut"
Description: "Example astronaut for testing radiation tracking"
* identifier[0].system = "http://nasa.gov/astronaut-id"
* identifier[0].value = "AST-001"
* active = true
* name[0].given = "Jane"
* name[0].family = "Astronaut"
* gender = #female
* birthDate = "1980-01-01"