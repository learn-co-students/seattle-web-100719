class AddColumnToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :boss, :string
  end
end
