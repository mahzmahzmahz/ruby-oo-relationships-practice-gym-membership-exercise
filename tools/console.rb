# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Alex", 210)
l2 = Lifter.new("Emily", 300)

g1 = Gym.new("Equinox")
g2 = Gym.new("Barry's Bootcamp")
g3 = Gym.new("SoulCycle")

m1 = Membership.new(l1, g1, 200)
m1 = Membership.new(l1, g2, 200)
m1 = Membership.new(l1, g3, 200)



binding.pry

puts "Gains!"
