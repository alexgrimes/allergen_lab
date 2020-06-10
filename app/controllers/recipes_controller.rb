class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :delete]
  
  def index
    @sorted_recipes = Recipe.sort_by_ingredients
  end

  def new
    @recipe = Recipe.new
    @users = User.all
  end

  def show
    
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  private
  
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:dish_name, :user_id)
  end

end
