require 'pry'
pets = [
  {age: "12", owner: "Jenn", name: "bear", type:"dog" },
  {age: "6", owner: "Jacob", name: "chico", type:"dog" },
  {age: "5", owner: "Shawn", name: "fluffy", type:"iguana" },
  {age: "5", owner: "Robin", name: "sif", type:"dog" },
  {age: "6", owner: "Matt", name: "Remi", type:"dog" }
]

class Pet
  # This writes out our reader methods
  attr_reader(:age, :owner, :name, :type)
  # This is our setter methods
  attr_writer(:age, :owner)
  # writes both reader and setter
  # attr_accessor ()

  #class variable
  @@all = []
  def initialize(age, owner, name, type)
    #age is a local variable.
    # @age is an instance variable.
    ## Getter and a setter
    @age = age
    ## G && S
    @owner = owner
    ## Getter
    @name = name
    ## Getter
    @type = type
    # binding.pry
    # @@all << {age: @age, owner: @owner, name: @name, type: @type}
    @@all << self
  end

  def self.all
    @@all
  end

  #setters
  # def age=(age)
  #   @age = age
  # end
  #
  # def owner=(owner)
  #   @owner = owner
  # end

  #getter
  # def name
  #   @name
  # end
  #
  # def owner
  #   @owner
  # end
  #
  # def age
  #   @age
  # end
  #
  # def type
  #   @type
  # end
end

Pet.new("12", "Jenn", "bear", "dog" )
Pet.new("6","Jacob", "chico", "dog" )
Pet.new("5","Shawn", "fluffy", "iguana" )
Pet.new("5","Robin", "sif", "dog" )
Pet.new("6","Matt", "Remi", "dog" )
Pry.start
0
