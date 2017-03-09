RSpec.describe "Routing to ownerships", :type => :routing do
  it "routes POST /ownerships to ownerships#create" do
    expect(:post => "/ownerships").to route_to("ownerships#create")
  end
end
