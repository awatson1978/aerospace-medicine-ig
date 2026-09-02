// Logical model of the FHIR R5 NutritionProduct resource, for use in this R4 guide.
// NutritionProduct does not exist in R4, so it is carried as a logical model whose
// instances (the Artemis II crew menu) are validated as logical-model examples. The
// logical-target extension lets SUSHI and the IG Publisher accept instances of it.
Logical: NutritionProduct
Parent: Base
Id: NutritionProduct
Title: "Nutrition Product (logical model)"
Description: "A product used for nutritional purposes. Logical model mirroring the FHIR R5 NutritionProduct resource so that R4 implementations can exchange space food-item catalogues; instances carry resourceType NutritionProduct."
* ^status = #active
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* id 0..1 id "Logical id of this product record"
* meta 0..1 Meta "Metadata about the record, including provenance (meta.source) and the HTEST tag"
* status 1..1 code "active | inactive | entered-in-error"
* code 0..1 CodeableConcept "A code that identifies the product"
* category 0..* CodeableConcept "Broad product groups or categories"
* note 0..* Annotation "Comments made about the product"
* instance 0..* BackboneElement "One or more physical instances or occurrences of the nutrition product"
* instance.name 0..1 string "The name for the specific product"

Instance: artemis-001
InstanceOf: NutritionProduct
Title: "Coffee"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Coffee"
* category[0].text = "beverage"
* instance[0].name = "Coffee"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-002
InstanceOf: NutritionProduct
Title: "Green tea"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Green tea"
* category[0].text = "beverage"
* instance[0].name = "Green tea"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-003
InstanceOf: NutritionProduct
Title: "Mango-peach smoothie"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Mango-peach smoothie"
* category[0].text = "beverage"
* instance[0].name = "Mango-peach smoothie"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-004
InstanceOf: NutritionProduct
Title: "Chocolate breakfast drink"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Chocolate breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Chocolate breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-005
InstanceOf: NutritionProduct
Title: "Vanilla breakfast drink"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Vanilla breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Vanilla breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-006
InstanceOf: NutritionProduct
Title: "Strawberry breakfast drink"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Strawberry breakfast drink"
* category[0].text = "beverage"
* instance[0].name = "Strawberry breakfast drink"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-007
InstanceOf: NutritionProduct
Title: "Lemonade"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Lemonade"
* category[0].text = "beverage"
* instance[0].name = "Lemonade"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-008
InstanceOf: NutritionProduct
Title: "Apple cider"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Apple cider"
* category[0].text = "beverage"
* instance[0].name = "Apple cider"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-009
InstanceOf: NutritionProduct
Title: "Pineapple drink"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Pineapple drink"
* category[0].text = "beverage"
* instance[0].name = "Pineapple drink"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-010
InstanceOf: NutritionProduct
Title: "Cocoa"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cocoa"
* category[0].text = "beverage"
* instance[0].name = "Cocoa"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-011
InstanceOf: NutritionProduct
Title: "Tortillas"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Tortillas"
* category[0].text = "grain"
* instance[0].name = "Tortillas"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-012
InstanceOf: NutritionProduct
Title: "Wheat flat bread"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Wheat flat bread"
* category[0].text = "grain"
* instance[0].name = "Wheat flat bread"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-013
InstanceOf: NutritionProduct
Title: "Vegetable quiche"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Vegetable quiche"
* category[0].text = "entrée"
* instance[0].name = "Vegetable quiche"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-014
InstanceOf: NutritionProduct
Title: "Breakfast sausage"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Breakfast sausage"
* category[0].text = "protein"
* instance[0].name = "Breakfast sausage"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-015
InstanceOf: NutritionProduct
Title: "Couscous with nuts"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Couscous with nuts"
* category[0].text = "entrée"
* instance[0].name = "Couscous with nuts"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-016
InstanceOf: NutritionProduct
Title: "Mango salad"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Mango salad"
* category[0].text = "fruit"
* instance[0].name = "Mango salad"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-017
InstanceOf: NutritionProduct
Title: "Granola with blueberries"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Granola with blueberries"
* category[0].text = "breakfast"
* instance[0].name = "Granola with blueberries"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-018
InstanceOf: NutritionProduct
Title: "Barbecued beef brisket"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Barbecued beef brisket"
* category[0].text = "protein"
* instance[0].name = "Barbecued beef brisket"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-019
InstanceOf: NutritionProduct
Title: "Broccoli au gratin"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Broccoli au gratin"
* category[0].text = "vegetable"
* instance[0].name = "Broccoli au gratin"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-020
InstanceOf: NutritionProduct
Title: "Spicy green beans"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Spicy green beans"
* category[0].text = "vegetable"
* instance[0].name = "Spicy green beans"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-021
InstanceOf: NutritionProduct
Title: "Macaroni & cheese"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Macaroni & cheese"
* category[0].text = "entrée"
* instance[0].name = "Macaroni & cheese"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-022
InstanceOf: NutritionProduct
Title: "Tropical fruit salad"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Tropical fruit salad"
* category[0].text = "fruit"
* instance[0].name = "Tropical fruit salad"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-023
InstanceOf: NutritionProduct
Title: "Butternut squash"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Butternut squash"
* category[0].text = "vegetable"
* instance[0].name = "Butternut squash"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-024
InstanceOf: NutritionProduct
Title: "Cauliflower"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cauliflower"
* category[0].text = "vegetable"
* instance[0].name = "Cauliflower"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-025
InstanceOf: NutritionProduct
Title: "Almonds"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Almonds"
* category[0].text = "snack"
* instance[0].name = "Almonds"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-026
InstanceOf: NutritionProduct
Title: "Cashews"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cashews"
* category[0].text = "snack"
* instance[0].name = "Cashews"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-027
InstanceOf: NutritionProduct
Title: "Maple syrup"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Maple syrup"
* category[0].text = "condiment"
* instance[0].name = "Maple syrup"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-028
InstanceOf: NutritionProduct
Title: "Chocolate spread"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Chocolate spread"
* category[0].text = "condiment"
* instance[0].name = "Chocolate spread"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-029
InstanceOf: NutritionProduct
Title: "Peanut butter"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Peanut butter"
* category[0].text = "condiment"
* instance[0].name = "Peanut butter"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-030
InstanceOf: NutritionProduct
Title: "Almond butter"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Almond butter"
* category[0].text = "condiment"
* instance[0].name = "Almond butter"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-031
InstanceOf: NutritionProduct
Title: "Hot sauce"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Hot sauce"
* category[0].text = "condiment"
* instance[0].name = "Hot sauce"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-032
InstanceOf: NutritionProduct
Title: "Spicy mustard"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Spicy mustard"
* category[0].text = "condiment"
* instance[0].name = "Spicy mustard"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-033
InstanceOf: NutritionProduct
Title: "Strawberry jam"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Strawberry jam"
* category[0].text = "condiment"
* instance[0].name = "Strawberry jam"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-034
InstanceOf: NutritionProduct
Title: "Honey"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Honey"
* category[0].text = "condiment"
* instance[0].name = "Honey"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-035
InstanceOf: NutritionProduct
Title: "Cinnamon"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cinnamon"
* category[0].text = "condiment"
* instance[0].name = "Cinnamon"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-036
InstanceOf: NutritionProduct
Title: "Cookies"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cookies"
* category[0].text = "dessert"
* instance[0].name = "Cookies"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-037
InstanceOf: NutritionProduct
Title: "Chocolate"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Chocolate"
* category[0].text = "dessert"
* instance[0].name = "Chocolate"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-038
InstanceOf: NutritionProduct
Title: "Cake"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cake"
* category[0].text = "dessert"
* instance[0].name = "Cake"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-039
InstanceOf: NutritionProduct
Title: "Candy-coated almonds"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Candy-coated almonds"
* category[0].text = "dessert"
* instance[0].name = "Candy-coated almonds"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-040
InstanceOf: NutritionProduct
Title: "Cobbler"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Cobbler"
* category[0].text = "dessert"
* instance[0].name = "Cobbler"
* note[0].text = "Published Artemis II example menu item"

Instance: artemis-041
InstanceOf: NutritionProduct
Title: "Pudding"
Usage: #example
* insert SyntheticExample
* status = #active
* code.text = "Pudding"
* category[0].text = "dessert"
* instance[0].name = "Pudding"
* note[0].text = "Published Artemis II example menu item"

