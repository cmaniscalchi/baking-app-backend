class Api::V1::IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:ingredient_name, :volume, :ounces, :grams, :id)
  end
end
