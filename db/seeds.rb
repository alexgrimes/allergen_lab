User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipesIngredient.destroy_all
Allergen.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sam = User.create(name: "Sam")
alex = User.create(name: "Alex")

grilled_cheese = Recipe.create(dish_name: "Grilled Cheese", user_id: sam.id)
pizza = Recipe.create(dish_name: "Grilled Cheese", user_id: sam.id)

cheese = Ingredient.create(ingredient_name: "Cheese")
ham = Ingredient.create(ingredient_name: "Ham")
onion = Ingredient.create(ingredient_name: "Onion")

dairy = Allergen.create(user_id: sam.id, ingredient_id: cheese.id)

RecipesIngredient.create(ingredient_id: cheese.id, recipe_id: grilled_cheese.id, quantity: 2)
RecipesIngredient.create(ingredient_id: ham.id, recipe_id: grilled_cheese.id, quantity: 2)
RecipesIngredient.create(ingredient_id: onion.id, recipe_id: grilled_cheese.id, quantity: 2)


RecipesIngredient.create(ingredient_id: cheese.id, recipe_id: grilled_cheese.id, quantity: 2)
RecipesIngredient.create(ingredient_id: ham.id, recipe_id: grilled_cheese.id, quantity: 2)
RecipesIngredient.create(ingredient_id: onion.id, recipe_id: grilled_cheese.id, quantity: 2)


