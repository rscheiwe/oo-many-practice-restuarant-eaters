class Reservation

  attr_accessor :eater, :restaurant

  @@all = []

  def initialize(eater, restaurant)
    @eater = eater
    @restaurant = restaurant

    @@all << self
  end

  def self.all
    @@all
  end

end
