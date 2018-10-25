class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :url
      t.float :multiplier
      t.string :conversion_unit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
