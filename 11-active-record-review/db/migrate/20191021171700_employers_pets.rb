class EmployersPets < ActiveRecord::Migration[5.2]
  def change
    create_table :employers_pets do |t|
      t.integer :employer_id
      t.integer :pet_id
    end
  end
end
