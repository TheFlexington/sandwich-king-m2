# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'Destroyed Users'
Sandwich.destroy_all
puts 'Destroyed sandwiches'

User.create(user_name: Faker::Name.name)
User.create(user_name: Faker::Name.name)
User.create(user_name: Faker::Name.name)
User.create(user_name: Faker::Name.name)

puts "making sammies"
Sandwich.create(name: "Butter Bean", price: 8.01)
Sandwich.create(name: "Choco Taco", price: 3.99)
Sandwich.create(name: "Nutty Nugent", price: 5.99)
Sandwich.create(name: "Pelvis Elvis", price: 6.66)

# puts "making user sammies"
# UserSandwich.create(user_id: 2, sandwich_id: 1)
# UserSandwich.create(user_id: 3, sandwich_id: 2)
# UserSandwich.create(user_id: 4, sandwich_id: 3)
# UserSandwich.create(user_id: 5, sandwich_id: 4)

puts "making ingredients"
Ingredient.create(name: "Vanilla", component: "ice cream")
Ingredient.create(name: "Mint Chip ", component: "ice cream")
Ingredient.create(name: "Peanut Butter", component: "ice cream")
Ingredient.create(name: "Cookie Dough", component: "ice cream")
Ingredient.create(name: "Chocolate", component: "ice cream")
Ingredient.create(name: "Neopolitan", component: "ice cream")
Ingredient.create(name: "Peanut Butter", component: "cookie")
Ingredient.create(name: "Chocolate Chip", component: "cookie")
Ingredient.create(name: "Oatmeal", component: "cookie")
Ingredient.create(name: "Lemon", component: "cookie")
Ingredient.create(name: "Snickerdoodle", component: "cookie")
Ingredient.create(name: "Fudge", component: "cookie")
Ingredient.create(name: "Sprinkles", component: "toppings")
Ingredient.create(name: "Chocolate Syrup", component: "toppings")
Ingredient.create(name: "M & Ms", component: "toppings")
Ingredient.create(name: "Gummi Bears", component: "toppings")
Ingredient.create(name: "Coconut", component: "toppings")