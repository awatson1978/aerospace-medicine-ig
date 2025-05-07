// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: Astronaut
Parent: Patient
Title: "Astronaut"
Description: "Patient profile for flight crew on space craft."
* name 1..* MS

// Profile: SpaceTourist
// Parent: Patient
// Title: "Space Tourist"
// Description: "Patient profile for passengers on space craft."
// * name 1..* MS


Instance: CaptainJaneway
InstanceOf: Astronaut
Title: "Patient - Catherine Janeway"
Description: "Patient - Catherine Janeway"
* id = "janeway"
* name
  * given[0] = "Catherine"
  * family = "Janeway"


Instance: JamesKirk
InstanceOf: Astronaut
Title: "Patient - James Kirk"
Description: "Patient - James Kirk"
* id = "kirk"
* name
  * given[0] = "James"
  * family = "Kirk"

Instance: Sarek
InstanceOf: Astronaut
Title: "Patient - Ambassador Sarek"
Description: "Patient - Ambassador Sarek"
* id = "sarek"
* name
  * given[0] = "Sarek"
  * family = "Kirk"

Instance: RedShirt1
InstanceOf: Astronaut
Title: "Patient - Red Shirt 1"
Description: "Patient - Red Shirt 1"
* id = "redshirt1"
* name
  * given[0] = "One"
  * family = "Red"



Instance: RedShirt2
InstanceOf: Astronaut
Title: "Patient - Red Shirt 2"
Description: "Patient - Red Shirt 2"
* id = "redshirt2"
* name
  * given[0] = "Two"
  * family = "Red"


Instance: SpaceMiner1
InstanceOf: Astronaut
Title: "Patient - Space Miner 1"
Description: "Patient - Space Miner"
* id = "spaceminer1"
* name
  * given[0] = "Space"
  * family = "Miner"

Instance: SpaceConstructioneer1
InstanceOf: Astronaut
Title: "Patient - Space Construction 1"
Description: "Patient - Space Construction Engineer"
* id = "space-construction-engineer-1"
* name
  * given[0] = "Space"
  * family = "Constructioneer"

  Instance: SpaceEngineer
InstanceOf: Astronaut
Title: "Patient - Space Engineer"
Description: "Patient - Space Engineer"
* id = "space-engineer-1"
* name
  * given[0] = "Space"
  * family = "Engineer"