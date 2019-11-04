class ChangeColumnInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :author_id, :integer
  end
end
