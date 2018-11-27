class Api::V1::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :url, :multiplier, :conversion_unit, :user_id,
      recipe_ingredients_attributes: [ :recipe_ingredient_volume, :recipe_ingredient_unit, :recipe_ingredient_ounces, :recipe_ingredient_grams, :recipe_id, :ingredient_id ])
    end
  end
