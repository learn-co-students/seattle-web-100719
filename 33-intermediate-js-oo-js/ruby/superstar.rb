class Superstar
  attr_accessor :name, :talent

  @@all = []

  def initialize(name, talent)
    @name = name
    @talent = talent
  end

  def introduce
    puts "My name is #{@name} and I can #{@talent}."
  end

  def self.about
    puts "I track the most talented people ever!"
  end

end

class Bjork < Superstar 
end

star = Superstar.new('Bjork', 'sing')

def introduce_yourself_again
  yield
end

introduce_yourself_again { star.introduce }
