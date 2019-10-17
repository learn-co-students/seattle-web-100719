class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |table_element|
      table_element.string :name
      table_element.string :title
      table_element.integer :salary
      table_element.integer :sick_leave
    end
  end
end
