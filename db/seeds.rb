# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(name: "John", email: "john@mail.com", password: "qwe123")
apple = user.foods.create(name: "Apple", measurement_unit: "unit", price: 4)
wheat = user.foods.create(name: "Wheat", measurement_unit: "gram", price: 0.5)
sugar = user.foods.create(name: "Sugar", measurement_unit: "gram", price: 0.2)
user.save
recipe = Recipe.create(name: "Apple Pie", preparation_time: 30, cooking_time: 40, description: "lorem ipsum", public: true, user_id: user.id)
recipe.recipe_foods.create(quantity: 6, food_id: apple.id)
recipe.recipe_foods.create(quantity: 200, food_id: wheat.id)
recipe.save
recipe2 = Recipe.create(name: "Apple Candy", preparation_time: 10, cooking_time: 10, description: "candy", public: false, user_id: user.id)
recipe2.recipe_foods.create(quantity: 1, food_id: apple.id)
recipe2.recipe_foods.create(quantity: 100, food_id: sugar.id)
recipe2.save
user2 = User.create(name: "Maria", email: "maria@mail.com", password: "qwe123")
user2.save
recipe = Recipe.create(name: "Some recipe", preparation_time: 10, cooking_time: 10, description: "testing", public: false, user_id: user2.id)
recipe.save
