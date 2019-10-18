class Owner
    attr_reader :name
    @@all =[]
    
    def initialize(name)
        @name = name
        @@all << self
    end

end