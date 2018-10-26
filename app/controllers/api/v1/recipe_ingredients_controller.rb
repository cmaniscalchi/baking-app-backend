class Api::V1::RecipeIngredientsController < ApplicationController

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:unit, :quantity, :recipe_id, :ingredient_id, :id)
  end
end
