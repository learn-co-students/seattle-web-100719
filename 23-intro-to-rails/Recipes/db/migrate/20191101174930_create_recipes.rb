class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :name
      t.string :instructions
      t.time :cooktime
      t.datetime :invented
      t.integer :servings

      t.timestamps
    end
  end
end
