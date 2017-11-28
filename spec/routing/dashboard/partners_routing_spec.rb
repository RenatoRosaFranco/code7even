require "rails_helper"

RSpec.describe Dashboard::PartnersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/partners").to route_to("dashboard/partners#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/partners/new").to route_to("dashboard/partners#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/partners/1").to route_to("dashboard/partners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/partners/1/edit").to route_to("dashboard/partners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/partners").to route_to("dashboard/partners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dashboard/partners/1").to route_to("dashboard/partners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dashboard/partners/1").to route_to("dashboard/partners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/partners/1").to route_to("dashboard/partners#destroy", :id => "1")
    end

  end
end
