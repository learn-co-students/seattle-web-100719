# Test out your code here in console
require 'pry'
require 'require_all'
require_all '../06-review-part2'

cats = Musical.new("cats", "new york")
the_newsies = Musical.new("the_newsies", "new york")
the_christmas_carrol = Musical.new("The Christmas Carrol", "England")
spiderman = Musical.new("spiderman", "new york")

paramount = Theater.new("Paramount", "Seattle")
hippodrome = Theater.new("Hippodrome", "new york")
neil_simon_theatre = Theater.new("Neil Simon Theatre", "new york")

p1 = Performance.new("10/20/2019", cats,paramount)
p2 = Performance.new("10/20/2019", the_newsies,hippodrome)
p3 = Performance.new("10/20/2019", cats,paramount)
p4 = Performance.new("10/20/2019", cats,hippodrome)

Pry.start
0
