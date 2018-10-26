class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :unit, :quantity, :recipe_id, :ingredient_id, :id
  belongs_to :recipe, serializer: RecipeSerializer
  belongs_to :ingredient, serializer:  IngredientSerializer
end
