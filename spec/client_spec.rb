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

  describe(".all") do
    it("starts off with no names") do
      expect(Client.all).to eq([])
    end
  end

  describe("#save") do
    it("adds a client to the array of saved clients") do
      test_client = Client.new(name: "Jennifer")
      test_client.save
      expect(Client.all).to eq([test_client])
    end
  end


end
