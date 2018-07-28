# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

regular = Section.create(name: 'Regular')
vegetarian = Section.create(name: 'Vegetarian')
happyHour = Section.create(name: 'Happy Hour')
dessert = Section.create(name: 'Dessert')
drinks = Section.create(name: 'Drinks')

beefTaco = FoodItem.create(name: 'Beef Taco', price: '15.00', Calories: '1200', section: regular)
chickenTaco = FoodItem.create(name: 'Chicken Taco', price: '15.00', Calories: '1100', section: regular)
FoodItem.create(name: 'Surprise Taco', price: '15.00', Calories: '1300', section: regular)
vegeTaco = FoodItem.create(name: 'Vege Taco', price: '15.00', Calories: '1100', section: vegetarian)
FoodItem.create(name: 'Cesar Salad', price: '8.50', Calories: '420', section: vegetarian)
tomatos = FoodItem.create(name: 'Tomatoes', price: '1.50', Calories: '10', section: vegetarian)
FoodItem.create(name: 'Gin & Tonic', price: '5.25', Calories: '200', section: happyHour)
FoodItem.create(name: 'Rum & Coke', price: '5.25', Calories: '200', section: happyHour)
FoodItem.create(name: 'Craft Beer', price: '5.25', Calories: '450', section: happyHour)
FoodItem.create(name: 'Orange Juice', price: '2.00', Calories: '150', section: drinks)
FoodItem.create(name: 'Milk', price: '2.00', Calories: '230', section: drinks)
FoodItem.create(name: 'Water', price: '4.00', Calories: '150', section: drinks)
iceCream = FoodItem.create(name: 'Ice Cream', price: '2.25', Calories: '300', section: dessert)
FoodItem.create(name: 'Carrot Cake', price: '6.75', Calories: '520', section: dessert)

tom = OrderItem.create(cost: '15.00', food_item: beefTaco)
sarah = OrderItem.create(cost: '15.00', food_item: chickenTaco)
john = OrderItem.create(cost: '2.25', food_item: iceCream)
mary = OrderItem.create(cost: '15.00', food_item: vegeTaco)
bob = OrderItem.create(cost: '1.50', food_item: tomatos)
man = OrderItem.create(cost: '15.00', food_item: beefTaco)

Customer.create(name: 'Tom Jones', phone_num: '7781234567', order_item: tom)
Customer.create(name: 'Sarah Parker', phone_num: '6045678901', order_item: sarah)
Customer.create(name: 'John Smith', phone_num: '7785464576', order_item: john)
Customer.create(name: 'Mary Poppens', phone_num: '6046970000', order_item: mary)
Customer.create(name: 'Bob Builder', phone_num: '6059789965', order_item: bob)
Customer.create(name: 'Man Poisoned', phone_num: '7786543345', order_item: man)
