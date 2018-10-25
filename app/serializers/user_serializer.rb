class UserSerializer < ActiveModel::Serializer
  attributes :user_name, :email, :id
  has_many :recipes
  has_many :ingredients, through: :recipes
end
