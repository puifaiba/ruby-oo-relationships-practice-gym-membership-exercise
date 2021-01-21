class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all.push(self)
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map {|membership| membership.gym}
  end

  def self.average
    self.all.reduce(0) {|total, lifter| total += lifter.lift_total / @@all.count}
  end

  def total_cost
    self.memberships.sum {|membership| membership.cost}
  end

  def sign_up(cost, name)
    gym = Gym.new(name)
    membership = Membership.new(cost, gym, self)
    membership.lifter = self
    membership.gym = gym
    membership.cost = cost
  end


end
