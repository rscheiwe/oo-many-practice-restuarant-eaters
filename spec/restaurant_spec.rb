require_relative 'spec_helper.rb'


describe "Restuarant" do

  describe "#initialize" do
    it "initializes with a name and cuisine" do
      expect(quiznos.name).to eq("Quizno's")
      expect(quiznos.cuisine).to eq("Subs")
    end
  end

  describe "#reservations" do
    it "returns a list of all reservations at the restaurant" do
      expect(torchys.reservations.length).to eq(2)
      expect(cicis.reservations.length).to eq(1)
      expect(quiznos.reservations.length).to eq(1)
    end
  end

  describe "#eaters" do
    it "returns a list of all eaters who have reservations at the restaurant" do
      expect(torchys.eaters).to eq([mark, naomi])
      expect(quiznos.eaters).to eq([mark])
      expect(cicis.eaters).to eq([mark])
    end
  end

  describe "#take_reservation" do
    it "creates a new reservation for an eater" do
      cicis.take_reservation(naomi)
      expect(cicis.eaters).to include(naomi)
    end
  end

  describe ".least_popular" do
    it "returns the least popular restaurant" do
      expect(Restaurant.least_popular).to eq(papa_johns)
    end
  end

  describe ".find_by_cuisine" do
    it "returns all restaurants with desired cuisine" do
      expect(Restaurant.find_by_cuisine("Tacos")).to eq([torchys])
      expect(Restaurant.find_by_cuisine("Pizza")).to eq([cicis, papa_johns])
    end
  end

end
