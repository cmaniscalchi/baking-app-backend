class User < ApplicationRecord
  has_many :recipes
  has_many :recipe_ingredients, through: :recipes
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
end
