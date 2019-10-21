class Employer < ActiveRecord::Base
  # MANY TO MANY
  has_many :employers_pets
  has_many :pets, through: :employers_pets

  # ONE TO MANY
  # has_many :pets
  #initialize
  #.all
  #.create
  # def initialize(argument)
  #   @argument = argument
  # end
end
