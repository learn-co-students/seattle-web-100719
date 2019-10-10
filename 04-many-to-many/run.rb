require 'pry'
require_relative 'tweet'
require_relative 'user'
require_relative 'like'

# require_all '../04-prep'

coffee_dad = User.new("Coffee Dad")
tea_uncle = User.new("Tea Uncle")
soundarya = User.new("Soundarya")
hal = User.new("Hal")
lucy = User.new("Lucy")

3.times do |x|
  Tweet.new("Hi I drank #{x} cups of DRANKS today.", User.all.sample)
end

Pry.start
0
