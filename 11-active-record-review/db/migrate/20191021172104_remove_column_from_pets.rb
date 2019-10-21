class RemoveColumnFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :employer_id, :integer
  end
end
