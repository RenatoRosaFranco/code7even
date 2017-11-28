require "rails_helper"

RSpec.describe Dashboard::ServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/services").to route_to("dashboard/services#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/services/new").to route_to("dashboard/services#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/services/1").to route_to("dashboard/services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/services/1/edit").to route_to("dashboard/services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/services").to route_to("dashboard/services#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/services/1").to route_to("dashboard/services#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/services/1").to route_to("dashboard/services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/services/1").to route_to("dashboard/services#destroy", :id => "1")
    end

  end
end
