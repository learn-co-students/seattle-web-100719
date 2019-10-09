require_relative 'environment.rb'
require_relative 'user.rb'
require_relative 'tweet.rb'

p "Creating my instances of User"
coffee_dad = User.new("coffee_dad")
tea_uncle = User.new("tea_uncle")
donut_mom = User.new("donut_mom")

p "Testing creating Tweet instances"

t1 = Tweet.new("I love coffeeeeeeee", coffee_dad)
t2 = Tweet.new("What is life?????", coffee_dad)
t3 = Tweet.new("Life is Tea", tea_uncle)
Pry.start
