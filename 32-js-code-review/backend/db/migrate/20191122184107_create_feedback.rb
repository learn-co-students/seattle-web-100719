class CreateFeedback < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback do |t|
      t.string :content
      t.integer :dancer_id, null: false
    end
  end
end
