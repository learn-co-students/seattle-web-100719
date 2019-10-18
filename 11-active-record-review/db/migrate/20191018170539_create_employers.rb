class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :title
      t.integer :salary
      t.integer :sick_leave
    end
  end
end
