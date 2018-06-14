require_relative '../config/environment'


RSpec.configure do |config|
  config.before(:each) do
    quiznos = Restaurant.new("Quizno's", "Subs")
    cicis = Restaurant.new("Cici's Pizza", "Pizza")
    torchys = Restaurant.new("Torchy's", "Tacos")
    papa_johns = Restaurant.new("Papa John's", "Pizza")
    mark = Eater.new("mark")
    naomi = Eater.new("naomi")
    m_torchys = Reservation.new(mark, torchys)
    m_cicis = Reservation.new(mark, cicis)
    n_torchys = Reservation.new(naomi, torchys)
    m_quiznos = Reservation.new(mark, quiznos)
  end
end
