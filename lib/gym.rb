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


  
end
