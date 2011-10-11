require "spec_helper"

describe ParksController do
  describe "routing" do

    it "routes to #index" do
      get("/parks").should route_to("parks#index")
    end

    it "routes to #new" do
      get("/parks/new").should route_to("parks#new")
    end

    it "routes to #show" do
      get("/parks/1").should route_to("parks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parks/1/edit").should route_to("parks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parks").should route_to("parks#create")
    end

    it "routes to #update" do
      put("/parks/1").should route_to("parks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parks/1").should route_to("parks#destroy", :id => "1")
    end

  end
end
