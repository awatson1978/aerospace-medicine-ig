// Add these missing codes and definitions to your existing CodeSystems


// Astronaut patient profile: the subject of every crew-health example in this guide.
Profile: Astronaut
Parent: Patient
Id: astronaut
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
Usage: #example
* insert SyntheticExample
* identifier[0].system = "https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id"
* identifier[0].value = "AST-001"
* active = true
* name[0].given = "Jane"
* name[0].family = "Astronaut"
* gender = #female
* birthDate = "1980-01-01"