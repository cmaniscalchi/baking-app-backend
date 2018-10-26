class IngredientSerializer < ActiveModel::Serializer
  attributes :ingredient_name, :ingredient_volume, :ingredient_unit, :ingredient_ounces, :ingredient_grams, :id
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
