# Gym --< Lifter >-- Membership

class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

#   - Get a list of all lifters
  def self.all
    @@all
  end
#   - Get a list of all the memberships that a specific lifter has
  def membership
    Membership.all.select{|membership| membership.lifter == self}
  end
#   - Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    membership.map{|membership| membership.gym}
  end
#   - Get the average lift total of all lifters
  def self.lift_total
    #binding.pry
    self.all.sum{|gains| gains.lift_total}.to_f / self.all.count

  end
  #   - Get the total cost of a specific lifter's gym memberships
  def cost
    membership.sum{|membership| membership.cost}
  end
  






end

# **Lifter**











#   - Given a gym and a membership cost, sign a specific lifter up for a new gym