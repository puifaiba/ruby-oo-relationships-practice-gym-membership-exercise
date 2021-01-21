class Membership
  attr_reader :cost, :gym, :lifter

  @@all = []

  def initialize(cost)
    @cost = cost
    Membership.all.push(self)
  end

  def self.all
    @@all
  end


  
end
