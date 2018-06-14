class Eater

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.most_active_eater
    eater_arr = Reservation.all.map { |res| res.eater }
    eater_arr.sort_by! { |eater| eater_arr.count(eater) }.last
  end

  def reservations
    Reservation.all.select { |res| res.eater == self }
  end

  def reserve_restaurant(restaurant)
    Reservation.new(self, restaurant)
  end

  def restaurants
    self.reservations.map { |res| res.restaurant }
  end

end
