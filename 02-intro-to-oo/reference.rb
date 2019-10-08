require 'pry'

class Pet

  attr_reader :breed, :gender #:name, :age
  # attr_writer :age, :name
  attr_accessor :name, :age

  # @instance_variable
  # local_variable
  @@all = []

  def initialize(name, breed, age, gender)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    # binding.pry
    @@all << self
    # @location = location
  end

  def self.all
    @@all
  end
  # def name
  #   return @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end


  #
  # def breed
  #   @breed
  # end
  #
  # def age
  #   @age
  # end
  #
  # def age=(age)
  #   @age = age
  # end
  #
  # def gender
  #   @gender
  # end

end

grace_pet = {
  name: "melodie",
  breed: "toy poodle",
  age: 13,
  gender: "female"
}

marisa_pet = {
  name: "Callie",
  breed: "maltese",
  age: 4,
  gender: "female"
}

megan_pet = {
  name: "Patron",
  breed: "chuhuahua",
  age: 10,
  gender: "male"
}

megan_pet2 = {
  name: "Papyrus",
  breed: "calico",
  age: 11,
  gender: "female"
}

grace_pet_obj = Pet.new("melodie", "toy_poodle", 13, "female")
marisa_pet_obj = Pet.new("Callie", "maltese", 4, "female")
megan_pet_obj = Pet.new("Patron", "chuhuahua", 10, "male")
megan_pet2_obj = Pet.new("Papyrus", "calico", 11, "female")

# pet_objs = [grace_pet_obj, marisa_pet_obj,megan_pet_obj,megan_pet2_obj]

students_pets = [grace_pet,marisa_pet,megan_pet,megan_pet2]
Pry.start
0
