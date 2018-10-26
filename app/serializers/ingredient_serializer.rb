class IngredientSerializer < ActiveModel::Serializer
  attributes :ingredient_name, :volume, :ounces, :grams, :id
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
