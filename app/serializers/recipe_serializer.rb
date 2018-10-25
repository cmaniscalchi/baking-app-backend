class RecipeSerializer < ActiveModel::Serializer
  attributes :recipe_name, :url, :multiplier, :conversion_unit, :user_id, :id
  belongs_to :user, serializer: UserSerializer
  has_many :ingredients
end
