class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.sort_by_users 
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @recipes = @ingredient.recipes
  end 


end
