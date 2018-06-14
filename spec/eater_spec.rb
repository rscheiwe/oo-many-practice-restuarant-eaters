require_relative 'spec_helper.rb'


describe "eater" do

  describe "initialize" do
    it "initializes with a name" do
      jeffrey = Eater.new("Jeffrey")
      expect(jeffrey.name).to eq("Jeffrey")
    end
  end

  describe "#reservations" do
    it "returns a list of all of an eater's reservations" do
      expect(naomi.reservations).to eq([n_torchys])
      expect(mark.reservations).to eq([m_torchys, m_cicis, m_quiznos])
    end
  end

  describe "#restaurants" do
    it "returns a list of all of the restaurants an eater has reservations for" do
      expect(mark.restaurants).to eq([torchys, cicis, quiznos])
      expect(naomi.restaurants).to eq([torchys])
    end
  end

  describe "#reserve_restaurant" do
    it "takes in an argument of a restuarant and makes a new reservation" do
      n_papa = naomi.reserve_restaurant(papa_johns)
      expect(naomi.reservations).to include(n_papa)
      expect(naomi.restaurants).to include(papa_johns)
    end
  end

  describe ".most_active_eater" do
    it "returns the eater with the most reservations" do
      expect(Eater.most_active_eater).to eq(mark)
    end
  end

end
