class AddBrewIdToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :brew_id, :integer
  end
end
