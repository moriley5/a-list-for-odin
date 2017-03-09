require "rails_helper"

RSpec.describe "Routing to sessions", :type => :routing do
  it "routes GET /sessions/new to sessions#new" do
    expect(:get => "/sessions/new").to route_to("sessions#new")
  end

  it "routes POST /sessions to sessions#create" do
    expect(:post => "/sessions").to route_to("sessions#create")
  end

  it "routes DELETE /sessions to sessions#delete" do
    expect(:get => "/sessions").to route_to("sessions#delete")
  end

end
