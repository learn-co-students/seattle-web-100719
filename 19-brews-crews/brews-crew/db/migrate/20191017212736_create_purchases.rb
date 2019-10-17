class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :customer_name
      t.float :price
      t.string :creamer_strength
      t.string :size
      t.string :special_instructions
      t.integer :brew_id

      t.timestamps
    end
  end
end
