class IngredientSerializer < ActiveModel::Serializer
  attributes :ingredient_name, :unit, :quantity, :recipe_id, :id
  belongs_to :recipe, serializer: RecipeSerializer
end
