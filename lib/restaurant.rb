class Restaurant

  attr_accessor :name, :cuisine

  @@all = []

  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_cuisine(cuisine)
    self.all.select { |straunt| straunt.cuisine == cuisine }
  end

  def self.least_popular
    self.all.sort_by! { |straunt| straunt.reservations.count }.first
  end

  def eaters
    self.reservations.map { |res| res.eater }
  end

  def reservations
    Reservation.all.select { |res| res.restaurant == self }
  end

  def take_reservation(eater)
    Reservation.new(eater, self)
  end

end
