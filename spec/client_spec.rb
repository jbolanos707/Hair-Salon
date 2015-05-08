require("spec_helper")

describe(Client) do

  describe("name") do
    it("tells you the name fo the client") do
      client = Client.new(name: "Jennifer", stylist_id: 1)
      expect(client.name).to eq("Jennifer")
    end
  end

  describe("#==") do
    it("is the same client if the name is the same") do
      client1 = Client.new(name: "Jennifer", stylist_id: 1)
      client2 = Client.new(name: "Jennifer", stylist_id: 1)
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
      test_client = Client.new(name: "Jennifer", stylist_id: 1)
      test_client.save
      expect(Client.all).to eq([test_client])
    end
  end

  describe("#stylist_id") do #this method will assign clients to a stylsit. when this method is implementd stylist_id is added as parameter to the class Client)
    it("lets you read the list ID out") do
      test_client = Client.new(name: "Jennifer", stylist_id: 1)
      expect(test_client.stylist_id).to eq(1)
    end
  end


end
