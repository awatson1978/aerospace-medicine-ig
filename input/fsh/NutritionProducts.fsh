// Backport of NutritionProduct resource from FHIR R5 for use in this R4 IG
Resource: NutritionProduct
Id: NutritionProduct
Title: "Nutrition Product"
Description: "A product used for nutritional purposes. Backported from FHIR R5 for use in this R4 implementation guide."
* ^status = #active
* status 1..1 code "active | inactive | entered-in-error"
* code 0..1 CodeableConcept "A code that identifies the product"
* category 0..* CodeableConcept "Broad product groups or categories"
* note 0..* Annotation "Comments made about the product"
* instance 0..* BackboneElement "One or more physical instances or occurrences of the nutrition product"
* instance.name 0..1 string "The name for the specific product"

Instance: ArtemisNutritionProduct001
InstanceOf: NutritionProduct
Title: "Coffee"
Usage: #example
* id = "artemis-001"
* status = #active
* code.text = "Coffee"
* category[0].text = "beverage"
* instance[0].name = "Coffee"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct002
InstanceOf: NutritionProduct
Title: "Green tea"
Usage: #example
* id = "artemis-002"
* status = #active
* code.text = "Green tea"
* category[0].text = "beverage"
* instance[0].name = "Green tea"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct003
InstanceOf: NutritionProduct
Title: "Mango-peach smoothie"
Usage: #example
* id = "artemis-003"
* status = #active
* code.text = "Mango-peach smoothie"
* category[0].text = "beverage"
* instance[0].name = "Mango-peach smoothie"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct004
InstanceOf: NutritionProduct
Title: "Chocolate breakfast drink"
Usage: #example
* id = "artemis-004"
* status = #active
* code.text = "Chocolate breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Chocolate breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct005
InstanceOf: NutritionProduct
Title: "Vanilla breakfast drink"
Usage: #example
* id = "artemis-005"
* status = #active
* code.text = "Vanilla breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Vanilla breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct006
InstanceOf: NutritionProduct
Title: "Strawberry breakfast drink"
Usage: #example
* id = "artemis-006"
* status = #active
* code.text = "Strawberry breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Strawberry breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct007
InstanceOf: NutritionProduct
Title: "Lemonade"
Usage: #example
* id = "artemis-007"
* status = #active
* code.text = "Lemonade"
* category[0].text = "beverage"
* instance[0].name = "Lemonade"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct008
InstanceOf: NutritionProduct
Title: "Apple cider"
Usage: #example
* id = "artemis-008"
* status = #active
* code.text = "Apple cider"
* category[0].text = "beverage"
* instance[0].name = "Apple cider"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct009
InstanceOf: NutritionProduct
Title: "Pineapple drink"
Usage: #example
* id = "artemis-009"
* status = #active
* code.text = "Pineapple drink"
* category[0].text = "beverage"
* instance[0].name = "Pineapple drink"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct010
InstanceOf: NutritionProduct
Title: "Cocoa"
Usage: #example
* id = "artemis-010"
* status = #active
* code.text = "Cocoa"
* category[0].text = "beverage"
* instance[0].name = "Cocoa"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct011
InstanceOf: NutritionProduct
Title: "Tortillas"
Usage: #example
* id = "artemis-011"
* status = #active
* code.text = "Tortillas"
* category[0].text = "grain"
* instance[0].name = "Tortillas"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct012
InstanceOf: NutritionProduct
Title: "Wheat flat bread"
Usage: #example
* id = "artemis-012"
* status = #active
* code.text = "Wheat flat bread"
* category[0].text = "grain"
* instance[0].name = "Wheat flat bread"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct013
InstanceOf: NutritionProduct
Title: "Vegetable quiche"
Usage: #example
* id = "artemis-013"
* status = #active
* code.text = "Vegetable quiche"
* category[0].text = "entrée"
* instance[0].name = "Vegetable quiche"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct014
InstanceOf: NutritionProduct
Title: "Breakfast sausage"
Usage: #example
* id = "artemis-014"
* status = #active
* code.text = "Breakfast sausage"
* category[0].text = "protein"
* instance[0].name = "Breakfast sausage"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct015
InstanceOf: NutritionProduct
Title: "Couscous with nuts"
Usage: #example
* id = "artemis-015"
* status = #active
* code.text = "Couscous with nuts"
* category[0].text = "entrée"
* instance[0].name = "Couscous with nuts"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct016
InstanceOf: NutritionProduct
Title: "Mango salad"
Usage: #example
* id = "artemis-016"
* status = #active
* code.text = "Mango salad"
* category[0].text = "fruit"
* instance[0].name = "Mango salad"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct017
InstanceOf: NutritionProduct
Title: "Granola with blueberries"
Usage: #example
* id = "artemis-017"
* status = #active
* code.text = "Granola with blueberries"
* category[0].text = "breakfast"
* instance[0].name = "Granola with blueberries"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct018
InstanceOf: NutritionProduct
Title: "Barbecued beef brisket"
Usage: #example
* id = "artemis-018"
* status = #active
* code.text = "Barbecued beef brisket"
* category[0].text = "protein"
* instance[0].name = "Barbecued beef brisket"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct019
InstanceOf: NutritionProduct
Title: "Broccoli au gratin"
Usage: #example
* id = "artemis-019"
* status = #active
* code.text = "Broccoli au gratin"
* category[0].text = "vegetable"
* instance[0].name = "Broccoli au gratin"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct020
InstanceOf: NutritionProduct
Title: "Spicy green beans"
Usage: #example
* id = "artemis-020"
* status = #active
* code.text = "Spicy green beans"
* category[0].text = "vegetable"
* instance[0].name = "Spicy green beans"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct021
InstanceOf: NutritionProduct
Title: "Macaroni & cheese"
Usage: #example
* id = "artemis-021"
* status = #active
* code.text = "Macaroni & cheese"
* category[0].text = "entrée"
* instance[0].name = "Macaroni & cheese"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct022
InstanceOf: NutritionProduct
Title: "Tropical fruit salad"
Usage: #example
* id = "artemis-022"
* status = #active
* code.text = "Tropical fruit salad"
* category[0].text = "fruit"
* instance[0].name = "Tropical fruit salad"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct023
InstanceOf: NutritionProduct
Title: "Butternut squash"
Usage: #example
* id = "artemis-023"
* status = #active
* code.text = "Butternut squash"
* category[0].text = "vegetable"
* instance[0].name = "Butternut squash"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct024
InstanceOf: NutritionProduct
Title: "Cauliflower"
Usage: #example
* id = "artemis-024"
* status = #active
* code.text = "Cauliflower"
* category[0].text = "vegetable"
* instance[0].name = "Cauliflower"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct025
InstanceOf: NutritionProduct
Title: "Almonds"
Usage: #example
* id = "artemis-025"
* status = #active
* code.text = "Almonds"
* category[0].text = "snack"
* instance[0].name = "Almonds"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct026
InstanceOf: NutritionProduct
Title: "Cashews"
Usage: #example
* id = "artemis-026"
* status = #active
* code.text = "Cashews"
* category[0].text = "snack"
* instance[0].name = "Cashews"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct027
InstanceOf: NutritionProduct
Title: "Maple syrup"
Usage: #example
* id = "artemis-027"
* status = #active
* code.text = "Maple syrup"
* category[0].text = "condiment"
* instance[0].name = "Maple syrup"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct028
InstanceOf: NutritionProduct
Title: "Chocolate spread"
Usage: #example
* id = "artemis-028"
* status = #active
* code.text = "Chocolate spread"
* category[0].text = "condiment"
* instance[0].name = "Chocolate spread"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct029
InstanceOf: NutritionProduct
Title: "Peanut butter"
Usage: #example
* id = "artemis-029"
* status = #active
* code.text = "Peanut butter"
* category[0].text = "condiment"
* instance[0].name = "Peanut butter"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct030
InstanceOf: NutritionProduct
Title: "Almond butter"
Usage: #example
* id = "artemis-030"
* status = #active
* code.text = "Almond butter"
* category[0].text = "condiment"
* instance[0].name = "Almond butter"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct031
InstanceOf: NutritionProduct
Title: "Hot sauce"
Usage: #example
* id = "artemis-031"
* status = #active
* code.text = "Hot sauce"
* category[0].text = "condiment"
* instance[0].name = "Hot sauce"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct032
InstanceOf: NutritionProduct
Title: "Spicy mustard"
Usage: #example
* id = "artemis-032"
* status = #active
* code.text = "Spicy mustard"
* category[0].text = "condiment"
* instance[0].name = "Spicy mustard"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct033
InstanceOf: NutritionProduct
Title: "Strawberry jam"
Usage: #example
* id = "artemis-033"
* status = #active
* code.text = "Strawberry jam"
* category[0].text = "condiment"
* instance[0].name = "Strawberry jam"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct034
InstanceOf: NutritionProduct
Title: "Honey"
Usage: #example
* id = "artemis-034"
* status = #active
* code.text = "Honey"
* category[0].text = "condiment"
* instance[0].name = "Honey"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct035
InstanceOf: NutritionProduct
Title: "Cinnamon"
Usage: #example
* id = "artemis-035"
* status = #active
* code.text = "Cinnamon"
* category[0].text = "condiment"
* instance[0].name = "Cinnamon"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct036
InstanceOf: NutritionProduct
Title: "Cookies"
Usage: #example
* id = "artemis-036"
* status = #active
* code.text = "Cookies"
* category[0].text = "dessert"
* instance[0].name = "Cookies"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct037
InstanceOf: NutritionProduct
Title: "Chocolate"
Usage: #example
* id = "artemis-037"
* status = #active
* code.text = "Chocolate"
* category[0].text = "dessert"
* instance[0].name = "Chocolate"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct038
InstanceOf: NutritionProduct
Title: "Cake"
Usage: #example
* id = "artemis-038"
* status = #active
* code.text = "Cake"
* category[0].text = "dessert"
* instance[0].name = "Cake"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct039
InstanceOf: NutritionProduct
Title: "Candy-coated almonds"
Usage: #example
* id = "artemis-039"
* status = #active
* code.text = "Candy-coated almonds"
* category[0].text = "dessert"
* instance[0].name = "Candy-coated almonds"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct040
InstanceOf: NutritionProduct
Title: "Cobbler"
Usage: #example
* id = "artemis-040"
* status = #active
* code.text = "Cobbler"
* category[0].text = "dessert"
* instance[0].name = "Cobbler"
* note[0].text = "Published Artemis II example menu item"

Instance: ArtemisNutritionProduct041
InstanceOf: NutritionProduct
Title: "Pudding"
Usage: #example
* id = "artemis-041"
* status = #active
* code.text = "Pudding"
* category[0].text = "dessert"
* instance[0].name = "Pudding"
* note[0].text = "Published Artemis II example menu item"

