require("spec_helper")

describe(Stylist) do

  describe("#name") do
    it("tells you the name of the stylist") do
      stylist = Stylist.new(name: "Janey", id: nil)
      expect(stylist.name).to eq("Janey")
    end
  end
end
