
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipesIngredient.destroy_all
Allergen.destroy_all

# ************** USERS **************
sam = User.create(name: "Sam")
alex = User.create(name: "Alex")
emilio = User.create(name: "Emilio")

# ************** RECIPES **************
grilled_cheese = Recipe.create(dish_name: "Grilled Cheese", user_id: sam.id)
hotdog = Recipe.create(dish_name: "Hot Dog", user_id: sam.id)
pizza = Recipe.create(dish_name: "Pizza", user_id: emilio.id)

# ************** INGREDIENTS **************
cheese = Ingredient.create(ingredient_name: "Cheese")
ham = Ingredient.create(ingredient_name: "Ham")
pinapple = Ingredient.create(ingredient_name: "Pinapple")
onion = Ingredient.create(ingredient_name: "Onion")

# ************** ALLERGENS **************
Allergen.create(user_id: sam.id, ingredient_id: cheese.id)
Allergen.create(user_id: alex.id, ingredient_id: ham.id)
Allergen.create(user_id: emilio.id, ingredient_id: onion.id)
Allergen.create(user_id: alex.id, ingredient_id: cheese.id)

# ************** RECIPES-INGREDIENTS (JOIN TABLE) **************

# GRILLED CHEESE
RecipesIngredient.create(ingredient_id: cheese.id, recipe_id: grilled_cheese.id, quantity: 3)
RecipesIngredient.create(ingredient_id: ham.id, recipe_id: grilled_cheese.id, quantity: 3)
RecipesIngredient.create(ingredient_id: onion.id, recipe_id: grilled_cheese.id, quantity: 2)

# PIZZA
RecipesIngredient.create(ingredient_id: cheese.id, recipe_id: pizza.id, quantity: 1)
RecipesIngredient.create(ingredient_id: ham.id, recipe_id: pizza.id, quantity: 3)

# HOTDOG
RecipesIngredient.create(ingredient_id: onion.id, recipe_id: hotdog.id, quantity: 3)



