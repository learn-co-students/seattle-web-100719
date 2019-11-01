class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.integer :recipe_id
      t.string :text

      t.timestamps
    end
  end
end
