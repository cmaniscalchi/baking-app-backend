class Api::V1::RecipeIngredientsController < ApplicationController

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:recipe_ingredient_volume, :recipe_ingredient_unit, :recipe_ingredient_ounces, :recipe_ingredient_grams, :recipe_id, :ingredient_id)
  end
end
