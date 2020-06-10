class Recipe < ApplicationRecord
  has_many :recipes_ingredients 
  has_many :ingredients, through: :recipes_ingredients
  belongs_to :user

  def self.sort_by_ingredients
    self.all.sort_by { |recipe| -recipe.ingredients.count}
  end

end
