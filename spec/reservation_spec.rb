require_relative 'spec_helper.rb'

describe "reservation" do

  describe "initialize" do
    it "initializes with an eater and a restaurant" do
      m_papa = Reservation.new(mark, papa_johns)
      expect(m_papa.eater).to eq(mark)
      expect(m_papa.restuarant).to eq(papa_johns)
    end
  end

end
