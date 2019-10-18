class Panimals
    attr_accessor :name, :age, :owner
    @@all = []
    def initialize(name, age, owner)
        @name = name
        @age = age
        @owner = owner
        @@all << self
    end

    def speak
        puts self
    end
end