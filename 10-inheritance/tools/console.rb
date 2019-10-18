require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owen = Owner.new("Owen Wison")
pokey = Dog.new("Pokey", 12, owen)
smokey = Cat.new("Smokey", 1, owen)

binding.pry
0