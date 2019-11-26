class CreateDancers < ActiveRecord::Migration[6.0]
  def change
    create_table :dancers do |t|
      t.string :url, null: false
      t.string :description
      t.timestamps
    end
  end
end
