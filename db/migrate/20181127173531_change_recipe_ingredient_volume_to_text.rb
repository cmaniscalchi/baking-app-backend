class ChangeRecipeIngredientVolumeToText < ActiveRecord::Migration[5.2]
  def change
    change_column :recipe_ingredients, :recipe_ingredient_volume, :text
  end
end
