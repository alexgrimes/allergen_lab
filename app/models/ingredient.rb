class Ingredient < ApplicationRecord
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients
  has_many :allergens
  has_many :users, through: :allergens
end
