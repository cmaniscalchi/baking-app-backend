class Api::V1::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :url, :multiplier, :conversion_unit, :user_id)
  end
end
