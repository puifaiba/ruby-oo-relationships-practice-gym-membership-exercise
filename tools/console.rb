# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Jon", 250)
lifter2 = Lifter.new("Jay", 190)
lifter3 = Lifter.new("Lara", 150)

gym1 = Gym.new("Crossfit")
gym2 = Gym.new("Orange")
gym3 = Gym.new("Planet Fitness")

membership1 = Membership.new(500, gym1, lifter2)
membership2 = Membership.new(350, gym2, lifter2)
membership3 = Membership.new(60, gym3, lifter1)
membership4 = Membership.new(500, gym1, lifter3)

lifter1.sign_up(350, "Star Gym")

binding.pry

puts "Gains!"
