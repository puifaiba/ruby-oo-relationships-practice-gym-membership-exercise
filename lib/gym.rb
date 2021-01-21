class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all.push(self)
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map {|membership| membership.lifter}
  end

  def lifter_names
    self.lifters.map {|lifter| lifter.name}
  end

  def lift_total
    self.lifters.sum {|lifter| lifter.lift_total}
  end 


end
