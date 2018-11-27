class ChangeRecipeIngredientUnitToText < ActiveRecord::Migration[5.2]
  def change
    change_column :recipe_ingredients, :recipe_ingredient_unit, :text
  end
end
