class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.string :ingredient_volume
      t.string :ingredient_unit
      t.float :ingredient_ounces
      t.float :ingredient_grams

      t.timestamps
    end
  end
end
