class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.string :recipe_ingredient_volume
      t.string :recipe_ingredient_unit
      t.float :recipe_ingredient_ounces
      t.float :recipe_ingredient_grams
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
