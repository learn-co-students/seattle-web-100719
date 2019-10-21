class ChangeColumnInPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :type, :breed
  end
end
