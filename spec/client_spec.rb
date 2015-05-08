require("spec_helper")

describe(Client) do

  describe("name") do
    it("tells you the name fo the client") do
      client = Client.new(name: "Jennifer", id: nil)
      expect(client.name).to eq("Jennifer")
    end
  end
end
