require("spec_helper")

describe(Client) do

  describe("name") do
    it("tells you the name fo the client") do
      client = Client.new(name: "Jennifer", id: nil)
      expect(client.name).to eq("Jennifer")
    end
  end

  describe("#==") do
    it("is the same client if the name is the same") do
      client1 = Client.new(name: "Jennifer")
      client2 = Client.new(name: "Jennifer")
      expect(client1).to eq(client2)
    end
  end


end
