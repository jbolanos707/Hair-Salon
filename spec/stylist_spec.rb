require("spec_helper")

describe(Stylist) do

  describe("#name") do
    it("tells you the name of the stylist") do
      stylist = Stylist.new(name: "Janey", id: nil)
      expect(stylist.name).to eq("Janey")
    end
  end

  describe(".all") do
    it("starts off with no names") do
      expect(Stylist.all).to eq([])
    end
  end

  describe("#==") do
    it("is the same stylist if the name is the same") do
      stylist1 = Stylist.new(name: "Janey", id: nil)
      stylist2 = Stylist.new(name: "Janey", id: nil)
      expect(stylist1).to eq(stylist2)
    end
  end

  describe("#id") do
    it("sets its ID when you save it") do
      test_stylist = Stylist.new(name: "Janey", id: nil)
      test_stylist.save
      expect(test_stylist.id).to(be_an_instance_of(Fixnum))
    end
  end

  describe("#save") do
    it("lets you save stylists to the database") do
      test_stylist = Stylist.new(name: "Janey", id: nil)
      test_stylist.save
      expect(Stylist.all).to eq([test_stylist])
    end
  end
end
