class Pet < ActiveRecord::Base
  # MANY TO MANY
  has_many :employers_pets
  has_many :employers, through: :employers_pets
  # ONE TO MANY
  # belongs_to :employer
end
