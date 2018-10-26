class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :recipe_ingredient_volume, :recipe_ingredient_unit, :recipe_ingredient_ounces, :recipe_ingredient_grams, :recipe_id, :ingredient_id, :id
  belongs_to :recipe, serializer: RecipeSerializer
  belongs_to :ingredient, serializer:  IngredientSerializer
end
