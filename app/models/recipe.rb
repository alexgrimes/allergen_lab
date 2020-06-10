class Recipe < ApplicationRecord
  has_many :recipes_ingredients 
  has_many :ingredients, through: :recipes_ingredients
  belongs_to :user
end
